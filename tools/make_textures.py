"""Draw the Peon Journey textures (uncompressed 32-bit TGA, bottom-left origin, power-of-two sizes).

Usage: python -I make_textures.py <out_dir> <preview_png>
"""
import math
import random
import struct
import sys
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter, ImageFont

OUT = Path(sys.argv[1])
OUT.mkdir(parents=True, exist_ok=True)
PREVIEW = Path(sys.argv[2])
random.seed(7)

FONT_BOLD = "/usr/share/fonts/opentype/urw-base35/C059-Bold.otf"
FONT_TEXT = "/usr/share/fonts/opentype/urw-base35/C059-Roman.otf"

# palette: tanned leather, peon-orange, iron, parchment
LEATHER_DARK = (28, 17, 9)
LEATHER = (58, 36, 18)
LEATHER_LIGHT = (86, 55, 28)
EMBER = (214, 112, 38)
GOLD = (196, 150, 68)
IRON = (92, 88, 82)
PARCH = (238, 224, 190)


def save_tga(img, path):
    img = img.convert("RGBA")
    w, h = img.size
    assert w & (w - 1) == 0 and h & (h - 1) == 0, f"{path} not power of two"
    header = struct.pack("<BBBHHBHHHHBB", 0, 0, 2, 0, 0, 0, 0, 0, w, h, 32, 8)
    rows = []
    px = img.load()
    for y in range(h - 1, -1, -1):
        row = bytearray()
        for x in range(w):
            r, g, b, a = px[x, y]
            row += bytes((b, g, r, a))
        rows.append(bytes(row))
    Path(path).write_bytes(header + b"".join(rows))


def grain(img, strength=10, horizontal=True):
    w, h = img.size
    px = img.load()
    for y in range(h):
        line = random.uniform(-strength, strength)
        for x in range(w):
            n = line + random.uniform(-strength / 2, strength / 2)
            if horizontal:
                n += 4 * math.sin(x / 23.0 + y * 1.7)
            r, g, b, a = px[x, y]
            px[x, y] = (max(0, min(255, int(r + n))), max(0, min(255, int(g + n * 0.8))),
                        max(0, min(255, int(b + n * 0.5))), a)
    return img


def vgrad(w, h, top, bottom, alpha=255):
    img = Image.new("RGBA", (w, h))
    d = ImageDraw.Draw(img)
    for y in range(h):
        t = y / max(1, h - 1)
        c = tuple(int(top[i] + (bottom[i] - top[i]) * t) for i in range(3))
        d.line([(0, y), (w, y)], fill=c + (alpha,))
    return img


def rivet(d, cx, cy, r):
    d.ellipse([cx - r, cy - r, cx + r, cy + r], fill=IRON + (255,), outline=(30, 28, 26, 255))
    d.ellipse([cx - r * 0.45 - 1, cy - r * 0.45 - 1, cx - r * 0.05, cy - r * 0.05], fill=(170, 165, 155, 255))


def banner():
    # strip behind the guide title and footer text: quiet, no text
    w, h = 256, 32
    img = vgrad(w, h, LEATHER_LIGHT, LEATHER_DARK)
    img = grain(img, 9)
    d = ImageDraw.Draw(img)
    d.line([(0, 1), (w, 1)], fill=GOLD + (150,))
    d.line([(0, h - 2), (w, h - 2)], fill=(10, 6, 3, 255))
    # stitching
    for x in range(10, w - 10, 7):
        d.line([(x, 4), (x + 3, 4)], fill=(150, 110, 60, 120))
        d.line([(x, h - 5), (x + 3, h - 5)], fill=(150, 110, 60, 120))
    rivet(d, 7, h // 2, 3)
    rivet(d, w - 8, h // 2, 3)
    return img


def tool_emblem(size):
    s = size * 4  # supersample
    img = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    c = s / 2
    # round iron-rimmed shield
    d.ellipse([s * 0.04, s * 0.04, s * 0.96, s * 0.96], fill=(20, 12, 6, 255))
    d.ellipse([s * 0.08, s * 0.08, s * 0.92, s * 0.92], fill=GOLD + (255,))
    d.ellipse([s * 0.13, s * 0.13, s * 0.87, s * 0.87], fill=LEATHER + (255,))
    inner = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    di = ImageDraw.Draw(inner)

    def rot(points, ang, cx, cy):
        ca, sa = math.cos(ang), math.sin(ang)
        return [(cx + (x - cx) * ca - (y - cy) * sa, cy + (x - cx) * sa + (y - cy) * ca) for x, y in points]

    handle = (148, 98, 50, 255)
    metal = (210, 205, 195, 255)
    edge = (25, 16, 8, 255)
    # pickaxe (rotated -40 deg)
    hw = s * 0.035
    pick_handle = [(c - hw, s * 0.24), (c + hw, s * 0.24), (c + hw, s * 0.80), (c - hw, s * 0.80)]
    pick_head = [(s * 0.24, s * 0.30), (c, s * 0.20), (s * 0.76, s * 0.30), (c, s * 0.27)]
    for poly, col in ((pick_handle, handle), (pick_head, metal)):
        di.polygon(rot(poly, math.radians(-40), c, c), fill=col, outline=edge)
    # axe (rotated +40 deg)
    axe_handle = [(c - hw, s * 0.22), (c + hw, s * 0.22), (c + hw, s * 0.80), (c - hw, s * 0.80)]
    axe_head = [(c + hw, s * 0.24), (s * 0.70, s * 0.18), (s * 0.74, s * 0.30), (s * 0.70, s * 0.42), (c + hw, s * 0.36)]
    for poly, col in ((axe_handle, handle), (axe_head, metal)):
        di.polygon(rot(poly, math.radians(40), c, c), fill=col, outline=edge)
    # ember spark in the middle
    di.ellipse([c - s * 0.045, c - s * 0.045, c + s * 0.045, c + s * 0.045], fill=EMBER + (255,), outline=edge)
    img.alpha_composite(inner)
    return img.resize((size, size), Image.LANCZOS)


def panel_tile():
    w = h = 256
    img = vgrad(w, h, (44, 28, 14), (30, 19, 10))
    img = grain(img, 7, horizontal=False)
    img = img.filter(ImageFilter.GaussianBlur(0.6))
    return img


def header_title():
    w, h = 512, 64
    img = vgrad(w, h, LEATHER_LIGHT, LEATHER_DARK)
    img = grain(img, 8)
    d = ImageDraw.Draw(img)
    d.line([(0, 2), (w, 2)], fill=GOLD + (170,), width=2)
    d.line([(0, h - 3), (w, h - 3)], fill=GOLD + (120,), width=1)
    for x in (12, w - 13):
        rivet(d, x, h // 2, 5)
    font = ImageFont.truetype(FONT_BOLD, 34)
    text = "PEON JOURNEY"
    tw = d.textlength(text, font=font)
    x = (w - tw) / 2 + 18
    y = 13
    # carved look: dark offset then parchment-gold
    d.text((x + 2, y + 2), text, font=font, fill=(12, 7, 3, 255))
    d.text((x, y), text, font=font, fill=(232, 196, 120, 255))
    em = tool_emblem(52)
    img.alpha_composite(em, (int(x - 62), 6))
    return img


def row_highlight():
    w, h = 256, 32
    img = Image.new("RGBA", (w, h), EMBER + (0,))
    px = img.load()
    for x in range(w):
        a = int(110 * (1 - x / w) ** 1.5)
        for y in range(h):
            px[x, y] = EMBER + (a,)
    return img


def checked():
    s = 32
    img = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    d.rectangle([3, 3, 28, 28], fill=(24, 15, 8, 255), outline=GOLD + (255,))
    d.line([(8, 16), (14, 23), (25, 8)], fill=EMBER + (255,), width=4)
    return img


textures = {
    "rxp-banner": banner(),
    "rxp_logo-64": tool_emblem(64),
    "rxp_logo-128": tool_emblem(128),
    "pj-panel": panel_tile(),
    "pj-header": header_title(),
    "pj-row": row_highlight(),
    "rxp-checked-32": checked(),
}
for name, img in textures.items():
    save_tga(img, OUT / f"{name}.tga")

# preview sheet for eyeballing
sheet = Image.new("RGBA", (560, 260), (60, 60, 60, 255))
sheet.alpha_composite(textures["pj-header"], (24, 10))
sheet.alpha_composite(textures["rxp-banner"].resize((512, 64)), (24, 84))
sheet.alpha_composite(textures["rxp_logo-128"], (24, 160))
sheet.alpha_composite(textures["rxp_logo-64"], (170, 190))
sheet.alpha_composite(textures["pj-panel"].crop((0, 0, 200, 90)), (250, 160))
sheet.alpha_composite(textures["rxp-checked-32"], (470, 190))
sheet.save(PREVIEW)
print("ok", sorted(textures))
