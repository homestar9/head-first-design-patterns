component 
    extends="models.ingredient.ingredient"
    implements="models.ingredient.iDough"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Thin Crust";

        return this;

    }

}