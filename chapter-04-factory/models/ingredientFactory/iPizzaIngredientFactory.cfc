interface 
    hint="I define the ingredient factory interface which will make ingredients for a particular region"
{

    public Dough function createDough() {}
    public Sauce function createSauce() {}
    public Cheese function createCheese() {}
    public array function createVeggies() {}
    public Clams function createClams() {}

}