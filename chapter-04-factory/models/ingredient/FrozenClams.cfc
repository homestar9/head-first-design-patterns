component 
    extends="models.ingredient.ingredient"
    implements="models.ingredient.iClams"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Frozen";

        return this;

    }

}