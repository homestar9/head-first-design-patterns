component
    implements="IQuackBehavior"
    hint="I don't quack"
{

    void function quack() {
        writeDump( var="(silence)", output="console" );
    }

}