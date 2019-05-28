component
    extends="duck"
{

    function init() {
        variables.flyBehavior = new FlyNoWay();
        variables.quackBehavior = new Quack();
        return this;
    }

    function display() {
        writeDump( var="I am a model duck", output="console" );
    }

}