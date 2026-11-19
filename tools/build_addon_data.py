"""Planner rows for the Professions and Gold tabs (shared by the build scripts)."""
import json
import re
from pathlib import Path


def _headers(path):
    out = []
    for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", path.read_text(), re.S):
        h = {}
        for line in b.splitlines():
            s = line.strip()
            if s.startswith("step"):
                break
            m = re.match(r"#(\S+)\s*(.*)", s)
            if m:
                h[m.group(1)] = m.group(2)
            m = re.match(r"<<\s*(\w+)", s)
            if m:
                h["faction"] = m.group(1)
        out.append(h)
    return out


def professions_and_gold(root, prof_group="Peon Journey - Professions", gold_group="Peon Journey - Gold"):
    root = Path(root)
    profs = {"Alliance": [], "Horde": []}
    for rf in ("professions_a.json", "professions_b.json"):
        for p in json.loads(((root / "data" / "research" / rf) if (root / "data" / "research" / rf).exists() else (root / "research" / rf)).read_text()):
            name = f"1-300 {p['profession']}"
            lines = []
            for st in p["steps"]:
                if st.get("recipe"):
                    mats = ", ".join(f"{q} {n}" for n, q in (st.get("mats_per_craft") or []))
                    lines.append(f"{st['from']}-{st['to']}: {st['recipe']} x{st.get('crafts', '?')}" + (f" ({mats})" if mats else ""))
                else:
                    lines.append(f"{st['from']}-{st['to']}: {st.get('node_or_target', '')}")
            ch = re.sub(r"\s*\([^)]*\)", "", (p.get("forever_changes") or [""])[0])
            kind = p.get("kind", "crafting")
            label = "Gathering | " if kind == "gathering" else "Secondary | " if kind == "secondary" else "Crafting | "
            for fac, tag in (("Alliance", "A"), ("Horde", "H")):
                profs[fac].append(dict(lo=0, hi=0, kind="prof", title=name, sub=label + ch[:110],
                                       group=prof_group, guide=f"{name} ({tag})", tip=lines[:30]))
    gold = {"Alliance": [], "Horde": []}
    for f in sorted((root / "out_guides" / "gold").glob("*.lua")):
        for h in _headers(f):
            n = h["name"]
            facs = [h["faction"]] if h.get("faction") else ["Alliance", "Horde"]
            if n.startswith("Weekly"):
                sub, tip = "Weekly, level 60 | Pix Xizzix, Booty Bay", ["Undermine Satchel: 10, 20, 40 or 100g item + materials.", "Only one 'In Demand' quest per week: check which one Pix offers."]
            elif n.startswith("Daily"):
                sub, tip = "Daily writs + crates | reputation, a little silver", ["Writs are daily per order but usually cost more than they pay. Deliver only cheap ones."]
            else:
                sub, tip = "Farm spots at 60 + Sunday fishing contest", ["Devilsaurs (Un'Goro), Firetail Scorpids (Burning Steppes), Cyclone Warriors (Silithus)."]
            for fac in facs:
                gold[fac].append(dict(lo=10 if n.startswith("Daily") else 60, hi=60, kind="gold", title=n, sub=sub,
                                      group=gold_group, guide=n, tip=tip))
    for fac in gold:
        gold[fac].append(dict(lo=48, hi=60, kind="gold", title="Quests 48+ pay gold (one time each)",
                              sub="Since the 10 Nov hotfix: Azshara, Mount Hyjal, Alcaz Prison, Blackmaw Hold...",
                              tip=["There is no real gold daily in Forever. One-time quest gold at 48+ and the weekly Pix quest are the steady sources."]))
        gold[fac].sort(key=lambda e: (-e["lo"], e["title"]))
    facts = json.loads(((root / "data" / "research" / "dailies.json") if (root / "data" / "research").exists() else (root / "research" / "dailies.json")).read_text())
    blurbs = {
        "professions": "1-300 for every Forever profession, with Forever's recipe changes. Hover a row for the full route and materials. Load the guide for trainer waypoints and auto-ticking skill steps.",
        "gold": facts.get("summary", "")[:330] + "...",
    }
    return {"professions": profs, "gold": gold, "blurbs": blurbs}
