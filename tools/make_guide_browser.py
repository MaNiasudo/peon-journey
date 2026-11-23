"""Local review deck of every Peon Journey route guide: what each guide has and where it goes.

Usage: python -I make_guide_browser.py <repo_root> <out.html>

Reads the BUILT addon (PeonJourney/Guides) and out_route/route_meta.json, so the page shows exactly what ships.
Per guide: travel, quests, estimated time, a path map per zone (0-100 map coordinates), numbered stops, the quest list.
Review controls (Keep / Change / Drop, a note, drop single quests) are saved in the browser and copied out as text.
"""
import json
import re
import sys
from pathlib import Path

ROOT, OUT = Path(sys.argv[1]), Path(sys.argv[2])
GD = ROOT / "PeonJourney" / "Guides"
META = json.loads((ROOT / "out_route" / "route_meta.json").read_text())

ZONE = {1411: "Durotar", 1412: "Mulgore", 1413: "The Barrens", 1416: "Alterac Mountains", 1417: "Arathi Highlands",
        1418: "Badlands", 1419: "Blasted Lands", 1420: "Tirisfal Glades", 1421: "Silverpine Forest",
        1422: "Western Plaguelands", 1423: "Eastern Plaguelands", 1424: "Hillsbrad Foothills", 1425: "The Hinterlands",
        1426: "Dun Morogh", 1427: "Searing Gorge", 1428: "Burning Steppes", 1429: "Elwynn Forest", 1430: "Deadwind Pass",
        1431: "Duskwood", 1432: "Loch Modan", 1433: "Redridge Mountains", 1434: "Stranglethorn Vale",
        1435: "Swamp of Sorrows", 1436: "Westfall", 1437: "Wetlands", 1438: "Teldrassil", 1439: "Darkshore",
        1440: "Ashenvale", 1441: "Thousand Needles", 1442: "Stonetalon Mountains", 1443: "Desolace", 1444: "Feralas",
        1445: "Dustwallow Marsh", 1446: "Tanaris", 1447: "Azshara", 1448: "Felwood", 1449: "Un'Goro Crater",
        1450: "Moonglade", 1451: "Silithus", 1452: "Winterspring", 1453: "Stormwind City", 1454: "Orgrimmar",
        1455: "Ironforge", 1456: "Thunder Bluff", 1457: "Darnassus", 1458: "Undercity", 2548: "Riverglades",
        2652: "Shen'dralas", 2482: "Mount Hyjal", 2521: "Zephras Isle"}
UI_OF = {v: k for k, v in ZONE.items()}
KALIMDOR = {1411, 1412, 1413, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452,
            1454, 1456, 1457, 2482, 2652}
ROUTES = [("speed", "Speed (with Dungeons)", "free/speed"), ("speedq", "Speed (no Dungeons)", "free/speedq"),
          ("full", "Full Journey", "free/full"), ("dungeons", "Dungeon Quests Only", None),
          ("attune", "Attunements", None)]


def clean(s):
    s = re.sub(r"\|T[^|]*\|t", "", s)
    s = re.sub(r"\|c(?:RXP_[A-Z]+_|[0-9A-Fa-f]{8})", "", s)
    s = s.replace("|r", "")
    s = re.sub(r"::\d+", "", s)
    return s.strip()


def blocks(path):
    return re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", path.read_text(errors="replace"), re.S)


def header(b):
    h = {"groups": []}
    for line in b.splitlines():
        s = line.strip()
        if s.startswith("step"):
            break
        m = re.match(r"#(\w+)\s*(.*)$", s)
        if m:
            if m.group(1) == "group":
                h["groups"].append(m.group(2).split("<<")[0].strip())
            else:
                h.setdefault(m.group(1), m.group(2).strip())
        m = re.match(r"<<\s*(.+)$", s)
        if m and "cond" not in h:
            h["cond"] = m.group(1).strip()
    return h


def goto(arg):
    """(ui, x, y) from our '1420,82.6,33.8', RXP 'Badlands,5.81,47.52' or a '--c:Zone,x,y' comment"""
    m = re.match(r"(\d+),([\d.]+),([\d.]+)", arg)
    if m and int(m.group(1)) in ZONE:
        return int(m.group(1)), float(m.group(2)), float(m.group(3))
    m = re.match(r"([A-Za-z' ]+),([\d.]+),([\d.]+)", arg)
    if m and m.group(1).strip() in UI_OF:
        return UI_OF[m.group(1).strip()], float(m.group(2)), float(m.group(3))
    return None


def parse_steps(b):
    body = b[b.index("\nstep"):] if "\nstep" in b else ""
    raw = re.split(r"\n\s*step\b[^\n]*", body)[1:]
    steps = []
    for st in raw:
        d = dict(loc=None, acc=[], tin=[], comp=[], talk="", text=[], notes=[], info=[], kind="note", tags=[])
        for line in st.split("\n"):
            s = line.strip()
            if not s:
                continue
            cm = re.search(r"--c:([^,]+),([\d.]+),([\d.]+)", s)
            if cm and not d["loc"]:
                d["loc"] = goto(f"{cm.group(1)},{cm.group(2)},{cm.group(3)}")
            tag = re.search(r"<<\s*([^>]+?)\s*$", s)
            if s.startswith("#"):
                continue
            if s.startswith(".goto"):
                if not d["loc"]:
                    d["loc"] = goto(s[5:].strip().split(">>")[0].replace(" ", "") if not re.match(r"\.goto [A-Za-z]", s)
                                    else s[6:].split(">>")[0].strip())
                if ">>" in s:
                    d["text"].append(clean(s.split(">>", 1)[1]))
                continue
            m = re.match(r"\.(accept|turnin)\s+(\d+)\s*(?:>>\s*(.*))?$", s)
            if m:
                name = re.sub(r"^\s*(Accept|Turn in)\s+", "", clean((m.group(3) or "").split("<<")[0]))
                (d["acc"] if m.group(1) == "accept" else d["tin"]).append((int(m.group(2)), name or f"Quest {m.group(2)}"))
                if tag:
                    d["tags"].append(tag.group(1))
                continue
            m = re.match(r"\.complete\s+(\d+),(\d+)[^-]*(?:--\s*(.*))?$", s)
            if m:
                d["comp"].append((int(m.group(1)), clean(m.group(3) or "")))
                continue
            m = re.match(r"\.zone\s+(\S+)\s*>>\s*(.*)$", s)
            if m:
                d["kind"] = "travel"
                ui = int(m.group(1)) if m.group(1).isdigit() else UI_OF.get(m.group(1))
                d["zone"] = ZONE.get(ui, clean(m.group(2)))
                d["text"].append(clean(m.group(2)))
                continue
            m = re.match(r"\.xp\s+(\d+)", s)
            if m:
                d["kind"] = "grind"
                d["text"].append(f"Grind to level {m.group(1)}")
                continue
            m = re.match(r"\.fp\s+(.+?)\s*>>", s)
            if m:
                d["kind"] = "fp"
                d["text"].append(f"Get the flight path ({clean(m.group(1))})")
                continue
            if s.startswith(">>"):
                t = clean(s[2:].split("<<")[0])
                if t.startswith("Talk to") or t.startswith("Click the"):
                    d["talk"] = t
                else:
                    d["text"].append(t)
            elif s.startswith("+"):
                d["notes"].append(clean(s[1:]))
            elif s.startswith("*"):
                d["info"].append(clean(s[1:]))
        if d["kind"] == "note":
            if d["acc"] and d["tin"]:
                d["kind"] = "talk"
            elif d["acc"]:
                d["kind"] = "accept"
            elif d["tin"]:
                d["kind"] = "turnin"
            elif d["comp"]:
                d["kind"] = "run" if any("with your group" in t for t in d["text"]) else "obj"
        steps.append(d)
    return steps


def guide_data(b, extra=None):
    h = header(b)
    steps = parse_steps(b)
    quests, order = {}, []
    for i, st in enumerate(steps, 1):
        for q, n in st["acc"]:
            if q not in quests:
                quests[q] = dict(id=q, name=n, acc=i, tin=None)
                order.append(q)
        for q, n in st["tin"]:
            quests.setdefault(q, dict(id=q, name=n, acc=None, tin=None))["tin"] = i
            if q not in order:
                order.append(q)
    zones = []
    for st in steps:
        if st["loc"] and (not zones or zones[-1] != st["loc"][0]):
            zones.append(st["loc"][0])
    how = next((x[5:] for st in steps for x in st["info"] if x.startswith("How: ")), "")
    intro = steps[0]["notes"] + steps[0]["info"] if steps else []
    out = dict(name=h.get("name", "?"), cond=h.get("cond", ""), defaultfor=h.get("defaultfor", ""),
               steps=[dict(k=st["kind"], l=list(st["loc"]) if st["loc"] else None, talk=st["talk"],
                           acc=[q for q, _ in st["acc"]], tin=[q for q, _ in st["tin"]],
                           comp=sorted({q for q, _ in st["comp"]}), text=st["text"][:3], notes=st["notes"][:2],
                           info=st["info"][:3], tags=st["tags"][:1], zone=st.get("zone", ""))
                      for st in steps],
               quests=[quests[q] for q in order], zones=[ZONE[z] for z in dict.fromkeys(zones)], how=how,
               intro=intro[:6])
    if extra:
        out.update(extra)
    return out


def faction_of(h, fname):
    c = (h.get("cond") or "") + " " + fname
    if "Horde" in c or any(r in c for r in ("Orc", "Undead", "Tauren", "Troll", "Durotar", "Mulgore", "Barrens")):
        return "Horde"
    if "Alliance" in c or any(r in c for r in ("Human", "Dwarf", "Gnome", "NightElf", "Night Elf")):
        return "Alliance"
    return None


FREE_BLOCKS = {}
for f in (GD / "free").rglob("*.lua"):
    for b in blocks(f):
        h = header(b)
        for g in h["groups"]:
            FREE_BLOCKS[(g, h.get("name"))] = b


def expand(b, depth=0):
    """inline '#include Group\\Name[@labelA-labelB]' the way RestedXP does (whole guide, or the steps between labels)"""
    if depth > 2 or "#include" not in b:
        return b

    def sub(m):
        target, _, rng = m.group(1).strip().partition("@")
        grp, _, name = target.rpartition("\\")
        src = FREE_BLOCKS.get((grp, name))
        if not src or "\nstep" not in src:
            return ""
        body = src[src.index("\nstep"):]
        if rng:
            a, _, z = rng.partition("-")
            parts = re.split(r"(?=\n\s*step\b)", body)
            ia = next((i for i, x in enumerate(parts) if re.search(rf"#label {re.escape(a)}\b", x)), 0)
            iz = next((i for i, x in enumerate(parts) if re.search(rf"#label {re.escape(z)}\b", x)), len(parts) - 1)
            body = "".join(parts[ia:iz + 1])
        return expand(body, depth + 1)
    return re.sub(r"^\s*#include\s+(.+)$", sub, b, flags=re.M)


data = {}
for key, title, free_dir in ROUTES:
    data[key] = {"title": title}
    for fac in ("Alliance", "Horde"):
        guides = []
        if free_dir:   # the RestedXP free start, every race of this faction
            for f in sorted((GD / free_dir).glob("*.lua")):
                for b in blocks(f):
                    h = header(b)
                    if not h.get("name") or not any(g.startswith("Peon Journey") for g in h["groups"]):
                        continue
                    fa = faction_of(h, f.name)
                    if fa and fa != fac:
                        continue
                    lv = re.match(r"(\d+)-(\d+)", h["name"])
                    b = expand(b)
                    guides.append(guide_data(b, dict(kind="start", lo=int(lv.group(1)) if lv else 1,
                                                     hi=int(lv.group(2)) if lv else 1, minutes=0, start=True)))
            guides.sort(key=lambda g: (g["lo"], g["hi"]))
        if key in META[fac]:
            tag = "A" if fac == "Alliance" else "H"
            fname = {"speed": "R_Speed", "speedq": "R_SpeedQ", "full": "R_Full", "dungeons": "R_Dungeons"}[key]
            by_name = {header(b)["name"]: b for b in blocks(GD / "PeonJourney" / f"{fname}_{tag}.lua")}
            for r in META[fac][key]:
                guides.append(guide_data(by_name[r["name"]], dict(kind=r["kind"], lo=r["lo"], hi=r["hi"],
                                                                 minutes=r.get("minutes", 0))))
        if key == "attune":
            for f in sorted((GD / "Attunements").glob("*.lua")):
                for b in blocks(f):
                    h = header(b)
                    fa = faction_of(h, "")
                    if fa and fa != fac:
                        continue
                    lv = re.match(r"(\d+)(?:-(\d+))?", h.get("name", ""))
                    guides.append(guide_data(b, dict(kind="attune", lo=int(lv.group(1)) if lv else 55,
                                                     hi=int(lv.group(2) or lv.group(1)) if lv else 60, minutes=0,
                                                     rxp=f.name.startswith("Classic"))))
            guides.sort(key=lambda g: (g["lo"], g["hi"]))
        for g in guides:
            g["cont"] = ""
            for st in g["steps"]:
                if st["l"]:
                    g["cont"] = "K" if st["l"][0] in KALIMDOR else "E"
                    break
        stats = META[fac].get("stats", {}).get(key)
        data[key][fac] = dict(guides=guides, stats=stats)

HTML = r"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Peon Journey: guide review</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600;800&family=Source+Sans+3:wght@400;600;700&display=swap" rel="stylesheet">
<style>
:root{--leather:#1c1109;--leather2:#2c1c0e;--panel:#24160b;--panel2:#1f1309;--line:#5a4024;--line2:#3a2714;--brass:#8b7648;
--parch:#eee0be;--gold:#e8c478;--ember:#d67026;--muted:#aa9676;--red:#ff6a52;--green:#8fd16a;--blue:#4cc9f0;--grey:#8c7d66}
*{box-sizing:border-box}
html,body{margin:0;height:100%;background:var(--leather);color:var(--parch);font:16px/1.45 "Source Sans 3",system-ui,sans-serif}
body{background-image:repeating-linear-gradient(0deg,rgba(255,255,255,.012) 0 2px,transparent 2px 5px);display:flex;flex-direction:column}
header.top{flex:none;display:flex;align-items:center;gap:18px;padding:8px 16px;background:linear-gradient(#563719,#24160b);border-bottom:2px solid #120a05;flex-wrap:wrap}
header.top img{height:42px}
header.top h1{margin:0;font:800 20px Cinzel,Georgia,serif;color:var(--gold);letter-spacing:.5px}
.seg{display:flex;gap:0}
.seg button{font:600 14px "Source Sans 3",sans-serif;background:#331f0f;color:var(--parch);border:1px solid var(--brass);margin-left:-1px;padding:6px 12px;cursor:pointer}
.seg button.on{background:#603214;color:var(--gold)}
.spacer{flex:1}
.btn{font:600 14px "Source Sans 3",sans-serif;background:#4a2a10;color:var(--gold);border:1px solid var(--brass);padding:6px 12px;cursor:pointer}
.btn:hover,.seg button:hover{background:#6b3a16}
main{flex:1;display:grid;grid-template-columns:330px 1fr;min-height:0}
aside{border-right:2px solid #120a05;background:var(--panel2);overflow:auto}
aside .item{display:grid;grid-template-columns:54px 1fr 20px;gap:6px;padding:6px 10px;border-bottom:1px solid #2f1f10;cursor:pointer;font-size:14px}
aside .item:hover{background:#2e1c0c}
aside .item.on{background:#4a2a10}
aside .item .lv{font:600 13px Cinzel,Georgia,serif;color:var(--gold)}
aside .item .k{font-size:10px;letter-spacing:.6px;color:var(--muted);text-transform:uppercase}
aside .item .v{font-weight:700;text-align:right}
aside .over{padding:10px;border-bottom:1px solid var(--line);font:600 14px Cinzel,Georgia,serif;color:var(--gold);cursor:pointer}
aside .over.on{background:#4a2a10}
.v.keep{color:var(--green)} .v.change{color:var(--gold)} .v.drop{color:var(--red)}
section.slide{overflow:auto;padding:18px 24px 80px;min-width:0}
.slidehead{display:flex;align-items:baseline;gap:14px;flex-wrap:wrap;border-bottom:1px solid var(--line);padding-bottom:8px;margin-bottom:12px}
.slidehead h2{margin:0;font:800 26px Cinzel,Georgia,serif;color:var(--gold)}
.slidehead .meta{color:var(--muted);font-size:15px}
.kind{font-size:11px;letter-spacing:.8px;text-transform:uppercase;border:1px solid var(--line);padding:1px 6px;color:var(--muted)}
.kind.dungeon,.kind.dungeonpre{color:var(--red);border-color:#7a3324}.kind.start{color:var(--blue);border-color:#2a6a80}
.kind.grind{color:var(--grey)}.kind.zone{color:var(--parch)}.kind.attune{color:var(--gold)}
.facts{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:1px;background:var(--line2);border:1px solid var(--line2);margin-bottom:14px}
.facts div{background:var(--panel);padding:8px 12px}
.facts b{display:block;font:600 22px Cinzel,Georgia,serif;color:var(--ember)}
.facts span{font-size:12px;color:var(--muted);text-transform:uppercase;letter-spacing:.6px}
.how{background:var(--panel);border-left:3px solid var(--ember);padding:8px 12px;margin-bottom:12px}
.intro{color:var(--muted);font-size:14px;margin:0 0 12px;padding-left:18px}
.grid2{display:grid;grid-template-columns:minmax(300px,430px) 1fr;gap:20px;align-items:start}
.maps figure{margin:0 0 14px;background:var(--panel);border:1px solid var(--line);padding:8px}
.maps figcaption{font:600 14px Cinzel,Georgia,serif;color:var(--gold);margin-bottom:4px;display:flex;justify-content:space-between}
.maps figcaption small{font:400 12px "Source Sans 3";color:var(--muted)}
svg text{font-family:"Source Sans 3",sans-serif}
h3{font:600 17px Cinzel,Georgia,serif;color:var(--gold);margin:16px 0 8px}
ol.stops{list-style:none;margin:0;padding:0;border-top:1px solid var(--line2)}
ol.stops li{display:grid;grid-template-columns:34px 1fr;gap:8px;padding:6px 4px;border-bottom:1px solid var(--line2);font-size:14px}
ol.stops li .n{font:600 13px Cinzel,Georgia,serif;color:var(--muted);text-align:right}
ol.stops li.accept .n,ol.stops li.talk .n{color:var(--gold)} ol.stops li.turnin .n{color:var(--green)}
ol.stops li.obj .n{color:var(--red)} ol.stops li.run .n{color:var(--red)} ol.stops li.fp .n{color:var(--blue)}
ol.stops li.note{color:var(--muted)}
ol.stops li .sub{color:var(--muted);font-size:13px}
ol.stops li.hl{background:#3a230f}
.q{color:var(--gold)} .qt{color:var(--green)} .qc{color:var(--red)}
table.quests{border-collapse:collapse;width:100%;font-size:14px}
table.quests td,table.quests th{border-bottom:1px solid var(--line2);padding:4px 6px;text-align:left}
table.quests th{color:var(--gold);font:600 13px Cinzel,Georgia,serif}
table.quests tr.dropped td{color:var(--red);text-decoration:line-through}
table.quests td.c{width:58px;text-align:center}
.review{background:var(--panel);border:1px solid var(--brass);padding:12px;margin:0 0 16px}
.review .seg{margin-bottom:8px}
.review textarea{width:100%;min-height:58px;background:#120a05;color:var(--parch);border:1px solid var(--line);font:14px "Source Sans 3";padding:6px}
.review .seg button.keep.on{background:#2f5a1c;color:#d9f5c4}.review .seg button.drop.on{background:#6e2213;color:#ffd6cc}
.road{display:flex;height:22px;border:1px solid var(--line);margin:8px 0 14px}
.road div{flex:1;border-right:1px solid #120a05;cursor:pointer}
.road .K{background:#7a5a2b}.road .E{background:#3d5a6b}.road .X{background:#3a2714}
.legend{display:flex;gap:16px;font-size:13px;color:var(--muted);flex-wrap:wrap;margin-bottom:10px}
.legend i{display:inline-block;width:12px;height:12px;vertical-align:-1px;margin-right:4px}
table.over{border-collapse:collapse;width:100%;font-size:14px}
table.over td,table.over th{border-bottom:1px solid var(--line2);padding:5px 6px;text-align:left}
table.over th{color:var(--gold);font:600 13px Cinzel,Georgia,serif}
table.over tr{cursor:pointer} table.over tr:hover td{background:#2e1c0c}
.nav{position:fixed;bottom:14px;right:18px;display:flex;gap:8px;align-items:center;color:var(--muted);font-size:14px;background:var(--leather);padding:6px;border:1px solid var(--line)}
.toast{position:fixed;bottom:64px;right:18px;background:#2f5a1c;color:#d9f5c4;padding:8px 12px;border:1px solid #5d8f3f;display:none}
@media (max-width:900px){main{grid-template-columns:1fr}aside{max-height:30vh}.grid2{grid-template-columns:1fr}}
</style>
</head>
<body>
<header class="top">
  <img src="pj-header.png" alt="Peon Journey">
  <h1>Guide review</h1>
  <div class="seg" id="routes"></div>
  <div class="seg" id="facs"><button data-f="Alliance" class="on">Alliance</button><button data-f="Horde">Horde</button></div>
  <div class="spacer"></div>
  <button class="btn" id="copy">Copy my notes for Claude</button>
  <button class="btn" id="save">Save notes as .txt</button>
</header>
<main>
  <aside id="list"></aside>
  <section class="slide" id="slide"></section>
</main>
<div class="nav"><button class="btn" id="prev">&larr; prev</button><span id="ctr"></span><button class="btn" id="next">next &rarr;</button></div>
<div class="toast" id="toast">Copied. Paste it in the chat.</div>
<script>
const DATA = __DATA__;
const KLBL = {start:'RXP start', zone:'Questing', newzone:'New zone', dungeon:'Dungeon run', dungeonpre:'Pre-quests', grind:'Grind', attune:'Key'};
const NEW = ["Riverglades","Shen'dralas","Mount Hyjal","Azshara","Desolace","Wetlands"];
let route = 'speed', fac = 'Alliance', idx = -1, hl = null;
let REV = {};
try { REV = JSON.parse(localStorage.getItem('pj-review') || '{}'); } catch (e) { REV = {}; }
function store(){ try { localStorage.setItem('pj-review', JSON.stringify(REV)); } catch (e) {} }
const esc = s => String(s == null ? '' : s).replace(/[&<>"]/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;'}[c]));
const G = () => DATA[route][fac].guides;
const key = g => route + '|' + fac + '|' + g.name;
const rev = g => REV[key(g)] || (REV[key(g)] = {v:'', note:'', drop:[]});
function kindOf(g){ if (g.kind === 'zone' && NEW.some(z => g.name.includes(z))) return 'newzone'; return g.kind; }
function hrs(m){ if (!m) return ''; const h = m / 60; return h < 1 ? Math.round(m) + ' min' : h.toFixed(1) + ' h'; }

function routesBar(){
  const el = document.getElementById('routes');
  el.innerHTML = Object.keys(DATA).filter(k => k !== 'zones').map(k => `<button data-r="${k}" class="${k===route?'on':''}">${esc(DATA[k].title)}</button>`).join('');
  el.querySelectorAll('button').forEach(b => b.onclick = () => { route = b.dataset.r; idx = -1; render(); });
  document.querySelectorAll('#facs button').forEach(b => { b.classList.toggle('on', b.dataset.f === fac);
    b.onclick = () => { fac = b.dataset.f; idx = -1; render(); }; });
}
function list(){
  const el = document.getElementById('list');
  let h = `<div class="over ${idx<0?'on':''}" data-i="-1">Overview: ${esc(DATA[route].title)}, ${fac}</div>`;
  G().forEach((g, i) => {
    const r = REV[key(g)] || {}; const mark = r.v === 'keep' ? '&#10003;' : r.v === 'change' ? '&#9998;' : r.v === 'drop' ? '&#10007;' : (r.note ? '&#9998;' : '');
    h += `<div class="item ${i===idx?'on':''}" data-i="${i}"><span class="lv">${g.lo}${g.hi!==g.lo?'-'+g.hi:''}</span>
      <span>${esc(g.name.replace(/^\d+(-\d+)?\s+/, ''))}<br><span class="k">${KLBL[kindOf(g)]||g.kind}${g.defaultfor?' &middot; '+esc(g.defaultfor):''}</span></span>
      <span class="v ${r.v||''}">${mark}</span></div>`;
  });
  el.innerHTML = h;
  el.querySelectorAll('[data-i]').forEach(d => d.onclick = () => { idx = +d.dataset.i; hl = null; render(); });
  const on = el.querySelector('.on'); if (on) on.scrollIntoView({block:'nearest'});
}
function overview(){
  const R = DATA[route][fac], st = R.stats, gs = R.guides;
  const qs = gs.reduce((a, g) => a + g.quests.length, 0), mins = gs.reduce((a, g) => a + (g.minutes||0), 0);
  const reviewed = gs.filter(g => (REV[key(g)]||{}).v).length;
  let h = `<div class="slidehead"><h2>${esc(DATA[route].title)}</h2><span class="meta">${fac} &middot; ${gs.length} guides</span></div>
  <div class="facts">
    ${st ? `<div><b>${st.hours} h</b><span>estimate from 21 (model)</span></div><div><b>${st.zones}</b><span>zone legs</span></div><div><b>${st.dungeons}</b><span>dungeon runs</span></div><div><b>${st.quests}</b><span>quests from 21</span></div>`
         : `<div><b>${qs}</b><span>quests in all guides</span></div>${mins?`<div><b>${hrs(mins)}</b><span>estimate (model)</span></div>`:''}`}
    <div><b>${reviewed}/${gs.length}</b><span>reviewed by you</span></div>
  </div>
  <div class="legend"><span><i style="background:#7a5a2b"></i>Kalimdor</span><span><i style="background:#3d5a6b"></i>Eastern Kingdoms</span><span><i style="background:#3a2714"></i>no map point</span><span>Click a block or a row to open that guide. Arrow keys flip guides.</span></div>
  <div class="road">${gs.map((g, i) => `<div class="${g.cont||'X'}" title="${esc(g.name)}" data-i="${i}"></div>`).join('')}</div>
  <table class="over"><tr><th>Levels</th><th>Guide</th><th>Kind</th><th>Zones it goes to</th><th>Quests</th><th>Time</th><th>You</th></tr>
  ${gs.map((g, i) => { const r = REV[key(g)]||{}; return `<tr data-i="${i}"><td>${g.lo}${g.hi!==g.lo?'-'+g.hi:''}</td><td>${esc(g.name.replace(/^\d+(-\d+)?\s+/, ''))}</td>
    <td><span class="kind ${kindOf(g)}">${KLBL[kindOf(g)]||g.kind}</span></td><td>${esc(g.zones.slice(0,4).join(', '))}${g.zones.length>4?'...':''}</td>
    <td>${g.quests.length}</td><td>${hrs(g.minutes)}</td><td class="v ${r.v||''}">${r.v||''}</td></tr>`; }).join('')}</table>`;
  const s = document.getElementById('slide'); s.innerHTML = h;
  s.querySelectorAll('[data-i]').forEach(d => d.onclick = () => { idx = +d.dataset.i; render(); });
}
function qname(g, id){ const q = g.quests.find(x => x.id === id); return q ? q.name : 'Quest ' + id; }
function stopText(g, st){
  const parts = [];
  if (st.k === 'travel') parts.push('<b>' + esc(st.text[0] || ('Travel to ' + st.zone)) + '</b>');
  if (st.talk) parts.push(esc(st.talk));
  if (st.tin.length) parts.push('turn in <span class="qt">' + st.tin.map(q => esc(qname(g, q))).join(', ') + '</span>');
  if (st.acc.length) parts.push('accept <span class="q">' + st.acc.map(q => esc(qname(g, q))).join(', ') + '</span>' + (st.tags.length ? ' <span class="sub">(' + esc(st.tags[0]) + ' only)</span>' : ''));
  if (st.k !== 'travel') st.text.forEach(t => parts.push(esc(t)));
  if (st.comp.length && st.k !== 'run') parts.push('<span class="qc">for ' + st.comp.map(q => esc(qname(g, q))).join(', ') + '</span>');
  st.notes.forEach(t => parts.push('<i>' + esc(t) + '</i>'));
  let h = parts.join('. ');
  const sub = st.info.filter(x => !x.startsWith('How: ')).slice(0, st.k === 'run' ? 3 : 1);
  if (sub.length) h += '<div class="sub">' + sub.map(esc).join('<br>') + '</div>';
  return h || '<span class="sub">(step)</span>';
}
function maps(g){
  const by = {}; const order = [];
  g.steps.forEach((st, i) => { if (!st.l) return; const z = st.l[0]; if (!by[z]) { by[z] = []; order.push(z); } by[z].push([i + 1, st]); });
  if (!order.length) return '<p class="sub">No map points in this guide (RestedXP uses world coordinates here).</p>';
  const COL = {accept:'#e8c478', talk:'#e8c478', turnin:'#8fd16a', obj:'#ff6a52', run:'#ff6a52', fp:'#4cc9f0', travel:'#aa9676', note:'#aa9676', grind:'#8c7d66'};
  return order.map(z => {
    const pts = by[z]; const zn = (DATA.zones[z] || ('Map ' + z));
    let s = `<svg viewBox="-4 -4 108 108" width="100%" style="background:#1a1007">`;
    for (let i = 0; i <= 100; i += 10) s += `<line x1="${i}" y1="0" x2="${i}" y2="100" stroke="#2f1f10" stroke-width=".3"/><line x1="0" y1="${i}" x2="100" y2="${i}" stroke="#2f1f10" stroke-width=".3"/>`;
    s += `<rect x="0" y="0" width="100" height="100" fill="none" stroke="#5a4024" stroke-width=".5"/>`;
    s += `<polyline fill="none" stroke="#8b7648" stroke-width=".5" stroke-dasharray="1.2 .8" points="${pts.map(([n, st]) => st.l[1] + ',' + st.l[2]).join(' ')}"/>`;
    const seen = {};
    pts.forEach(([n, st]) => {
      const kx = Math.round(st.l[1]) + ',' + Math.round(st.l[2]); const dup = seen[kx] || 0; seen[kx] = dup + 1;
      const on = hl === n;
      s += `<g class="pt" data-n="${n}" style="cursor:pointer"><circle cx="${st.l[1]}" cy="${st.l[2]}" r="${on ? 2.6 : 1.6}" fill="${COL[st.k]||'#aa9676'}" stroke="#120a05" stroke-width=".4"/>`;
      if (dup < 1) s += `<text x="${st.l[1] + 2.2}" y="${st.l[2] + 1}" font-size="2.8" fill="#eee0be">${n}</text>`;
      s += `<title>${n}. ${esc((st.talk || st.text[0] || st.k).replace(/<[^>]+>/g, ''))}</title></g>`;
    });
    s += '</svg>';
    return `<figure><figcaption>${esc(zn)}<small>${pts.length} stops</small></figcaption>${s}</figure>`;
  }).join('');
}
function guideSlide(){
  const g = G()[idx], r = rev(g), k = kindOf(g);
  const nq = g.quests.length;
  let h = `<div class="slidehead"><h2>${esc(g.name)}</h2><span class="kind ${k}">${KLBL[k]||g.kind}</span>
    <span class="meta">${esc(DATA[route].title)} &middot; ${fac}${g.defaultfor ? ' &middot; for ' + esc(g.defaultfor) : ''}${g.cond && !/^(Alliance|Horde)$/.test(g.cond) ? ' &middot; ' + esc(g.cond) : ''}</span></div>
  <div class="review"><div class="seg">
     <button class="keep ${r.v==='keep'?'on':''}" data-v="keep">Keep</button><button class="${r.v==='change'?'on':''}" data-v="change">Change</button><button class="drop ${r.v==='drop'?'on':''}" data-v="drop">Drop this guide</button></div>
     <textarea id="note" placeholder="What should change? e.g. do this zone later, skip the escort, move this dungeon after Tanaris">${esc(r.note)}</textarea></div>
  <div class="facts"><div><b>${g.lo}${g.hi!==g.lo?'-'+g.hi:''}</b><span>levels</span></div><div><b>${nq}</b><span>quests</span></div>
    <div><b>${g.steps.length}</b><span>steps</span></div>${g.minutes?`<div><b>${hrs(g.minutes)}</b><span>estimate (model)</span></div>`:''}
    <div><b>${g.zones.length}</b><span>zones: ${esc(g.zones.slice(0,3).join(', '))}${g.zones.length>3?'...':''}</span></div></div>
  ${g.how ? `<div class="how"><b>How to get there:</b> ${esc(g.how)}</div>` : ''}
  ${g.intro.length ? `<ul class="intro">${g.intro.filter(x => !x.startsWith('How: ')).map(x => '<li>' + esc(x) + '</li>').join('')}</ul>` : ''}
  <div class="grid2"><div class="maps"><h3>Where it goes</h3>${maps(g)}
    <div class="legend"><span><i style="background:#e8c478"></i>pick up</span><span><i style="background:#8fd16a"></i>hand in</span><span><i style="background:#ff6a52"></i>objective / run</span><span><i style="background:#4cc9f0"></i>flight path</span></div></div>
  <div><h3>Step by step</h3><ol class="stops">${g.steps.map((st, i) => `<li class="${st.k}${hl===i+1?' hl':''}" id="s${i+1}"><span class="n">${i+1}</span><span>${stopText(g, st)}</span></li>`).join('')}</ol>
  <h3>Quests in this guide</h3>
  ${nq ? `<table class="quests"><tr><th>Quest</th><th>Picked up</th><th>Handed in</th><th class="c">Drop</th></tr>
   ${g.quests.map(q => { const d = r.drop.includes(q.id); return `<tr class="${d?'dropped':''}"><td>${esc(q.name)} <span class="sub">#${q.id}</span></td><td>${q.acc?'step '+q.acc:'earlier'}</td><td>${q.tin?'step '+q.tin:'later'}</td>
     <td class="c"><input type="checkbox" data-q="${q.id}" ${d?'checked':''}></td></tr>`; }).join('')}</table>` : '<p class="sub">No quests.</p>'}
  </div></div>`;
  const s = document.getElementById('slide'); s.innerHTML = h;
  s.querySelectorAll('.review .seg button').forEach(b => b.onclick = () => { r.v = r.v === b.dataset.v ? '' : b.dataset.v; store(); render(true); });
  s.querySelector('#note').oninput = e => { r.note = e.target.value; store(); };
  s.querySelectorAll('input[data-q]').forEach(c => c.onchange = () => { const q = +c.dataset.q;
    r.drop = c.checked ? [...new Set([...r.drop, q])] : r.drop.filter(x => x !== q); store(); render(true); });
  s.querySelectorAll('.pt').forEach(p => p.onclick = () => { hl = +p.dataset.n; render(true); const li = document.getElementById('s' + hl); if (li) li.scrollIntoView({block:'center'}); });
}
function render(keepScroll){
  const sc = document.getElementById('slide').scrollTop;
  routesBar(); list(); if (idx < 0) overview(); else guideSlide();
  document.getElementById('ctr').textContent = (idx < 0 ? 'overview' : (idx + 1) + ' / ' + G().length);
  document.getElementById('slide').scrollTop = keepScroll ? sc : 0;
  try { history.replaceState(null, '', '#' + route + '/' + fac + '/' + idx); } catch (e) {}
}
function notesText(){
  const lines = ['Peon Journey guide review', ''];
  for (const rk of Object.keys(DATA)) { if (rk === 'zones') continue;
    for (const f of ['Alliance', 'Horde']) {
      const gs = DATA[rk][f].guides; const out = [];
      gs.forEach(g => { const r = REV[rk + '|' + f + '|' + g.name]; if (!r || (!r.v && !r.note && !r.drop.length)) return;
        let l = '- ' + g.name + ': ' + (r.v ? r.v.toUpperCase() : 'NOTE');
        if (r.note) l += '. ' + r.note.replace(/\s+/g, ' ').trim();
        if (r.drop.length) l += '. Drop quests: ' + r.drop.map(q => { const x = g.quests.find(y => y.id === q); return q + ' ' + (x ? x.name : ''); }).join('; ');
        out.push(l); });
      if (out.length) { lines.push('[' + DATA[rk].title + ' | ' + f + ']'); lines.push(...out); lines.push(''); }
    } }
  return lines.length > 2 ? lines.join('\n') : 'Peon Journey guide review: no notes yet.';
}
function toast(t){ const e = document.getElementById('toast'); e.textContent = t; e.style.display = 'block'; setTimeout(() => e.style.display = 'none', 2500); }
document.getElementById('copy').onclick = () => { const t = notesText();
  (navigator.clipboard ? navigator.clipboard.writeText(t) : Promise.reject()).then(() => toast('Copied. Paste it in the chat.'), () => { prompt('Copy this:', t); }); };
document.getElementById('save').onclick = () => { const a = document.createElement('a');
  a.href = URL.createObjectURL(new Blob([notesText()], {type:'text/plain'})); a.download = 'peon-journey-review.txt'; a.click(); };
document.getElementById('prev').onclick = () => { idx = Math.max(-1, idx - 1); hl = null; render(); };
document.getElementById('next').onclick = () => { idx = Math.min(G().length - 1, idx + 1); hl = null; render(); };
document.addEventListener('keydown', e => { if (e.target.tagName === 'TEXTAREA') return;
  if (e.key === 'ArrowRight') document.getElementById('next').click(); if (e.key === 'ArrowLeft') document.getElementById('prev').click(); });
(function(){ const m = (location.hash || '').slice(1).split('/');
  if (m[0] && DATA[m[0]] && m[0] !== 'zones') route = m[0];
  if (m[1] === 'Alliance' || m[1] === 'Horde') fac = m[1];
  if (m[2] !== undefined && !isNaN(+m[2])) idx = Math.min(+m[2], G().length - 1); })();
render();
</script>
</body>
</html>
"""
data["zones"] = {str(k): v for k, v in ZONE.items()}
OUT.write_text(HTML.replace("__DATA__", json.dumps(data, separators=(",", ":"))))
n = sum(len(data[k][f]["guides"]) for k, _, _ in ROUTES for f in ("Alliance", "Horde"))
print(f"{OUT}: {n} guides, {OUT.stat().st_size // 1024} KB")
