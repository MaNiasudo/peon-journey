"""Static audit of Peon Journey guide chains (simulates walking each route in order).

Checks per chain: steps with nothing that can complete them, .complete/.turnin for quests never
accepted before, quest log above 20, coordinates outside 0-100, repeated accepts.
Usage: python -I audit_chains.py <guides dir>
"""
import re
import sys
from collections import defaultdict
from pathlib import Path

GD = Path(sys.argv[1])
COMPLETERS = ("accept", "turnin", "complete", "goto", "skill", "maxskill", "fp", "zone", "xp", "hs", "home", "fly",
              "collect", "train", "isOnQuest", "isQuestTurnedIn", "isQuestComplete", "loop", "use", "reputation")


def blocks(path):
    for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", path.read_text(errors="replace"), re.S):
        h = {"next": None}
        for line in b.splitlines():
            s = line.strip()
            if s.startswith("step"):
                break
            m = re.match(r"#(group|name|next)\s+(.+?)(\s*<<.*)?$", s)
            if m and m.group(1) not in h or (m and h.get(m.group(1)) is None):
                h[m.group(1)] = m.group(2).strip()
            m = re.match(r"<<\s*(Alliance|Horde)", s)
            if m:
                h["faction"] = m.group(1)
        h["steps"] = [st for st in re.split(r"\n\s*step[^\n]*", "\n" + b)[1:]]
        yield h


guides = {}
for f in GD.rglob("*.lua"):
    if "/free/" in str(f) or f.name.startswith("Classic-"):
        continue
    for h in blocks(f):
        if h.get("name") and h.get("group"):
            guides[(h["group"], h.get("faction"), h["name"])] = h

issues = defaultdict(list)
# walk each chain from its first guide (one with nobody pointing at it)
pointed = {(g, fac, h["next"]) for (g, fac, n), h in guides.items() if h.get("next")}
starts = [k for k in guides if k not in pointed]
for start in sorted(starts, key=str):
    grp, fac, name = start
    accepted, active, seen = set(), set(), set()
    max_active, where_max = 0, ""
    cur = start
    hops = 0
    while cur in guides and hops < 500:
        h = guides[cur]
        hops += 1
        for i, st in enumerate(h["steps"], 1):
            lines = [l.strip() for l in st.splitlines() if l.strip()]
            tags = []
            for l in lines:
                l2 = re.sub(r"\s*--.*$", "", l)
                m = re.match(r"\.(\w+)\s*(.*)", l2)
                if m:
                    tags.append((m.group(1), m.group(2)))
            has_plus = any(l.startswith("+") for l in lines)
            has_completewith = any(l.startswith("#completewith") for l in lines)
            if not has_plus and not has_completewith and not any(t in COMPLETERS for t, _ in tags):
                issues["no completer"].append(f"{cur[2]} step {i}: {lines[:2]}")
            for t, a in tags:
                a = re.sub(r"\s*<<.*$", "", a)
                a = re.sub(r"\s*>>.*$", "", a)
                if t == "goto":
                    p = a.split(",")
                    try:
                        x, y = float(p[1]), float(p[2])
                        if not (0 <= x <= 100 and 0 <= y <= 100):
                            issues["bad coords"].append(f"{cur[2]} step {i}: {a}")
                    except (ValueError, IndexError):
                        issues["bad coords"].append(f"{cur[2]} step {i}: {a}")
                q = re.match(r"(\d+)", a)
                if not q:
                    continue
                q = int(q.group(1))
                if t == "accept":
                    if q in accepted:
                        issues["accepted twice"].append(f"{cur[2]} step {i}: quest {q}")
                    accepted.add(q)
                    active.add(q)
                    if len(active) > max_active:
                        max_active, where_max = len(active), f"{cur[2]} step {i}"
                elif t in ("complete", "turnin"):
                    if q not in accepted and not any(l.startswith("#optional") for l in lines):
                        issues[f"{t} without accept"].append(f"{cur[2]} step {i}: quest {q}")
                    if t == "turnin":
                        active.discard(q)
        nxt = h.get("next")
        if not nxt:
            break
        g2, _, n2 = nxt.rpartition("\\")
        cur = (g2 or grp, fac, n2)
    issues["max quest log"].append(f"{grp} [{fac}] from '{name}': {max_active} at {where_max}")

for k, v in issues.items():
    print(f"== {k}: {len(v)}")
    for x in v[:8]:
        print("   ", x)
