shared void hello(String name = "World") {
    print("Hello, `` name ``!");
}

"Run the module `hello`." 
shared void run(){
    if (nonempty args=process.arguments) {
        for (arg in args) {
            hello(arg);
        }
    }
    else {
        hello();
    }
}
