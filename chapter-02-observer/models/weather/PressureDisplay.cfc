component 
    implements="models.IObserver"
    accessors="true"
{

    property name="pressure" type="numeric" getter="true" setter="false";


    
    function init( WeatherData weatherData ) {

        // register myself with the subject
        arguments.weatherData.registerObserver( this );

        return this;

    }


    function update( iSubject subject, args ) {

        if ( isInstanceOf( arguments.subject , "WeatherData" ) ) {
        
            writeDump(
                var = "Observer received an update! #arguments.subject.getTemperature()#",
                output = "console"
            );
            
            variables.pressure = arguments.subject.getTemperature();

            display();

        }

    }


    function display() {

        writeDump(
            var = "Current Pressure: #getPressure()#.",
            output = "console"
        );

    }


}