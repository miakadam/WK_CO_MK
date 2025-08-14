#!/usr/bin/env python3
"""
generate_dac_table.py

Generates a Markdown table for a 6-bit CDAC (Vref=1.2 V) and writes it to DAC6bit_Table.md.
"""

VREF = 1.2
N_BITS = 6
MAX_CODE = 2**N_BITS - 1

def format_row(code: int) -> str:
    bstr = format(code, f'0{N_BITS}b')
    vout = code / MAX_CODE * VREF
    return f"| {bstr} | {code:2d} | {vout:8.5f} |"

def main():
    header = [
        "# 6-bit CDAC Output Table",
        "",
        f"*Vref* = {VREF} V, codes = 0 … {MAX_CODE} (decimal)",
        "",
        "| Binary | Decimal | V<sub>out</sub> (V) |",
        "|:------:|:-------:|:------------------:|",
    ]
    rows = [format_row(i) for i in range(MAX_CODE+1)]
    with open("DAC6bit_Table.md", "w") as f:
        f.write("\n".join(header + rows) + "\n")
    print("Written DAC6bit_Table.md")

if __name__ == "__main__":
    main()
