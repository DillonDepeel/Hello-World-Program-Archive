PROGRAM
  MAP
  END 
  MyWindow  WINDOW('greetings'),AT(,,185,92),FONT('Arial',9,,FONT:regular),GRAY
      BUTTON('OK'),AT(144,10,35,14),USE(?OkButton),DEFAULT
      STRING('Hello World!'),AT(17,39),USE(?String1)
    END 
  CODE 
  OPEN(MyWindow)
  ACCEPT
    CASE FIELD()
    OF ?OkButton
      CLOSE(MyWindow)
    END
  END 
