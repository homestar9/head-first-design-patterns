component 
    extends="models.ingredient.dough"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Thick Crust";

        return this;

    }

}