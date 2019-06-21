component 
    extends="models.subject"
    accessors="true"
    hint="I represent the weather station that obtains weather data and distributes it to registered observers"
{

    property name="temperature" type="numeric" getter="true" setter="false";
    property name="humidity" type="numeric" getter="true" setter="false";
    property name="pressure" type="numeric" getter="true" setter="false";
    
    
    function onInit() { 

    }


    function setMeasurements(
        required numeric temperature,
        required numeric humidity,
        required numeric pressure
    ) {

        variables.temperature = arguments.temperature;
        variables.humidity = arguments.pressure;
        variables.pressure = arguments.pressure;

        measurementsChanged();

    }

    function measurementsChanged() {
        setChanged();
        notifyObservers();
    }



    
}