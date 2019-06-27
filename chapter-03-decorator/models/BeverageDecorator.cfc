component
    extends="Beverage"
    hint="I am a beverage decorator. I inherit the type 'beverage' so other classes will treat me as such"
{

    property name="beverage" type="Beverage" getter="false" setter="false" hint="I am the beverage I am decorating";
    
    function onInit( required Beverage beverage ) {
        variables.beverage = arguments.beverage;
    }
    
    function cost() {}

    function getDescription() {}

}