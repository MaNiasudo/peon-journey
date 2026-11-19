"""Tiny parser for Lua table literals (data only, never executes anything).

Supports: tables, strings ('', "", [[ ]]), numbers, nil/true/false, unary minus,
'+'/'-' between values, dotted names resolved through a resolver callback, and
indexing like a.b[1]. Function calls are evaluated only for a whitelist
(identity) so l10n("x") -> "x".
"""
import re

TOKEN_RE = re.compile(r"""
    (?P<ws>\s+|--\[(?P<eq>=*)\[.*?\](?P=eq)\]|--[^\n]*)
  | (?P<longstr>\[(?P<eq2>=*)\[.*?\](?P=eq2)\])
  | (?P<str>"(?:\\.|[^"\\\n])*"|'(?:\\.|[^'\\\n])*')
  | (?P<num>0[xX][0-9a-fA-F]+|\d+\.?\d*(?:[eE][+-]?\d+)?|\.\d+(?:[eE][+-]?\d+)?)
  | (?P<name>[A-Za-z_][A-Za-z_0-9]*)
  | (?P<op>\.\.|==|~=|<=|>=|[{}\[\]=,;.+\-*/()<>#:%^])
""", re.S | re.X)

ESC = {"n": "\n", "t": "\t", "r": "\r", "\\": "\\", '"': '"', "'": "'", "\n": "\n", "a": "\a", "b": "\b", "f": "\f", "v": "\v"}


def unescape(s):
    out, i = [], 0
    while i < len(s):
        c = s[i]
        if c == "\\" and i + 1 < len(s):
            n = s[i + 1]
            if n.isdigit():
                m = re.match(r"\d{1,3}", s[i + 1:])
                out.append(chr(int(m.group(0))))
                i += 1 + len(m.group(0))
                continue
            out.append(ESC.get(n, n))
            i += 2
            continue
        out.append(c)
        i += 1
    return "".join(out)


def tokenize(src):
    pos, toks = 0, []
    n = len(src)
    while pos < n:
        m = TOKEN_RE.match(src, pos)
        if not m:
            raise SyntaxError(f"bad char {src[pos]!r} at {pos}: {src[pos-40:pos+40]!r}")
        pos = m.end()
        kind = m.lastgroup
        if kind in ("ws", "eq"):
            continue
        val = m.group(kind)
        if kind == "longstr":
            eq = m.group("eq2")
            body = val[2 + len(eq):-(2 + len(eq))]
            if body.startswith("\n"):
                body = body[1:]
            toks.append(("str", body))
        elif kind == "str":
            toks.append(("str", unescape(val[1:-1])))
        elif kind == "num":
            v = int(val, 16) if val.lower().startswith("0x") else (float(val) if any(c in val for c in ".eE") else int(val))
            toks.append(("num", v))
        elif kind == "name":
            toks.append(("name", val))
        else:
            toks.append(("op", val))
    toks.append(("eof", None))
    return toks


class Parser:
    def __init__(self, toks, resolve):
        self.t = toks
        self.i = 0
        self.resolve = resolve

    def peek(self, k=0):
        return self.t[self.i + k]

    def take(self):
        tok = self.t[self.i]
        self.i += 1
        return tok

    def expect(self, val):
        tok = self.take()
        if tok[1] != val:
            raise SyntaxError(f"expected {val!r} got {tok!r} near token {self.i}")
        return tok

    def expr(self):
        v = self.unary()
        while self.peek()[0] == "op" and self.peek()[1] in ("+", "-", "*", ".."):
            op = self.take()[1]
            r = self.unary()
            if v is None or r is None:
                v = v if r is None else r
            elif op == "+":
                v = v + r
            elif op == "-":
                v = v - r
            elif op == "*":
                v = v * r
            else:
                v = f"{v}{r}"
        return v

    def unary(self):
        tok = self.peek()
        if tok == ("op", "-"):
            self.take()
            return -self.unary()
        return self.primary()

    def primary(self):
        kind, val = self.take()
        if kind in ("num", "str"):
            return val
        if kind == "op" and val == "{":
            return self.table()
        if kind == "op" and val == "(":
            v = self.expr()
            self.expect(")")
            return v
        if kind == "name":
            if val == "nil":
                return None
            if val == "true":
                return True
            if val == "false":
                return False
            path = [val]
            while True:
                p = self.peek()
                if p == ("op", "."):
                    self.take()
                    path.append(self.take()[1])
                elif p == ("op", "[") and self.peek(1)[0] in ("num", "str"):
                    self.take()
                    path.append(self.take()[1])
                    self.expect("]")
                elif p == ("op", "("):
                    self.take()
                    args = []
                    while self.peek() != ("op", ")"):
                        args.append(self.expr())
                        if self.peek() == ("op", ","):
                            self.take()
                    self.expect(")")
                    return args[0] if args else None
                else:
                    break
            return self.resolve(path)
        raise SyntaxError(f"unexpected {kind} {val!r} at token {self.i}")

    def table(self):
        arr, d = [], {}
        while True:
            tok = self.peek()
            if tok == ("op", "}"):
                self.take()
                break
            if tok == ("op", "["):
                self.take()
                k = self.expr()
                self.expect("]")
                self.expect("=")
                d[k] = self.expr()
            elif tok[0] == "name" and self.peek(1) == ("op", "="):
                self.take()
                self.take()
                d[tok[1]] = self.expr()
            else:
                arr.append(self.expr())
            if self.peek()[1] in (",", ";"):
                self.take()
        # positional entries take keys 1..n (nil holes keep their slot)
        for idx, v in enumerate(arr, 1):
            if v is not None:
                d[idx] = v
        return d


def parse_value(src, resolve, start=0):
    toks = tokenize(src[start:])
    p = Parser(toks, resolve)
    return p.expr()


def find_return_table(src, after):
    """Position of the '{' that follows the first 'return' after `after`."""
    i = src.find(after)
    if i < 0:
        return -1
    m = re.compile(r"\breturn\s*\{").search(src, i)
    return m.end() - 1 if m else -1
