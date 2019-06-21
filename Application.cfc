component {

    this.base = getDirectoryFromPath( getCurrentTemplatePath() );
    this.applicationName = hash( this.base );

}