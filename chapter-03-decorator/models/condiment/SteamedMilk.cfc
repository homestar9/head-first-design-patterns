component 
    extends="models.BeverageDecorator"
    hint="I am a condiment. I extend the beverage decorator to update the description and price"
{
    
    function onInit() {
        variables.addonPrice = 0.10; 
    }


    function cost() {

    }

}