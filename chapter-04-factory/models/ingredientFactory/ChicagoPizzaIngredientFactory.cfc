component
    implements="iPizzaIngredientFactory"
    hint="A concrete ingredient factory that implements an interface"
{

    function init() {
        return this;
    }

    Dough function createDough() {
        return new models.ingredient.ThickCrustDough();
    }

    Sauce function createSauce() {
        return new models.ingredient.PlumTomatoSauce();
    }

    Cheese function createCheese() {
        return new models.ingredient.MozzarellaCheese();
    }

    array function createVeggies() {
        return [ "eggplant", "spinach", "olives", "red pepper" ];  // simplified for example sake
    }

    Pepperoni function createPepperoni() {
        return new models.ingredient.SlicedPepperoni();
    }

    Clams function createClams() {
        return new models.ingredient.FreshClams();
    }
}