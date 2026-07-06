"""
Recompiler configuration - section mappings and constants.

Target: Dead or Alive 3 (Title ID 0x54430001), Retail, XDK 3911.
Values from: py -3 tools/xbe_parser/xbe_parser.py ../doa3gamefiles/default.xbe

NOTE: the size field below is the *raw* (on-disk) size so that
va_to_file_offset never points past the end of the XBE file. BSS tails
(virtual size > raw size, e.g. in .data) resolve to None and are treated
as zero-initialized, which matches Xbox load behavior.
"""

# Section virtual address -> file offset mappings
SECTIONS = [
    # (name, va_start, raw_size, raw_addr)
    (".text",     0x00011000, 0x0019FDE0, 0x00001000),
    ("D3D",       0x001B0DE0, 0x0000F36C, 0x001A1000),
    ("D3DX",      0x001C35C0, 0x00002EC0, 0x001B1000),
    ("XGRPH",     0x001C64A0, 0x000005FC, 0x001B4000),
    ("DSOUND",    0x001C6AA0, 0x0001AEB4, 0x001B5000),
    ("PSGSFD00",  0x001E1AA0, 0x00003190, 0x001D0000),
    ("PSGSFD_I",  0x001E4C40, 0x000001F0, 0x001D4000),
    ("PSGSFD_B",  0x001E4E40, 0x000006C0, 0x001D5000),
    ("PSGSFD_P",  0x001E5500, 0x00000430, 0x001D6000),
    ("XPP",       0x001E5940, 0x0000779C, 0x001D7000),
    (".rdata",    0x001ED0E0, 0x0002C53C, 0x001DF000),
    (".data",     0x00219640, 0x001A8450, 0x0020C000),
    ("DOLBY",     0x00C27F60, 0x00006D84, 0x003B5000),
    ("$$XTIMAGE", 0x00C2ED00, 0x00002800, 0x003BC000),
]

TEXT_VA_START = 0x00011000
TEXT_VA_END = 0x001B0DE0     # end of .text = start of D3D section
RDATA_VA_START = 0x001ED0E0
RDATA_VA_END = 0x00219640    # start of .data
DATA_VA_START = 0x00219640
DATA_VA_END = 0x00C31500     # base (0x10000) + image size (0xC21500)
KERNEL_THUNK_ADDR = 0x001ED0E0
ENTRY_POINT = 0x001651A5


def va_to_file_offset(va):
    """Convert virtual address to XBE file offset."""
    for _, sec_va, sec_size, sec_raw in SECTIONS:
        if sec_va <= va < sec_va + sec_size:
            return va - sec_va + sec_raw
    return None


def is_code_address(va):
    """Check if VA is in an executable section (.text or XDK library sections)."""
    if TEXT_VA_START <= va < TEXT_VA_END:
        return True
    # XDK library sections also contain executable code
    for name, sec_va, sec_size, _ in SECTIONS:
        if name in (".text", ".rdata", ".data", "$$XTIMAGE"):
            continue  # skip data sections
        if sec_va <= va < sec_va + sec_size:
            return True
    return False


def is_data_address(va):
    """Check if VA is in .rdata or .data (including BSS)."""
    return RDATA_VA_START <= va <= DATA_VA_END
