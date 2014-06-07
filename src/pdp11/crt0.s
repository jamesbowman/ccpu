# crt0 for GA144 soft PDP11
#
# The first 8 locations of memory are the registers R0-R7
# This crt0 saves a few words by putting the initialization
# code at 0 also - it is clobbered as soon as the real
# program uses R0-R5.

        .text
        .even
        mfpi    $0x5555         # Write 5555 to debug
        mfpi    $0xaaaa         # Write aaaa to debug
        jmp     _pdpmain        # That is main
        .word 64                # Initial SP, above top of RAM
        .word 0                 # Initial PC
