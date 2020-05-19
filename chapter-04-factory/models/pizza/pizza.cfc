component 
    hint="I am an abstract pizza class. Never instantiate me."
    accessors="true"
{

    property name="name";
    property name="dough" type="Ingredient";
    property name="sauce" type="Ingredient";
    property name="veggies" type="array";
    property name="pepperoni" type="Ingredient";
    property name="clams" type="Ingredient"
    
    property name="ingredientFactory" type="iPizzaIngredientFactory";


    function init() {
        throw( "you cannot instantiate an abstract class" );
    }


    void function prepare() {
        throw( "I should be implemented at the concrete level" )
    }

}   