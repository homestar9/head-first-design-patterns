component 
    extends="models.ingredient.clams"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Fresh";

        return this;

    }

}