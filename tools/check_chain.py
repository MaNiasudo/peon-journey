"""Every #next / #include target must exist (group\\name or same-group name). Usage: check_chain.py <guide files...>"""
import re, sys
from pathlib import Path
names = {}
heads = []
for p in sys.argv[1:]:
    for b in re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", Path(p).read_text(errors="replace"), re.S):
        grp = name = None; nexts = []; incs = []; groups = []
        for line in b.splitlines():
            s = line.strip()
            m = re.match(r"#group\s+(.+?)(\s*<<.*)?$", s)
            if m:
                groups.append(m.group(1).strip())
                grp = grp or m.group(1).strip()
            m = re.match(r"#name\s+(.+)$", s)
            if m and not name: name = m.group(1).strip()
            if s.startswith("#next"): nexts.append(s[5:].split("<<")[0])
            if s.startswith("#include"): incs.append(s[8:].strip())
        if grp and name:
            for gg in groups:
                names.setdefault(gg, set()).add(name)
            heads.append((p, grp, name, nexts, incs, groups))
bad = 0
for p, grp, name, nexts, incs, groups in heads:
    for n in nexts:
        for t in [x.strip() for x in n.split(";") if x.strip()]:
            g, _, nm = t.rpartition("\\")
            if not any(nm in names.get(g or gg, set()) for gg in groups):
                bad += 1; print("DANGLING next", Path(p).name, "|", grp, "|", name, "->", t)
    for inc in incs:
        g, _, nm = inc.split("@")[0].rpartition("\\")
        if nm not in names.get(g or grp, set()):
            bad += 1; print("DANGLING include", Path(p).name, name, "->", inc)
print("guides", len(heads), "groups", len(names), "dangling", bad)
