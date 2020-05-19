component
    implements="iPizzaIngredientFactory"
    hint="A concrete ingredient factory that implements an interface"
{

    function init() {
        return this;
    }

    iDough function createDough() {
        return new models.ingredient.ThickCrustDough();
    }

    iSauce function createSauce() {
        return new models.ingredient.PlumTomatoSauce();
    }

    iCheese function createCheese() {
        return new models.ingredient.MozzarellaCheese();
    }

    array function createVeggies() {
        return [ "eggplant", "spinach", "olives", "red pepper" ];  // simplified for example sake
    }

    iPepperoni function createPepperoni() {
        return new models.ingredient.SlicedPepperoni();
    }

    iClams function createClams() {
        return new models.ingredient.FreshClams();
    }
}