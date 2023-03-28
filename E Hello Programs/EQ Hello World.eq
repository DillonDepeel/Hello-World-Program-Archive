SomeContext = {
  a = { 42.333; }

}

SomeContext:find a {
if ("hello world"){
  print("inside: if!\n");
  }
else if ("hello world") {
  print("inside: else if!\n");
  }
}
