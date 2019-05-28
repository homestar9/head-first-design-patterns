<cfscript>

// Create a mallard duck and have it quack + fly
mallard = new models.MallardDuck();
mallard.performQuack();
mallard.performFly();

// create a model duck, make it fly, and then assign rocket flying
model = new models.ModelDuck();
model.performFly();
model.setFlyBehavior( new models.FlyRocketPowered() );
model.performFly();
</cfscript>