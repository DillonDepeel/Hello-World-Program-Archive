OutFile "HelloWorld.exe"
Name "Hello, world!"
Caption "Hello, world!"

Section Hello, world!
SectionEnd     

Function .onInit
      MessageBox MB_OK "Hello, world!"
      Quit
FunctionEnd
