component 
    implements="models.ISubject"
    hint="I am the subject base class. Subjects are able to register observers and notify them when changed"
{

    function init() {

        // establish our observer colection. This array will hold a list of observers
        variables.observerList = [];
        variables.changed = false;

        onInit(
            argumentCollection = arguments
        );

        return this;

    }

    // override this method to use any custom init functionality
    private function onInit() {}
    
    

    /**
     * Register observer
     * Adds an observer to the collection
     * 
     * @observer
     */
    void function registerObserver( required IObserver observer ) {
        
        writeDump(
            var = "Registering an observer: #getMetaData( arguments.observer ).name#",
            output = "console"
        );
        
        observerList.append( arguments.observer );
    }



    /**
     * De Register Observer
     * Removes an observer from the collection
     *
     * @observer 
     */
    void function deRegisterObserver( required IObserver observer ) {
        
        var observerToRemove = arguments.observer;
        
        observerList.filter( function( item, index ) {

            // if the item in our array matches the one we want to remove, return false
            if ( item == observerToRemove ) {
                return false;
            }

            return true;

        } );

    }


    /**
     * Indicates that important data changed in the object
     */
    private void function setChanged() {
        changed = true;
    }


    private void function notifyObservers( any arg={} ) {

        // establish a local variable, becuase the member function will override the arguments scope
        var data = arguments.arg;
        
        if ( changed ) {

            writeDump(
                var = "Subject is notifying observers about a change",
                output = "console"
            );
            
            observerList.each( function( observer, index ) {
                
                writeDump(
                    var = "Notifying observer: #getMetaData( observer ).name#",
                    output = "console"
                );
                
                observer.update( this, data );
                
            } );

            // reset changed
            changed = false;

        }
        

    } 
    
}