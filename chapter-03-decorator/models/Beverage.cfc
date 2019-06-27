component 
    hint="I represent a generic beverage"
{

    property name="price" type="numeric" getter="false" setter="false";
    property name="size" type="numeric";
    property name="description" type="string";

    
    function init() {
        
        onInit();

        return this;

    }

    function onInit() {
        throw( "you can't instance a base class" );
    }


    function cost() {
        return 
    }

}