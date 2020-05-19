component
    extends="models.pizza.pizza"
    hint="I am a concrete implementation of a pizza"
{
    
    function init( required iPizzaIngredientFactory ingredientFactory ) {
        
        variables.ingredientFactory = arguments.ingredientFactory;
        variables.name = "Veggie Pizza";

        return this;

    }

    void function prepare() {

        output( "Preparing " & getName() );
        
        variables.dough = ingredientFactory.createDough();
        variables.sauce = ingredientFactory.createSauce();
        variables.cheese = ingredientFactory.createCheese();
        variables.veggies = ingredientFactory.createVeggies();

    }

}