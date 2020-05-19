interface 
    hint="I define the ingredient factory interface which will make ingredients for a particular region"
{

    public iDough function createDough() {}
    public iSauce function createSauce() {}
    public iCheese function createCheese() {}
    public array function createVeggies() {}
    public iClams function createClams() {}

}