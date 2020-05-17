component
    extends="models.pizzaStore.pizzaStore"
    hint="I am a concrete implementation of pizza store for NY. I am known as a 'concrete creator'"
{

    /**
     * Create Pizza
     * This is the actual factory method which does the creating
     */
    pizza private function createPizza( required string type ) {

        // this is the factory method which creates the pizza
        switch ( arguments.type ) {

            case "cheese":
                return new models.pizza.ChicagoStyleCheesePizza();

            case "pepperoni":
                return new models.pizza.ChicagoStylePepperoniPizza();

            case "veggie":
                return new models.pizza.ChicagoStyleVeggiePizza();

            default:
                throw( "I don't know how to make a #arguments.type# pizza. Maybe you can teach me?" );

        }

    }

}