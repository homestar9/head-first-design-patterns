component 
    implements="models.IObserver"
    accessors="true"
{

    property name="temperature" type="numeric" getter="true" setter="false";
    property name="humidity" type="numeric" getter="true" setter="false";


    
    function init( WeatherData weatherData ) {

        // register myself with the subject
        arguments.weatherData.registerObserver( this );

        return this;

    }


    function update( iSubject subject, args ) {

        if ( isInstanceOf( arguments.subject , "WeatherData" ) ) {
        
            writeDump(
                var = "Observer received an update!",
                output = "console"
            );
            
            variables.temperature = arguments.subject.getTemperature();
            variables.humidity = arguments.subject.getHumidity();

            display();

        }

    }


    function display() {

        writeDump(
            var = "Current Conditions: #getTemperature()# degrees and #getHumidity()# humidity.",
            output = "console"
        );

    }


}