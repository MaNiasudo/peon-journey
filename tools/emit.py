"""Render router steps as RXP guide text."""
from router import fmt

COLORS = {"npc": "RXP_FRIENDLY_", "object": "RXP_PICK_", "item": "RXP_LOOT_", "enemy": "RXP_ENEMY_"}


def c(kind, text):
    return f"|c{COLORS[kind]}{text}|r"


def lua_safe(s):
    # guide text lives inside a [[ ]] long string: never allow ]] in it
    s = str(s).replace("]]", "] ]").replace("\n", " ").replace("\r", " ")
    while "--" in s:
        s = s.replace("--", "-")
    return s.replace("<<", "<").replace(">>", ">").strip()


def goto(loc, radius=None):
    if not loc:
        return []
    ui, x, y = loc
    tail = f",{radius},0" if radius else ""
    return [f"    .goto {ui},{fmt(round(x, 2))},{fmt(round(y, 2))}{tail}"]


A_MASK = 1 + 4 + 8 + 64 + 2 ** 32
H_MASK = 2 + 16 + 32 + 128 + 2 ** 33
RACE_TOKENS = [(1, "Human"), (4, "Dwarf"), (8, "NightElf"), (64, "Gnome"), (2 ** 32, "Skyborne"),
               (2, "Orc"), (16, "Undead"), (32, "Tauren"), (128, "Troll"), (2 ** 33, "Skyborne")]


class Emitter:
    def __init__(self, db):
        self.db = db

    def rtag(self, q):
        """' << Orc/Troll' when only some races of the faction can take the quest"""
        r = self.db.g(self.db.Q.get(q), 6, 0) or 0
        if not r:
            return ""
        for full in (A_MASK, H_MASK):
            part = r & full
            if part and part != full:
                names = list(dict.fromkeys(n for b, n in RACE_TOKENS if part & b and b & full))
                return " << " + "/".join(names)
        return ""

    def giver_line(self, giver):
        kind, gid = giver
        db = self.db
        if kind == "npc":
            n = lua_safe(db.npc_name(gid))
            return [f"    >>Talk to {c('npc', n)}"], [f"    .target {n}"]
        if kind == "object":
            n = lua_safe(db.obj_name(gid))
            return [f"    >>Click the {c('object', n)}"], []
        if kind == "item":
            n = lua_safe(db.item_name(gid))
            it = db.I.get(gid) or {}
            droppers = [lua_safe(db.npc_name(x)) for x in db.lst(db.g(it, 2))[:3]]
            src = f" from {', '.join(c('enemy', d) for d in droppers)}" if droppers else ""
            extra = [f"    .use {gid}"]
            extra += [f"    .mob {d}" for d in droppers[:2]]
            return [f"    >>Loot {c('item', '[' + n + ']')}{src}, then click it to start the quest"], extra
        return [], []

    def accept(self, st, info):
        out = ["step"]
        out += goto(st["loc"])
        talk, extra = self.giver_line(st["giver"])
        out += talk
        for q in st["quests"]:
            out.append(f"    .accept {q} >>Accept {lua_safe(info[q]['name'])}{self.rtag(q)}")
        out += extra
        return out

    def turnin(self, st, info):
        out = ["step"]
        out += goto(st["loc"])
        talk, extra = self.giver_line(st["giver"])
        out += talk
        for q in st["quests"]:
            out.append(f"    .turnin {q} >>Turn in {lua_safe(info[q]['name'])}{self.rtag(q)}")
        out += [e for e in extra if not e.startswith("    .use") and not e.startswith("    .mob")]
        return out

    def obj(self, st, info):
        db = self.db
        out = ["step"]
        if any(o.get("known") for _, o in st["items"]):
            out += goto(st["loc"])
        lines, completes, mobs = [], [], []
        elite = False
        for q, o in st["items"]:
            name = lua_safe(o["name"])
            if o["kind"] in ("mob",):
                lines.append(f"Kill {c('enemy', name)}")
                mobs.append(name)
            elif o["kind"] == "killcredit":
                lines.append(lua_safe(o["text"]) if o.get("text") else f"Kill {c('enemy', name)}")
            elif o["kind"] == "object":
                lines.append(f"Click {c('object', name)}")
            elif o["kind"] == "item":
                src = ""
                if o.get("vendor"):
                    vn = lua_safe(db.npc_name(o["vendor"]))
                    lines.append(f"Buy {c('item', '[' + name + ']')} from {c('npc', vn)}")
                    continue
                if o.get("droppers"):
                    src = " from " + ", ".join(c("enemy", lua_safe(d)) for d in o["droppers"][:3])
                    mobs += [lua_safe(d) for d in o["droppers"][:2]]
                elif o.get("objects"):
                    src = " from " + ", ".join(c("object", lua_safe(d)) for d in o["objects"][:2])
                lines.append(f"Collect {c('item', '[' + name + ']')}{src}")
            elif o["kind"] == "event":
                lines.append(lua_safe(o["text"] or "Explore the area"))
            elif o["kind"] == "spell":
                lines.append("Use the quest ability/item on the target")
            elif o["kind"] == "rep":
                lines.append("Earn the required reputation")
            elite = elite or o.get("elite")
        seen = []
        for ln in lines:
            if ln not in seen:
                seen.append(ln)
        out.append("    >>" + ". ".join(seen))
        for q in dict.fromkeys(q for q, _ in st["items"]):
            t = info[q].get("otext")
            if t:
                out.append("    *" + lua_safe(t))
        if elite:
            out.append("    *|cRXP_WARN_Elite targets here. Group up or skip.|r")
        # one .complete per objective index; if every objective of a quest is in this step, list all
        per_q = {}
        for q, o in st["items"]:
            per_q.setdefault(q, []).append(o)
        for q, objs in per_q.items():
            allobjs = info[q]["objs"]
            for o in objs:
                idx = allobjs.index(o) + 1
                completes.append(f"    .complete {q},{idx}{self.rtag(q)} --{lua_safe(info[q]['name'])}")
        out += completes
        for m in dict.fromkeys(mobs):
            out.append(f"    .mob {m}")
        return out

    def merged(self, st, nxt, info):
        """turn-in(s) followed by accept(s) at the same giver -> one step"""
        out = ["step"]
        out += goto(st["loc"])
        talk, extra = self.giver_line(st["giver"])
        out += talk
        for q in st["quests"]:
            out.append(f"    .turnin {q} >>Turn in {lua_safe(info[q]['name'])}{self.rtag(q)}")
        for q in nxt["quests"]:
            out.append(f"    .accept {q} >>Accept {lua_safe(info[q]['name'])}{self.rtag(q)}")
        out += [e for e in extra if e.startswith("    .target")]
        return out

    def render(self, steps, info):
        out = []
        i = 0
        while i < len(steps):
            st = steps[i]
            nxt = steps[i + 1] if i + 1 < len(steps) else None
            if st["type"] == "turnin" and nxt and nxt["type"] == "accept" and nxt["giver"] == st["giver"] \
                    and st["giver"][0] != "item":
                out += self.merged(st, nxt, info)
                i += 2
                continue
            out += getattr(self, st["type"])(st, info)
            i += 1
        return out


def guide(header, body):
    lines = ["RXPGuides.RegisterGuide([["] + header + body + ["]])", ""]
    return "\n".join(lines)
