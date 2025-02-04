#! /usr/bin/env python3

def custom_int_repr(n, p, cycle):
    if n <= 127:
        # is ascii representable
        p.text(f"{n} (0x{n:x}, 0b{n:b}, '{n:c}')")
    else:
        p.text(f"{n} (0x{n:x}, 0b{n:b})")
formatter = get_ipython().display_formatter.formatters['text/plain']
formatter.for_type(int, custom_int_repr)
