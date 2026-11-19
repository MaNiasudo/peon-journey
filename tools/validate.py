"""Offline checks for RXP guide files, mirroring GuideLoader's line grammar.
Usage: python -I validate.py <rxp_functions.lua> <guide files...>"""
import re, sys
from pathlib import Path
funcs = set(re.findall(r"^function addon\.functions\.([A-Za-z_]+)\(", Path(sys.argv[1]).read_text(errors="replace"), re.M))
funcs |= set(re.findall(r'^addon\.functions\["([a-z_]+)"\]', Path(sys.argv[1]).read_text(errors="replace"), re.M))
NUM = re.compile(r"^-?\d+(\.\d+)?$")
errors = 0
for f in sys.argv[2:]:
    src = Path(f).read_text()
    blocks = re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", src, re.S)
    if not blocks or src.count("[[") != src.count("]]"):
        print(f, "bad long string"); errors += 1; continue
    for b in blocks:
        text = re.sub(r"--[^\r\n]*", "", b)
        header = {}
        in_step = False
        nsteps = 0
        for ln, line in enumerate(text.splitlines(), 1):
            line = line.strip()
            if not line:
                continue
            if line.startswith("step"):
                in_step = True; nsteps += 1; continue
            if not in_step:
                m = re.match(r"#(\S+)\s*(.*)", line)
                if m: header[m.group(1)] = m.group(2)
                elif not line.startswith("<<"):
                    print(f, ln, "junk header line", line); errors += 1
                continue
            body = re.sub(r"\s*<<\s*(.+)", "", line)
            body = re.sub(r"\s*>>\s*(.*)", "", body)
            if body.startswith("#") or body.startswith("+") or body.startswith("*") or body == "":
                continue
            m = re.match(r"^\.(\S+)\s*(.*)", body)
            if not m:
                print(f, ln, "unparsed line:", line[:100]); errors += 1; continue
            tag, args = m.group(1), [a for a in re.split(r"\s*,\s*", m.group(2)) if a]
            if tag not in funcs:
                print(f, ln, "unknown element", tag); errors += 1; continue
            if tag == "goto":
                if len(args) < 3 or not all(NUM.match(a) for a in args[:3]):
                    print(f, ln, "bad goto", line); errors += 1
            if tag in ("accept", "turnin", "isOnQuest", "isQuestTurnedIn", "isQuestComplete", "use") and (not args or not args[0].isdigit()):
                print(f, ln, "bad id", line); errors += 1
            if tag == "complete" and (len(args) < 2 or not args[0].isdigit() or not args[1].isdigit()):
                print(f, ln, "bad complete", line); errors += 1
            if tag == "skill" and (len(args) < 2 or not re.match(r"<?\d+", args[1])):
                print(f, ln, "bad skill", line); errors += 1
        for need in ("name", "group"):
            if need not in header:
                print(f, "missing header", need); errors += 1
        if "forever" not in header:
            print(f, "missing #forever"); errors += 1
        if nsteps == 0:
            print(f, "no steps"); errors += 1
print("errors:", errors)
sys.exit(1 if errors else 0)
