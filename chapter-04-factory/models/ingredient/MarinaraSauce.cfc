component 
    extends="models.ingredient.ingredient"
    implements="models.ingredient.iSauce"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Marinara";

        return this;
        
    }

}