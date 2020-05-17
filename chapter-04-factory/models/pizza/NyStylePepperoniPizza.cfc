component
    extends="models.pizza"
    hint="I am a concrete implementation of a new york style pizza"
{

    function init() {
        
        variables.name = "NY Style Pepperoni Pizza";
        variables.dough = "Thin Crust Pizza";
        variables.sauce = "Marinara Sauce";

        variables.toppings = [ "Pepperoni" ];

        return this;

    }

}