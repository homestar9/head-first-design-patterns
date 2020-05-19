<cfscript>
writeOutput( "<h1>Chapter 4: Factory Pattern</h1>" );
writeOutput( "<p><a href=""../"">Go Back</a></p>" );

// instantiate two differrent pizza stores
nyStore = new models.pizzaStore.NyPizzaStore();
chicagoStore = new models.pizzaStore.ChicagoPizzaStore();


// order pizzas!
writeOutput( "<h2>New York Pizzas</h2>" );

writeOutput( "<h3>Cheese</h3>" );
pizza = nyStore.orderPizza( "cheese" );
output( "Dave ordered a #pizza.getName()#" );

writeOutput( "<h3>Pepperoni</h3>" );
pizza = nyStore.orderPizza( "pepperoni" );
output( "John ordered a #pizza.getName()#" );

writeOutput( "<h3>Veggie</h3>" );
pizza = nyStore.orderPizza( "veggie" );
output( "Tom ordered a #pizza.getName()#" );

writeOutput( "<h3>Clam</h3>" );
pizza = nyStore.orderPizza( "clam" );
output( "Carol ordered a #pizza.getName()#" );


writeOutput( "<h2>Chicago Pizza</h2>" );

writeOutput( "<h3>Cheese</h3>" );
pizza = chicagoStore.orderPizza( "cheese" );
output( "Steve ordered a #pizza.getName()#" );

writeOutput( "<h3>Pepperoni</h3>" );
pizza = chicagoStore.orderPizza( "pepperoni" );
output( "Mary ordered a #pizza.getName()#" );

writeOutput( "<h3>Veggie</h3>" );
pizza = chicagoStore.orderPizza( "veggie" );
output( "Mary ordered a #pizza.getName()#" );

writeOutput( "<h3>Clam</h3>" );
pizza = chicagoStore.orderPizza( "clam" );
output( "Mary ordered a #pizza.getName()#" );
</cfscript>