    ## Print Hello World
    
    .code16                         # Set 16-bit

    .global _start                  # Entry point

_start:

    movb $0xe, %ah                  # Move to BIOS

    movw $0x0, %bx                  # Acc for while

print:

    movb msg(%bx), %al              # Get current character

    cmp $0x0, %al                   # Condition for stop, loop ultil al is not 0x0

    je halt                         # If cmp is True, jump to halt

    int $0x10                       # Show information in screem

    add $0x1, %bx                   # Increase in acc

    jmp print                       # Return to the print begin

halt:

    hlt                             # Instruction halt
    
    jmp halt                        # Security command

msg:

    .string "Hello World!"          # Message to be show

    .fill 510 - (. - _start), 1, 0  # Fill with zeros

    .word 0xaa55                    # Boot signature
