component {

    this.base = getDirectoryFromPath( getCurrentTemplatePath() );
    this.applicationName = hash( this.base );
    this.enableRobustException  = true;

    this.mappings[ "/local" ] = this.base;
    this.mappings[ "/models" ] = this.base & "models/";

    application.outputMode = "browser";

    include "../udf/output.cfm";

    url.output = output;

}