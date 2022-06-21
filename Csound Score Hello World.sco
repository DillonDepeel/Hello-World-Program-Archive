function hello(arg) {
    print("hello this : " + this)
    var lam = () => {
        print("world this : " + this)     
    }
    lam()
}
hello()
var tab = { name : "tab" }
tab.hello = hello
tab.hello(100)
