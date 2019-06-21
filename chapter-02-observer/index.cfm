<cfscript>
writeDump(
    var = "Executing Observer Pattern #now()#",
    output = "console"
);

// instance the weather data
weatherData = new models.weather.WeatherData();

// instance the current conditions display
currentConditionsDisplay = new models.weather.CurrentConditionsDisplay( weatherData );
currentPressureDisplay = new models.weather.PressureDisplay( weatherData );

// assert: Everything is set up now.  We have our weather data subject and one or more observers listening for changes
// update the weather data
weatherData.setMeasurements(
    temperature = 100,
    humidity = 97,
    pressure = 25
);

// update the weather data again
weatherData.setMeasurements(
    temperature = 102,
    humidity = 98,
    pressure = 28
);

writeDump(
    var = "Done!",
    output = "console"
);
</cfscript>