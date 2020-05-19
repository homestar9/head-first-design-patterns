component
    extends="models.pizzaStore.pizzaStore"
    hint="I am a concrete implementation of pizza store. I am known as a 'concrete creator'"
{
    
    /**
     * Create Pizza
     * This is the actual factory method which does the creating
     * First we instantiate the ingredient factory for this store and then we pass it in as a 
     * dependency for each type of pizza.  We then alter the name of the pizza to indicate the 
     * geographic origin/style.
     */
    private pizza function createPizza( required string type ) {

        var ingredientFactory = new models.ingredientFactory.ChicagoPizzaIngredientFactory();
        var pizza = "";
        
        switch ( arguments.type ) {
            
            case "cheese":
                pizza = new models.pizza.cheesePizza( ingredientFactory );
                break;

            case "pepperoni":
                pizza =  new models.pizza.pepperoniPizza( ingredientFactory );
                break;

            case "veggie":
                pizza =  new models.pizza.veggiePizza( ingredientFactory );
                break;

            case "clam":
                pizza = new models.pizza.clamPizza( ingredientFactory );
                break;

            default:
                throw( "I don't know how to make a #arguments.type# pizza. Maybe you can teach me?" );

        }

        pizza.setName( "Chicago Style " & pizza.getName() );
        return pizza;

    }


    void function cut() {
        output( "cutting the pizza into square slices" );
    }

}