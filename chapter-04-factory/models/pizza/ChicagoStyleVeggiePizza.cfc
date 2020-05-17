component
    extends="models.pizza.pizza"
    hint="I am a concrete implementation of a chicago style pizza"
{

    function init() {
        
        variables.name = "Chicago Style Cheese Pizza";
        variables.dough = "Extra Thick Crust Pizza";
        variables.sauce = "Plum Tomato Sauce";

        variables.toppings = [ 
            "Shredded mozzarella cheese",
            "Peppers",
            "Tomatoes",
            "Onions"
        ]; 

        return this;

    }


    void function cut() {
        output( "Cutting the pizza into square slices" );
    }

}