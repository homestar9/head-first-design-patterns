component 
    extends="models.BeverageDecorator"
    hint="I am a condiment. I extend the beverage decorator to update the description and price"
{
    
    function cost() {
        return beverage.cost() + 0.15;
    }

    function getDescription() {
        return beverage.getDescription() & ", soy";
    }

}