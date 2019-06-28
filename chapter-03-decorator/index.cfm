<cfscript>
// Order 1: Just a plain house blend coffee
beverage1 = new models.beverage.HouseBlend();
//writeDump( var="#beverage1.cost( )#", label="Beverage 1" );

// Order 2: a dark roast coffee with double mocha and whip please
beverage2 = new models.beverage.DarkRoast();
// this is how you decorate. Have the decorator "swallow" the original class
beverage2 = new models.condiment.Mocha( beverage2 ); 
beverage2 = new models.condiment.Mocha( beverage2 );
beverage2 = new models.condiment.Whip( beverage2 );

// Order 3L a houes blend with soy, mocha, and whip
beverage3 = new models.beverage.HouseBlend();
beverage3 = new models.condiment.Soy( beverage3 );
beverage3 = new models.condiment.Mocha( beverage3 );
beverage3 = new models.condiment.Whip( beverage3 );


// output the results
writeDump( {
    "Beverage1" = {
        "description" = beverage1.getDescription(),
        "cost" = beverage1.cost()
    },
    "Beverage2" = {
        "description" = beverage2.getDescription(),
        "cost" = beverage2.cost()
    },
    "Beverage3" = {
        "description" = beverage3.getDescription(),
        "cost" = beverage3.cost()
    },
} );


</cfscript>