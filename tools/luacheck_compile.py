"""Compile (never run) Lua files with Lua 5.1 to catch syntax errors. Usage: python luacheck_compile.py <files...>"""
import sys
from pathlib import Path
from lupa import lua51
L = lua51.LuaRuntime(register_eval=False)
compile_only = L.eval("function(src, name) local f, err = loadstring(src, name); if f then return 'ok' end; return err end")
bad = 0
for p in sys.argv[1:]:
    r = compile_only(Path(p).read_text(), "@" + Path(p).name)
    if r != "ok":
        bad += 1
        print(p, r)
print("checked", len(sys.argv) - 1, "files, errors:", bad)
