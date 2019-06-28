component 
    extends="models.Beverage"
    accessors="true"
{

    function onInit() {}

    function cost() {
        return 1.99;
    }

    function getDescription() {
        return "Espresso";
    }

}