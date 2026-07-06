"""
Configuration constants for Dead or Alive 3 disassembly tool.

Defines address ranges, section boundaries, instruction classification,
and other constants used throughout the disassembler.

Values derived from: py -3 tools/xbe_parser/xbe_parser.py ../doa3gamefiles/default.xbe
  Title: Dead or Alive 3 (Title ID 0x54430001), Retail, XDK 3911
"""

# ============================================================
# XBE Memory Layout
# ============================================================

XBE_BASE_ADDRESS = 0x00010000
XBE_IMAGE_SIZE = 0x00C21500  # 12.13 MB

# Entry point (retail, XOR-decoded from 0xA8EA060E)
ENTRY_POINT = 0x001651A5

# Kernel thunk table start (in .rdata)
KERNEL_THUNK_ADDR = 0x001ED0E0

# ============================================================
# Section Definitions
# ============================================================

# Executable code sections (name, va_start, va_size)
# These are the sections we'll disassemble.
EXECUTABLE_SECTIONS = [
    (".text",    0x00011000, 0x0019FDE0),
    ("D3D",      0x001B0DE0, 0x000127CC),
    ("D3DX",     0x001C35C0, 0x00002EC8),
    ("XGRPH",    0x001C64A0, 0x000005FC),
    ("DSOUND",   0x001C6AA0, 0x0001AFE8),
    ("PSGSFD00", 0x001E1AA0, 0x00003190),
    ("PSGSFD_I", 0x001E4C40, 0x000001F0),
    ("PSGSFD_B", 0x001E4E40, 0x000006C0),
    ("PSGSFD_P", 0x001E5500, 0x00000430),
    ("XPP",      0x001E5940, 0x0000779C),
    ("DOLBY",    0x00C27F60, 0x00006D98),
]

# Data sections
DATA_SECTIONS = [
    (".rdata",    0x001ED0E0, 0x0002C54C),
    (".data",     0x00219640, 0x00A0E91C),
    ("$$XTIMAGE", 0x00C2ED00, 0x00002800),
]

# All sections by name for quick lookup
ALL_SECTIONS = {
    s[0]: {"va": s[1], "size": s[2]}
    for s in EXECUTABLE_SECTIONS + DATA_SECTIONS
}

# ============================================================
# Instruction Classification
# ============================================================

# x86 control flow instructions (mnemonic sets)
CALL_MNEMONICS = {"call"}
RET_MNEMONICS = {"ret", "retn", "retf"}
JMP_MNEMONICS = {"jmp"}
COND_JMP_MNEMONICS = {
    "jo", "jno", "jb", "jnb", "jnae", "jae", "jc", "jnc",
    "jz", "je", "jnz", "jne", "jbe", "jna", "ja", "jnbe",
    "js", "jns", "jp", "jpe", "jnp", "jpo",
    "jl", "jnge", "jge", "jnl", "jle", "jng", "jg", "jnle",
    "jcxz", "jecxz",
    "loop", "loope", "loopz", "loopne", "loopnz",
}
BRANCH_MNEMONICS = JMP_MNEMONICS | COND_JMP_MNEMONICS

# NOP-like instructions
NOP_MNEMONICS = {"nop"}

# Instructions that terminate a basic block
TERMINATOR_MNEMONICS = RET_MNEMONICS | JMP_MNEMONICS | COND_JMP_MNEMONICS

# ============================================================
# Function Detection
# ============================================================

# Standard MSVC x86 function prologue patterns (byte sequences)
# push ebp; mov ebp, esp
PROLOGUE_PUSH_EBP_MOV = bytes([0x55, 0x8B, 0xEC])
# push ebp; mov ebp, esp (with rex/other encoding)
PROLOGUE_PUSH_EBP_MOV_ALT = bytes([0x55, 0x89, 0xE5])

# CC padding byte (int 3 / debug break)
CC_PADDING = 0xCC

# Minimum CC padding run length to consider as function boundary
MIN_CC_RUN = 1

# ============================================================
# Function Detection Confidence Scores
# ============================================================

CONFIDENCE_KNOWN = 1.0       # Entry point, known addresses
CONFIDENCE_PROLOGUE = 0.95   # Standard prologue pattern
CONFIDENCE_CALL_TARGET = 0.90  # Destination of a call instruction
CONFIDENCE_CC_BOUNDARY = 0.85  # After CC padding run following ret

# ============================================================
# Disassembly Engine Settings
# ============================================================

# Chunk size for linear sweep (64 KB)
SWEEP_CHUNK_SIZE = 0x10000

# x86-32 mode
CS_MODE = 32

# ============================================================
# Output Settings
# ============================================================

# Default output directory (relative to tool root)
DEFAULT_OUTPUT_DIR = "tools/disasm/output"

# Maximum string length to extract from .rdata
MAX_STRING_LENGTH = 256

# Minimum string length to consider valid
MIN_STRING_LENGTH = 4

# ============================================================
# Cache Settings
# ============================================================

CACHE_FILENAME = ".disasm_cache.json"
CACHE_VERSION = 1
