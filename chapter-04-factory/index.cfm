<cfscript>
writeOutput( "<h1>Chapter 4: Factory Pattern</h1>" );
writeOutput( "<p><a href=""../"">Go Back</a></p>" );

// instantiate two differrent pizza stores
nyStore = new models.pizzaStore.NyPizzaStore();
chicagoStore = new models.pizzaStore.ChicagoPizzaStore();


// order pizzas!
writeOutput( "<h2>New York Pizza</h2>" );
pizza = nyStore.orderPizza( "cheese" );
output( "Dave ordered a #pizza.getName()#" );

writeOutput( "<h2>Chicago Pizza</h2>" );
pizza = chicagoStore.orderPizza( "cheese" );
output( "Steve ordered a #pizza.getName()#" );
</cfscript>