component 
    extends="models.ingredient.ingredient"
    implements="models.ingredient.iCheese"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Reggiano";

        return this;
        
    }

}