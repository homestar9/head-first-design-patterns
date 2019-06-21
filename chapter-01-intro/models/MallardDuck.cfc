component
    extends="duck"
{

    function init() {
        variables.flyBehavior = new FlyWithWings();
        variables.quackBehavior = new Quack();
        return this;
    }

}