@isTest
private class HelloWorldTest {
  @isTest static void hello() {
    HelloWorld hello_world = new HelloWorld();
    String result = hello_world.hello();
  }
}
