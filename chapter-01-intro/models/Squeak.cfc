component
    implements="IQuackBehavior"
    hint="I squeak"
{

    void function quack() {
        writeDump( var="Squeak", output="console" );
    }

}