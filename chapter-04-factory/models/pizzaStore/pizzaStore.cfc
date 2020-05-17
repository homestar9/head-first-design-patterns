component
    hint="I am an abstract pizza store"
{

    function init() {
        return this;
    }

    /**
     * Order Pizza
     * This is the public API method which enables pizza ordering.
     * Side note: I think it would probably be better to have the store do the prepping, baking, etc... 
     * but in the book's example, the prep behavior exists in the pizza model iteslf.
     *
     * @type 
     */
    function orderPizza( required string type ) {
        
        var pizza = createPizza( arguments.type );
        
        // lets actually make the pizza
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();

        return pizza;

    }

    /**
     * Create Pizza
     * This method should be overriden by the concrete class using the factory pattern
     *
     * @type 
     */
    private function createPizza( required string type ) {
        throw( "This method should be implemented by a concrete class" );
    }

}