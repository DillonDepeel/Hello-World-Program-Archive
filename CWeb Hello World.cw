
@c
@<Header files needed by the program@>@;
@#
main(void)
{
   @<Print the message |"hello, world"|@>@;
}

@ Naturally, we use |printf| to do the dirty work:

@<Print the message |"hello, world"|@>=
printf("hello, world\n");

@ The prototype for |printf| is in the standard
header, \.{<stdio.h>}.

@<Header files needed by the program@>=
#include <stdio.h>

@*Index.
