 PROGRAM hello
        CHARACTER*16 b
        PARAMETER (b = "PARAMETER")
        CHARACTER*16 a

        CHARACTER*16 c

        a = ("Hello"//"World")
        a = a(4:7)
        a = b(4:7)
        PRINT *, a
      END PROGRAM hello
