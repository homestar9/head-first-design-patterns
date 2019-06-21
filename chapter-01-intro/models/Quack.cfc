component
    implements="IQuackBehavior"
    hint="I quack like a duck"
{

    void function quack() {
        writeDump( var="Quack", output="console" );
    }

}