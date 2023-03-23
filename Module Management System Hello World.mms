%
% A minimal hello world example
%

#include <mm/print>
#include <mm/sys>

            .section .data,"wa",@progbits
            .balign 4
HelloString BYTE        "Hello World!",10,0

            .section .text,"xa",@progbits
t           IS          :MM:t
Main        GETA        t,HelloString
            PUSHJ       t,MM:Print:StrG
            PUSHJ       t,MM:Sys:Exit
