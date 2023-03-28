.assembly extern mscorlib
{
    .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
    .ver 4:0:0:0
}
.assembly GuoAssembly
{
    .ver 0:0:0:0
}
.module GuoModule
.class public GuoNameSpace.Program extends [mscorlib]System.Object
{
    .method public static void Show()
    {
        .entrypoint
        .maxstack 1

        ldstr "Hello World"
        call void [mscorlib]System.Console::WriteLine(string)
        call valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
        ret
    }
}
