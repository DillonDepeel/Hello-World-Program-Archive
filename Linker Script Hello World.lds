program hello; var p1, p2, a : int;
{
    a = 1; 
    p2 = a;
    p1 = 2.01;
    if (p1 > p2) {
        print("hello world");
        print(a, p2);
    } else {
        print("world");
        a = 3.0023;
    };
}
