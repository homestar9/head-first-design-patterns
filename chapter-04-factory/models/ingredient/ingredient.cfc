component 
    hint="I am an abstract ingredient"
{

    property name="name";

    function init() {
        throw( "don't instantiate an abstract class!" );
    }

}