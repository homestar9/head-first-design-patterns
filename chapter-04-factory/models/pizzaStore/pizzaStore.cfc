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
        bake( pizza );
        cut( pizza );
        box( pizza );

        return pizza;

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