component
    extends="models.pizza.pizza"
    hint="I am a concrete implementation of a new york style pizza"
{

    function init() {
        
        variables.name = "NY Style Cheese Pizza";
        variables.dough = "Thin Crust Pizza";
        variables.sauce = "Marinara Sauce";

        variables.toppings = [];

        return this;

    }

}