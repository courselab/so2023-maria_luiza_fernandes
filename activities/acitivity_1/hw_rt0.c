extern void __END_STACK__;

void __attribute__((naked)) _start()
{
__asm__
(
"    mov  $__END_STACK__ , %sp  \n"
"    call main                  \n"
"halt:                          \n"
"                               \n"
"             jmp halt          \n"
);
}
