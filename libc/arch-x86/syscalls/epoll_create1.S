/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(epoll_create1)
    pushl   %ebx
    .cfi_def_cfa_offset 8
    .cfi_rel_offset ebx, 0
    mov     8(%esp), %ebx
    movl    $__NR_epoll_create1, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno_internal
    addl    $4, %esp
1:
    popl    %ebx
    ret
END(epoll_create1)
