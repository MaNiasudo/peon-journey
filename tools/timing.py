"""Rough time model for Peon Journey routes, in minutes.

Nothing here is measured in game: it is a consistent yardstick so routes can be compared and quests ranked by
XP per minute. Map coordinates are 0-100 per zone; a zone is roughly 1000-1500 yards across, so 100 units take
about 3 minutes on foot and under 2 minutes mounted (Apprentice Riding at 40).
"""
import math

KALIMDOR = {1411, 1412, 1413, 1414, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450,
            1451, 1452, 1454, 1456, 1457, 2482, 2652}
OBJ_MIN = {"mob": 4.0, "killcredit": 4.0, "item": 5.0, "object": 2.5, "event": 1.5, "spell": 2.0, "rep": 15.0}
TALK_MIN = 0.4          # accept or hand in one quest
ZONE_HOP_MIN = 7.0      # flight or ride to another zone on the same continent
CONTINENT_HOP_MIN = 15.0
GROUP_WAIT_MIN = 15.0   # finding a group for a dungeon


def continent(ui):
    return "K" if ui in KALIMDOR else "E"


def per_unit(level):
    return 0.018 if level >= 40 else 0.03


def travel_min(a, b, level):
    if a is None or b is None:
        return 0.0
    if a[0] == b[0]:
        return math.hypot(a[1] - b[1], a[2] - b[2]) * per_unit(level)
    if continent(a[0]) != continent(b[0]):
        return CONTINENT_HOP_MIN
    return ZONE_HOP_MIN


def obj_min(o):
    if o.get("inside"):
        return 0.0
    if o["kind"] == "item" and o.get("vendor"):
        return 1.5
    return OBJ_MIN.get(o["kind"], 3.0)


def steps_minutes(steps, level, start=None):
    """walk a router step list: travel between steps + talking + objectives"""
    t, pos = 0.0, start
    for st in steps:
        loc = st.get("loc")
        t += travel_min(pos, loc, level)
        pos = loc or pos
        if st["type"] in ("accept", "turnin"):
            t += TALK_MIN * len(st["quests"])
        elif st["type"] == "obj":
            t += sum(obj_min(o) for _, o in st["items"])
    return t


def quest_minutes(i, level):
    """cost of one quest on its own (router quest_info dict): objectives + half of the detour to them"""
    t = 1.0 + sum(obj_min(o) for o in i["objs"])
    start = i["start"][2] if i.get("start") else None
    end = (i.get("end") or i.get("start") or (None, None, None))[2]
    objloc = i.get("objloc") or start
    t += 0.5 * (travel_min(start, objloc, level) + travel_min(objloc, end, level))
    if i.get("item_start"):
        t += 3.0
    return t


def fmt_min(m):
    m = int(round(m / 5.0) * 5) or 5
    if m < 60:
        return f"{m} min"
    h, r = divmod(m, 60)
    return f"{h} h {r} min" if r else f"{h} h"
