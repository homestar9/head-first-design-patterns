component 
    extends="models.ingredient.pepperoni"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Sliced";

        return this;

    }

}