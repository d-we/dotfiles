#! /usr/bin/env python3

def custom_int_repr(n, p, cycle):
    p.text(f"{n} (0x{n:x}, 0b{n:b})")
formatter = get_ipython().display_formatter.formatters['text/plain']
formatter.for_type(int, custom_int_repr)
