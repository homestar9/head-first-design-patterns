component 
    extends="models.ingredient.ingredient"
    implements="models.ingredient.iPepperoni"
    hint="I am a concrete implementation of an ingredient"
{

    function init() {
        
        variables.name = "Sliced";

        return this;

    }

}