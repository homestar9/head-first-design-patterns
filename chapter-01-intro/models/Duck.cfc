component 
    hint="I am the abstract duck class"
{

    property name="flyBehavior" type="IFlyBehavior" required="true";
    property name="quackBehavior" type="IQuackBehavior" required="true";
    
    function init() {
        return this;
    }

    function setFlyBehavior( IFlyBehavior fb ) {
        variables.flyBehavior = arguments.fb;
    }

    function setQuackBehavior( IQuackBehavior qb ) {
        variables.quackBehavior = arguments.qb;
    }

    void function display() {

    }

    void function performFly() {
        flyBehavior.fly();
    }

    void function performQuack() {
        quackBehavior.quack();
    }

    void function swim() {
        writeDump( var="All ducks float, even decoys!", output="console" ); 
    }

}