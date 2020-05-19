component 
    extends="models.ingredient.sauce"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Marinara";

        return this;
        
    }

}