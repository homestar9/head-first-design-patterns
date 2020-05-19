component 
    extends="models.ingredient.cheese"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Reggiano";

        return this;
        
    }

}