#! /usr/bin/env python3

def custom_int_repr(n, p, cycle):
    if 0 <= n <= 127:
        # is ascii representable
        p.text(f"{n} (0x{n:x}, 0b{n:b}, '{n:c}')")
    else:
        p.text(f"{n} (0x{n:x}, 0b{n:b})")

def default_repr(v, p , cycle):
    p.text(repr(v))

builtin_types = [
        bytes,
        bytearray,
        dict,
        list,
        set,
        slice,
        tuple]

formatter = get_ipython().display_formatter.formatters['text/plain']
formatter.for_type(int, custom_int_repr)
for t in builtin_types:
    formatter.for_type(t, default_repr)

