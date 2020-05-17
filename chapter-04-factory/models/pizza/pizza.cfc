component 
    hint="I am an abstract pizza class. Never instantiate me."
    accessors="true"
{

    property name="name";
    property name="dough";
    property name="sauce";
    property name="toppings" type="array";


    function init() {
        throw( "you cannot instantiate an abstract class" );
    }


    void function addTopping( required string topping ) {
        variables.toppings.append( arguments.topping );
    }


    void function prepare() {

        output( "Preparing " & getName() );
        output( "Tossing " & getDough() & " Dough" );
        output( "Adding  " & getSauce() & " Sauce" );

        getToppings().each( function( topping ) {
            output( "Adding a topping: " & topping );
        } );

    }


    void function bake() {
        output( "bake for 25 minutes at 350" );
    }


    void function cut() {
        output( "cutting the pizza into diagonal slices" );
    }


    void function box() {
        output( "place pizza in official pizza store box" );
    }

}   