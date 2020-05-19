component 
    extends="models.ingredient.dough"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Thin Crust";

        return this;

    }

}