"""Preview images for the presentation: planner window + guide window, drawn from the real data/guides."""
import re, sys, struct
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont
tex, data_lua, guide_file, outdir = Path(sys.argv[1]), Path(sys.argv[2]).read_text(), Path(sys.argv[3]), Path(sys.argv[4])
def tga(p):
    b = Path(p).read_bytes(); w, h = struct.unpack("<HH", b[12:16])
    return Image.frombytes("RGBA", (w, h), b[18:], "raw", "BGRA").transpose(Image.FLIP_TOP_BOTTOM)
F = "/usr/share/fonts/opentype/urw-base35/"
TITLE = ImageFont.truetype(F + "C059-Bold.otf", 15); TAB = ImageFont.truetype(F + "C059-Bold.otf", 12); TXT = ImageFont.truetype(F + "NimbusSans-Regular.otf", 12)
SM = ImageFont.truetype(F + "NimbusSans-Regular.otf", 10); B12 = ImageFont.truetype(F + "NimbusSans-Bold.otf", 12)
GOLD, PARCH, MUTED, EMBER = (232, 196, 120), (238, 224, 190), (170, 150, 118), (214, 112, 38)
S = 2  # retina

def planner(tab_idx, rows_key, faction, level, start_title, out, blurb):
    W, H = 920, 540
    img = Image.new("RGBA", (W, H)); tile = tga(tex / "pj-panel.tga")
    for x in range(0, W, 256):
        for y in range(0, H, 256): img.alpha_composite(tile, (x, y))
    d = ImageDraw.Draw(img); d.rectangle([0, 0, W - 1, H - 1], outline=(128, 108, 66), width=2)
    img.alpha_composite(tga(tex / "pj-header.tga").resize((W - 4, 64)), (2, 2))
    for i, t in enumerate(["Speed+Dungeons", "Speed Quests", "Full Journey", "Dungeons", "Class", "Attunements", "Professions", "Gold"]):
        x = 12 + i * 112; sel = i == tab_idx
        d.rectangle([x, 74, x + 108, 98], fill=(96, 50, 17) if sel else (51, 31, 15), outline=(139, 118, 72))
        d.text((x + 54, 86), t, font=TAB, fill=GOLD if sel else PARCH, anchor="mm")
    d.multiline_text((16, 106), blurb, font=TXT, fill=PARCH, spacing=3)
    sec = data_lua[data_lua.index(rows_key + " = {"):]
    sec = sec[sec.index(faction + " = {"):]
    other = "Horde = {" if faction == "Alliance" else "\n    },\n"
    cut = sec.find(other, 10)
    sec = sec[:cut] if cut > 0 else sec
    rows = re.findall(r'lo = (\d+),\s*hi = (\d+),\s*kind = "(\w+)",\s*title = "([^"]+)",\s*sub = "([^"]*)"', sec)
    start = next(i for i, r in enumerate(rows) if (start_title.endswith("-") and int(r[0]) >= int(start_title[:-1])) or r[3].startswith(start_title))
    glow = tga(tex / "pj-row.tga"); y = 144
    lab = {"zone": "QUESTING", "newzone": "NEW ZONE", "dungeon": "DUNGEON", "start": "RXP START", "prof": "PROFESSION", "gold": "GOLD", "grind": "GRIND"}
    for lo, hi, kind, title, sub in rows[start:start + 7]:
        lo, hi = int(lo), int(hi); inr = lo > 0 and lo - 1 <= level <= hi
        d.rectangle([12, y, W - 34, y + 46], fill=(23, 14, 8), outline=(64, 41, 20))
        if inr: img.alpha_composite(glow.resize((W - 48, 44)), (13, y + 1))
        if lo: d.text((22, y + 8), f"{lo}-{hi}" if lo != hi else f"{lo}", font=TITLE, fill=EMBER if inr else (186, 157, 96))
        d.text((22, y + 28), lab.get(kind, ""), font=SM, fill=MUTED)
        d.text((92, y + 8), title, font=TXT, fill=GOLD if inr else PARCH)
        d.text((92, y + 26), sub[:78], font=SM, fill=MUTED)
        d.rectangle([W - 160, y + 12, W - 78, y + 34], fill=(51, 31, 15), outline=(139, 118, 72))
        d.text((W - 119, y + 23), "Load guide", font=SM, fill=PARCH, anchor="mm")
        d.rectangle([W - 66, y + 13, W - 46, y + 33], outline=(139, 118, 72), width=2)
        y += 50
    d.rectangle([W - 28, 144, W - 16, H - 30], fill=(30, 18, 9), outline=(64, 41, 20))
    d.text((W - 18, H - 12), f"{len(rows)} entries  |  level {level} {faction}", font=SM, fill=MUTED, anchor="rm")
    img.save(outdir / out)

COLORS = {"FRIENDLY": (218, 160, 64), "ENEMY": (255, 92, 70), "PICK": (219, 87, 255), "LOOT": (0, 195, 255), "WARN": (255, 180, 40)}
def segs(text):
    out = []; pos = 0
    for m in re.finditer(r"\|cRXP_([A-Z]+)_([^|]*)\|r", text):
        if m.start() > pos: out.append((text[pos:m.start()], PARCH))
        out.append((m.group(2), COLORS.get(m.group(1), PARCH))); pos = m.end()
    out.append((text[pos:], PARCH)); return out

def guide_window(out, guide_name, n_steps=6, skip=2):
    src = guide_file.read_text()
    blk = next(b for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", src, re.S) if f"#name {guide_name}" in b)
    steps = blk.split("\nstep")[1:]
    W, H = 330, 420
    img = Image.new("RGBA", (W, H), (28, 17, 9, 240)); d = ImageDraw.Draw(img)
    img.alpha_composite(tga(tex / "rxp-banner.tga").resize((W, 34)), (0, 0))
    img.alpha_composite(tga(tex / "rxp_logo-64.tga").resize((28, 28)), (4, 3))
    d.text((38, 17), guide_name, font=B12, fill=PARCH, anchor="lm")
    y = 42; idx = skip
    for st in steps[skip:skip + n_steps]:
        idx += 1
        lines = []
        for l in st.splitlines():
            l = l.strip()
            m = re.match(r"\.(accept|turnin|complete|fp)\s+[\d\w' ]*?(?:,\d+)?\s*>>(.*)", l)
            if l.startswith(">>"): lines.append(l[2:])
            elif l.startswith("*"): lines.append(l[1:])
            elif m: lines.append(("• " if True else "") + m.group(2))
            elif l.startswith(".complete"):
                q = re.search(r"--(.*)$", l); lines.append("• Objective: " + (q.group(1) if q else ""))
        active = idx == skip + 1
        box_h = 10 + 15 * min(len(lines), 5)
        d.rectangle([4, y, W - 5, y + box_h], fill=(44, 28, 14) if not active else (70, 38, 14), outline=(214, 112, 38) if active else (64, 41, 20))
        d.text((10, y + 5), str(idx), font=B12, fill=EMBER)
        ty = y + 5
        for l in lines[:5]:
            x = 30
            for t, col in segs(l[:54] + ("..." if len(l) > 54 else "")):
                d.text((x, ty), t, font=SM, fill=col); x += d.textlength(t, font=SM)
            ty += 15
        y += box_h + 6
        if y > H - 40: break
    d.rectangle([0, H - 22, W - 1, H - 1], fill=(44, 28, 14)); d.text((8, H - 11), "Peon Journey", font=SM, fill=MUTED, anchor="lm")
    img = img.resize((W * 2, H * 2), Image.LANCZOS); img.save(outdir / out)

planner(0, "speed", "Alliance", 41, "36-", "planner_full.png",
        "1-60 Speed (with Dungeons): best-XP quests, one visit per zone, only the dungeons worth the trip.\nEnds at 60. Load the first row for your race; each guide hands you the next one.")
planner(6, "professions", "Horde", 30, "1-300 Alchemy", "planner_prof.png",
        "1-300 for every Forever profession, with Forever's recipe changes. Hover a row for the full\nroute and materials. Load the guide for trainer waypoints and auto-ticking skill steps.")
m = re.search(r"#name (\d+-\d+ Riverglades)\n", guide_file.read_text())
guide_window("guide_window.png", m.group(1), 6, 2)
print("ok", m.group(1))
