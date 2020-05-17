component
    extends="models.pizzaStore.pizzaStore"
    hint="I am a concrete implementation of pizza store for NY. I am known as a 'concrete creator'"
{
    
    /**
     * Create Pizza
     * This is the actual factory method which does the creating
     */
    pizza private function createPizza( required string type ) {

        switch ( arguments.type ) {

            case "cheese":
                return new models.pizza.NyStyleCheesePizza();

            case "pepperoni":
                return new models.pizza.NyStylePepperoniPizza();

            case "veggie":
                return new models.pizza.NyStyleVeggiePizza();

            default:
                throw( "I don't know how to make a #arguments.type# pizza. Maybe you can teach me?" );

        }

    }

}