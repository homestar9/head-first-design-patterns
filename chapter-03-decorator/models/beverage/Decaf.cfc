component 
    extends="models.Beverage"
    accessors="true"
{

    function onInit() {}

    function cost() {
        return 1.05;
    }

    function getDescription() {
        return "decaf coffee";
    }

}