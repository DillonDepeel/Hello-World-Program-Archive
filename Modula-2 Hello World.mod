MODULE Hello;
IMPORT IO;

BEGIN
  IO.WrStr('Hello world!'); IO.WrLn;

(* Another way, showing some features of Modula-2 *)
  IO.WrStr("Hello");  (* either single or double quotes can be used *)
  IO.WrChar(40C);     (* character whose ASCII code is 40 octal *)
  IO.WrStr('world!');
  IO.WrLn();          (* procedure with no arguments: () is optional *)
END Hello.
