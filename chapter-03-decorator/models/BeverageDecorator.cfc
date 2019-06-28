component
    extends="Beverage"
    hint="I am a beverage decorator. I inherit the type 'beverage' so other classes will treat me as such"
{

    property name="beverage" type="Beverage" getter="false" setter="false" hint="I am the beverage I am decorating";
    
    // Lets do things a little different than the book. OnInit automatically runs so lets set our beverage varable here
    function onInit( required Beverage beverage ) {
        variables.beverage = arguments.beverage;
    }
    
    function cost() {
        throw( "you must implement cost()" );
    }

    function getDescription() {
        throw( "you must implement getDescription()" );
    }

}