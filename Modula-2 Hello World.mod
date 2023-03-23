MODULE TypingHi;
  IMPORT Files;

  PROCEDURE WriteHelloWorld;
    VAR
      (* Define a file handle *)
      f : Files.File;
      (* Define a file rider *)
      r : Files.Rider;
  BEGIN
    (* Create our file, New returns a file handle *)
    f := Files.New("HelloWorld.txt");
    (* Register our file with the file system *)
    Files.Register(f);
    (* Set the position of the rider to the beginning *)
    Files.Set(r, f, 0);
    (* Use the rider to write out "Hello World!" *)
    Files.WriteString(r, "Hello World!");
    (* Write a end of line *)
    Files.Write(r, 10);
    (* Close our modified file *)
    Files.Close(f);
  END WriteHelloWorld;

  PROCEDURE ReadHelloWorld;
    VAR
      f : Files.File;
      r : Files.Rider;
      (* We need a string to store what we've read *)
      src : ARRAY 256 OF CHAR;
  BEGIN
    (* Create our file, New returns a file handle *)
    f := Files.Old("HelloWorld.txt");
    (* Set the position of the rider to the beginning *)
    Files.Set(r, f, 0);
    (* Use the rider to write out "Hello World!" *)
    Files.ReadString(r, src);
    (* Check the value we read, if it is not the name, 
       halt the program with an error *)
    ASSERT(src = "Hello World!");
  END ReadHelloWorld;

  PROCEDURE DeleteHelloWorld;
    VAR
      result : INTEGER;
  BEGIN
    (* Delete our file *)
    Files.Delete("HelloWorld.txt", result);
    (* Check our result, if not zero then hald program with error *)
    ASSERT(result = 0);
  END DeleteHelloWorld;

BEGIN
    WriteHelloWorld();
    ReadHelloWorld();
    DeleteHelloWorld();
END TypingHi.
