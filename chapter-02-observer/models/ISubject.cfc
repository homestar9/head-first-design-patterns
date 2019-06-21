interface 
    hint="I am the subject. I manage and push events to registered observers"
{

    void function registerObserver( required IObserver observer );

    void function deRegisterObserver( required IObserver observer );

}