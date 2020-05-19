component
    implements="iPizzaIngredientFactory"
    hint="A concrete ingredient factory that implements an interface"
{

    function init() {
        return this;
    }

    iDough function createDough() {
        return new models.ingredient.ThinCrustDough();
    }

    iSauce function createSauce() {
        return new models.ingredient.MarinaraSauce();
    }

    iCheese function createCheese() {
        return new models.ingredient.ReggianoCheese();
    }

    array function createVeggies() {
        return [ "garlic", "onion", "mushrooms", "red pepper" ];  // simplified for example sake
    }

    iPepperoni function createPepperoni() {
        return new models.ingredient.SlicedPepperoni();
    }

    iClams function createClams() {
        return new models.ingredient.FreshClams();
    }
}