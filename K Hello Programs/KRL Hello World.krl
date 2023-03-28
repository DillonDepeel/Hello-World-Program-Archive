ruleset hello_world {
  meta {
    name "Hello World"
    description <<
A first ruleset for the Quickstart
>>
    author "Phil Windley"
    logging on
    shares hello, __testing
  }
   
  global {
    hello = function(obj) {
      msg = "Hello " + obj;
      msg
    }
    __testing = { "queries": [ { "name": "hello", "args": [ "obj" ] },
                           { "name": "__testing" } ],
              "events": [ { "domain": "echo", "type": "monkey","attrs":["name"] } ]
            }
  }
   
  rule hello_world {
    select when echo hello
    send_directive("say", {"something": "Hello World"})
  }
  rule hello_monkey{
    select when echo monkey
    pre{
      //name=(event:attr("name")=>event:attr("name")|"Monkey").klog("name used:")
      name=event:attr("name").defaultsTo("monkey").klog("name used")
    }
    
    send_directive("say",{"something":"Hello " +name})
  }
   
}
