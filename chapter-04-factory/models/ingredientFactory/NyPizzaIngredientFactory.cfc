component
    implements="iPizzaIngredientFactory"
    hint="A concrete ingredient factory that implements an interface"
{

    function init() {
        return this;
    }

    Dough function createDough() {
        return new models.ingredient.ThinCrustDough();
    }

    Sauce function createSauce() {
        return new models.ingredient.MarinaraSauce();
    }

    Cheese function createCheese() {
        return new models.ingredient.ReggianoCheese();
    }

    array function createVeggies() {
        return [ "garlic", "onion", "mushrooms", "red pepper" ];  // simplified for example sake
    }

    Pepperoni function createPepperoni() {
        return new models.ingredient.SlicedPepperoni();
    }

    Clams function createClams() {
        return new models.ingredient.FreshClams();
    }
}