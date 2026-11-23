"""Build presentation/index.html (local slides) from the real route + build data.

Usage: python -I make_presentation.py <scratch_root> <out_dir>
"""
import json
import re
import sys
from pathlib import Path

ROOT, OUT = Path(sys.argv[1]), Path(sys.argv[2])
meta = json.loads((ROOT / "out_route" / "route_meta.json").read_text())
sa = ROOT / "PeonJourney" if (ROOT / "PeonJourney" / "PeonJourney.toc").exists() else ROOT / "build_sa" / "PeonJourney"
ROUTES = {"speed": "Peon Journey - 1-60 Speed (with Dungeons)", "speedq": "Peon Journey - 1-60 Speed (no Dungeons)",
          "full": "Peon Journey - 1-60 Full Journey"}
NEWZ = ("Riverglades", "Shen'dralas", "Mount Hyjal", "Azshara", "Desolace", "Wetlands")


RACE = {"Alliance": "Human", "Horde": "Tauren"}


def fits(tag, me):
    for alt in tag.split("/"):
        ok = True
        for tok in alt.split():
            neg = tok.startswith("!")
            if (tok.lstrip("!") in me) == neg:
                ok = False
        if ok:
            return True
    return False


def free_rows(fac, variant):
    grp = ROUTES[variant]
    rows = []
    for f in (sa / "Guides" / "free" / variant).rglob("*.lua"):
        for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", f.read_text(errors="replace"), re.S):
            if grp not in b:
                continue
            fh = re.search(r"^\s*<<\s*(.+)$", b, re.M)
            if fh and fac not in fh.group(1) and ("Alliance" in fh.group(1) or "Horde" in fh.group(1)):
                continue
            df = re.search(r"^\s*#defaultfor\s+([^<\n]+)", b, re.M)
            if df and not fits(df.group(1).strip(), {fac, RACE[fac], "Warrior"}):
                continue
            if fh and not fits(fh.group(1).strip(), {fac, RACE[fac], "Warrior"}):
                continue
            m = re.search(r"^\s*#name\s+(\d+)-(\d+)\s+(.+)$", b, re.M)
            if m:
                rows.append(dict(lo=int(m.group(1)), hi=int(m.group(2)), name=m.group(3).strip(), kind="start"))
    return rows


road = {}
for fac in ("Alliance", "Horde"):
    road[fac] = {}
    race = {"Alliance": "Human", "Horde": "Tauren"}[fac]
    for v in ("speed", "speedq", "full", "dungeons"):
        rows = sorted(free_rows(fac, v), key=lambda r: (r["lo"], r["hi"])) if v != "dungeons" else []
        for it in meta[fac][v]:
            m = re.match(r"(\d+)-(\d+)\s+(.*)", it["name"])
            name = m.group(3)
            kind = {"dungeonpre": "dungeon", "dungeon": "dungeon", "grind": "grind"}.get(it["kind"]) or \
                ("newzone" if any(z in name for z in NEWZ) else "zone")
            rows.append(dict(lo=int(m.group(1)), hi=int(m.group(2)), name=name, kind=kind))
        road[fac][v] = rows   # route order

guides_total = sum(len(re.findall(r"RXPGuides\.RegisterGuide\(", f.read_text(errors="replace")))
                   for f in (sa / "Guides").rglob("*.lua"))
own = sum(len(meta[f][v]) for f in meta for v in ("speed", "speedq", "full", "dungeons"))
ST = {f: meta[f]["stats"] for f in meta}


def hrs(k):
    return f"~{ST['Alliance'][k]['hours']:.0f} h Alliance, ~{ST['Horde'][k]['hours']:.0f} h Horde"

html = r"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Peon Journey</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600;800&family=Source+Sans+3:wght@400;600&display=swap" rel="stylesheet">
<style>
:root{
  --leather:#1c1109; --leather2:#2c1c0e; --panel:#24160b; --line:#5a4024; --brass:#8b7648;
  --parch:#eee0be; --gold:#e8c478; --ember:#d67026; --muted:#aa9676; --red:#ff5c46; --blue:#00c3ff; --purple:#db57ff;
}
*{box-sizing:border-box}
html,body{margin:0;height:100%;background:var(--leather);color:var(--parch);font-family:"Source Sans 3",system-ui,sans-serif}
body{background-image:repeating-linear-gradient(0deg,rgba(255,255,255,.012) 0 2px,transparent 2px 5px);}
.deck{position:fixed;inset:0;display:flex;align-items:center;justify-content:center;padding:16px}
.slide{display:none;width:min(1180px,100%);height:min(680px,calc(100vh - 90px));background:var(--leather2);
  border:2px solid var(--brass);box-shadow:0 0 0 6px #120a05;position:relative;overflow:hidden}
.slide.on{display:flex;flex-direction:column}
.bar{height:58px;flex:none;display:flex;align-items:center;gap:14px;padding:0 22px;
  background:linear-gradient(#563719,#24160b);border-bottom:2px solid #120a05}
.bar img{height:40px}
.bar h2{margin:0;font-family:Cinzel,Georgia,serif;font-weight:800;font-size:24px;color:var(--gold);letter-spacing:.5px}
.body{flex:1;padding:22px 28px;overflow:auto}
h3{font-family:Cinzel,Georgia,serif;color:var(--gold);margin:0 0 10px;font-size:19px}
p,li{line-height:1.5;font-size:17px}
.muted{color:var(--muted)}
.em{color:var(--ember)}
.cols{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:18px}
.card{background:var(--panel);border:1px solid var(--line);padding:16px 18px}
.card h3{font-size:17px}
.big{font-family:Cinzel,Georgia,serif;font-size:40px;color:var(--ember);line-height:1}
.cover{align-items:center;justify-content:center;text-align:center;background:var(--leather)}
.cover img.head{width:min(760px,92%);border:2px solid #120a05}
.cover .tag{font-size:20px;margin:18px 0 26px;color:var(--parch)}
.stats{display:flex;gap:34px;justify-content:center;flex-wrap:wrap}
.stats div span{display:block;font-size:14px;color:var(--muted);margin-top:6px}
.shot{display:flex;gap:22px;align-items:flex-start;flex-wrap:wrap;justify-content:center}
.shot figure{margin:0;text-align:center}
.shot img{max-width:100%;border:2px solid #120a05;display:block}
.shot figcaption{color:var(--muted);font-size:14px;margin-top:8px}
.road{display:grid;grid-template-columns:1fr 1fr 1fr;gap:18px}
.road .col{background:var(--panel);border:1px solid var(--line);max-height:430px;overflow:auto}
.road .col h3{position:sticky;top:0;background:var(--panel);padding:10px 12px;margin:0;border-bottom:1px solid var(--line)}
.row{display:grid;grid-template-columns:58px 1fr 92px;gap:8px;padding:6px 12px;border-bottom:1px solid #2f1f10;font-size:15px}
.row .lv{font-family:Cinzel,Georgia,serif;color:var(--gold)}
.row .k{font-size:11px;letter-spacing:.6px;text-align:right;align-self:center}
.k.dungeon{color:var(--red)} .k.newzone{color:var(--ember)} .k.zone{color:var(--muted)} .k.start{color:var(--blue)} .k.grind{color:var(--muted)}
.toggle{display:flex;gap:8px;margin-bottom:12px}
.toggle button,.nav button{font:600 14px "Source Sans 3",sans-serif;background:#331f0f;color:var(--parch);border:1px solid var(--brass);padding:6px 14px;cursor:pointer}
.toggle button.on{background:#603214;color:var(--gold)}
.legend{display:flex;gap:16px;font-size:13px;margin:0 0 10px;color:var(--muted);flex-wrap:wrap}
.legend b{font-weight:600}
table{border-collapse:collapse;width:100%;font-size:15px}
td,th{border-bottom:1px solid #3a2714;padding:6px 8px;text-align:left}
th{color:var(--gold);font-family:Cinzel,Georgia,serif;font-weight:600}
code{background:#120a05;border:1px solid var(--line);padding:1px 6px;color:var(--gold)}
.nav{position:fixed;bottom:14px;right:18px;display:flex;gap:8px;align-items:center;color:var(--muted);font-size:14px}
ol li,ul li{margin-bottom:6px}
@media (max-width:760px){.road{grid-template-columns:1fr}.body{padding:16px}.bar h2{font-size:18px}}
</style>
</head>
<body>
<div class="deck">

<section class="slide cover on">
  <img class="head" src="pj-header.png" alt="Peon Journey">
  <div class="tag">Your own WoW Forever guide: 1 to 60 three ways, every dungeon and wing, attunements, every profession. One folder, no RestedXP needed.</div>
  <div class="stats">
    <div><div class="big">__GUIDES__</div><span>guides inside</span></div>
    <div><div class="big">3</div><span>routes to 60</span></div>
    <div><div class="big">28</div><span>dungeons, big ones split into wings</span></div>
    <div><div class="big">12</div><span>professions 1-300</span></div>
  </div>
</section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>What is inside the folder</h2></div>
<div class="body"><div class="cols">
  <div class="card"><h3>The guide engine</h3><p>The free RestedXP engine is built in and renamed to Peon Journey: guide window, waypoint arrow, steps that tick themselves. You do <b class="em">not</b> install RestedXP.</p></div>
  <div class="card"><h3>Levels 1-21</h3><p>RestedXP's free, hand-made starting routes. It detects your race: Tauren start in Mulgore, Orcs and Trolls in Durotar, Undead in Tirisfal, Skyborne on Zephras Isle. The last one leads straight into Peon Journey.</p></div>
  <div class="card"><h3>Levels 21-60</h3><p>Peon Journey's own route through old <i>and</i> new zones, built from Forever's real quest data (quest IDs, NPC spots, quest XP).</p></div>
  <div class="card"><h3>Extras</h3><p>Class quests worth doing (items, must-do abilities, level 60), attunements and dungeon keys, professions 1-300, a gold routine, the Peon theme and the <code>/pj</code> planner window.</p></div>
</div></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>Three ways to 60</h2></div>
<div class="body"><div class="cols">
  <div class="card"><div class="big">1</div><h3>1-60 Speed (with Dungeons)</h3><p>The <b>fastest</b> way to 60 in our model: every quest scored by XP per minute, one visit per zone in continent blocks, and only the dungeons worth the trip. Ends at 60.</p><p class="muted">Estimate from 21: __H_SPEED__.</p></div>
  <div class="card"><div class="big">2</div><h3>1-60 Speed (no Dungeons)</h3><p><b>Solo.</b> The same idea without dungeons: weak quests and zones are skipped, and a short grind fills a gap when no quest is worth the time.</p><p class="muted">Estimate from 21: __H_SPEEDQ__.</p></div>
  <div class="card"><div class="big">3</div><h3>1-60 Full Journey</h3><p><b>Everything:</b> every zone, every dungeon and wing with its pre-quests (solo guide first, then the run), in level order, Mount Hyjal last.</p><p class="muted">Estimate from 21: __H_FULL__.</p></div>
</div></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>The road, guide by guide</h2></div>
<div class="body">
  <div class="toggle"><button data-f="Alliance" class="on">Alliance (Human start)</button><button data-f="Horde">Horde (Tauren start)</button></div>
  <div class="legend"><span><b class="k start">RXP START</b> free 1-21</span><span><b class="k zone">QUESTING</b> old zone</span><span><b class="k newzone">NEW ZONE</b> Forever zone</span><span><b class="k dungeon">DUNGEON</b> pre-quests or run</span><span><b class="k grind">GRIND</b> no quest worth it</span></div>
  <div class="road"><div class="col" id="c-speed"><h3>Speed (with Dungeons)</h3></div><div class="col" id="c-speedq"><h3>Speed (no Dungeons)</h3></div><div class="col" id="c-full"><h3>Full Journey</h3></div></div>
</div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>How it looks in game</h2></div>
<div class="body"><div class="shot">
  <figure><img src="planner_full.png" width="560" alt="Planner window"><figcaption>The planner (<code>/pj</code> or the minimap button). Rows that fit your level glow orange.</figcaption></figure>
  <figure><img src="guide_window.png" width="300" alt="Guide window"><figcaption>The guide window in the Peon theme (real Riverglades steps).</figcaption></figure>
</div><p class="muted" style="text-align:center">Drawn from the addon's real textures and data. The in-game window renders with WoW's own fonts.</p></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>New Forever content in the routes</h2></div>
<div class="body"><div class="cols">
<div class="card"><h3>New zones</h3><table>
<tr><th>Zone</th><th>Levels</th><th>Quests</th></tr>
<tr><td>Wetlands (new quests)</td><td>22-33</td><td>~25</td></tr>
<tr><td>Desolace (centaur quests)</td><td>35-42</td><td>~20</td></tr>
<tr><td>Riverglades</td><td>37-46</td><td>~100 per faction</td></tr>
<tr><td>Shen'dralas</td><td>41-45</td><td>22-32</td></tr>
<tr><td>Azshara (new quests)</td><td>48-55</td><td>~30</td></tr>
<tr><td>Mount Hyjal</td><td>56-60</td><td>~80</td></tr></table></div>
<div class="card"><h3>New dungeons</h3><table>
<tr><th>Dungeon</th><th>Levels</th></tr>
<tr><td>The Hall of Thanes</td><td>13-18</td></tr><tr><td>Ruins of Lordaeron</td><td>15-20</td></tr>
<tr><td>Excavation Site: Wetlands</td><td>26-31</td></tr><tr><td>City of Dalaran <span class="em">(key chain)</span></td><td>28-33</td></tr>
<tr><td>The Drowned City</td><td>35-40</td></tr><tr><td>Krol'dok Stronghold</td><td>40-45</td></tr>
<tr><td>Alcaz Prison</td><td>48-53</td></tr><tr><td>Blackmaw Hold</td><td>55-60</td></tr><tr><td>Shaper's Terrace</td><td>58-60</td></tr></table></div>
</div></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>Professions, inside the game</h2></div>
<div class="body"><div class="shot">
  <figure><img src="planner_prof.png" width="520" alt="Professions tab"><figcaption>Hover a row: the whole route with materials. Load it: trainer waypoints, recipe vendors, a shopping list, skill steps that tick themselves.</figcaption></figure>
  <div class="card" style="max-width:430px"><h3>Forever changes it knows about</h3><ul>
  <li>Healing potions moved from Alchemy to First Aid</li>
  <li>Azerothium Bar (2 Pitchblende + 1 Coal) at Mining 275</li>
  <li>New trainers and plans in Mount Hyjal and Riverglades</li>
  <li>Marefoil, Demonsage, Death Lotus for the new flasks</li>
  <li>Mining and Herbalism draw a loop route over real node spawns</li></ul></div>
</div></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>Gold, honestly</h2></div>
<div class="body"><div class="cols">
  <div class="card"><h3>No real gold dailies</h3><p>Every source agrees: Forever has no daily quest that pays real gold. Craftsman's Writs are daily but usually cost more than they pay.</p></div>
  <div class="card"><h3>What does pay</h3><ul><li><b>Weekly:</b> Pix Xizzix, Booty Bay. "In Demand" quest, Dire Maul bosses, a 10-100g item</li><li><b>One time:</b> quests of level 48+ pay gold (10 Nov hotfix)</li><li><b>Farming at 60:</b> Devilsaurs, Firetail Scorpids, Cyclone Warriors</li><li><b>Sundays:</b> Stranglethorn fishing contest</li></ul></div>
  <div class="card"><h3>In the app</h3><p>The Gold tab has a guide for each: the weekly run, a writs and crates routine, farm loops at 60.</p></div>
</div></div></section>

<section class="slide"><div class="bar"><img src="rxp_logo-128.png" alt=""><h2>Install and play</h2></div>
<div class="body"><div class="cols">
<div class="card"><h3>Install</h3><ol>
<li>Unzip <code>PeonJourney.zip</code> into <code>_forever_/Interface/AddOns/</code></li>
<li>In the AddOns list: tick <b>Peon Journey</b>, untick <b>RestedXP Guides</b> (the engine is already inside)</li>
<li>Log in: the Peon theme switches on by itself</li></ol></div>
<div class="card"><h3>Play</h3><ul>
<li><code>/pj</code> or left-click the minimap button: planner</li>
<li>Or right-click the guide window title: the menu lists the 6 Peon Journey groups. click <b>Load guide</b> on the row for your level (only your race's start is listed)</li>
<li>Right-click the minimap button: show or hide the guide window</li>
<li>Each guide loads the next one when you finish it</li></ul></div>
<div class="card"><h3>Good to know</h3><ul>
<li>Routes 21-60 are generated from data, not walked by hand: expect some detours, skip a step that won't finish</li>
<li>Not tested in the real game yet; tell me what breaks and I will fix it</li></ul></div>
</div></div></section>

</div>
<div class="nav"><button id="prev">&larr;</button><span id="ctr"></span><button id="next">&rarr;</button></div>
<script>
const ROAD = __ROAD__;
const slides=[...document.querySelectorAll('.slide')]; let i=0;
function show(n){i=Math.max(0,Math.min(slides.length-1,n));slides.forEach((s,k)=>s.classList.toggle('on',k===i));document.getElementById('ctr').textContent=(i+1)+' / '+slides.length;}
document.getElementById('prev').onclick=()=>show(i-1);document.getElementById('next').onclick=()=>show(i+1);
document.addEventListener('keydown',e=>{if(e.key==='ArrowRight'||e.key===' '||e.key==='PageDown')show(i+1);if(e.key==='ArrowLeft'||e.key==='PageUp')show(i-1);});
const LBL={start:'RXP START',zone:'QUESTING',newzone:'NEW ZONE',dungeon:'DUNGEON',grind:'GRIND'};
function fill(f){for(const v of ['speed','speedq','full']){const c=document.getElementById('c-'+v);c.querySelectorAll('.row').forEach(r=>r.remove());
 for(const r of ROAD[f][v]){const d=document.createElement('div');d.className='row';
  const lv=r.lo===r.hi?String(r.lo):r.lo+'-'+r.hi;
  d.innerHTML='<span class="lv"></span><span class="n"></span><span class="k '+r.kind+'">'+LBL[r.kind]+'</span>';
  d.querySelector('.lv').textContent=lv;d.querySelector('.n').textContent=r.name;c.appendChild(d);}}}
document.querySelectorAll('.toggle button').forEach(b=>b.onclick=()=>{document.querySelectorAll('.toggle button').forEach(x=>x.classList.toggle('on',x===b));fill(b.dataset.f);});
fill('Alliance');show(0);
</script>
</body>
</html>
"""
html = html.replace("__GUIDES__", str(guides_total)).replace("__ROAD__", json.dumps(road))
html = html.replace("__H_SPEED__", hrs("speed")).replace("__H_SPEEDQ__", hrs("speedq")).replace("__H_FULL__", hrs("full"))
OUT.mkdir(parents=True, exist_ok=True)
(OUT / "index.html").write_text(html)
print("guides", guides_total, "own", own)
