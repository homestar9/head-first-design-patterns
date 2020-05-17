<cfscript>
/**
 * Output
 * This udf helps bridge the gap between Lucee and ACF by outputing a variable
 * directly to the console or to the browser.
 * When outputting to the browser, if the value is "simple", like a string, it will be output
 * in its own div
 * */
function output( required any value ) {

    if ( application.outputMode == "console" ) {

        writeDump(
            var = arguments.value,
            output = "console"
        );

    } else if ( isSimpleValue( arguments.value ) ) {
        writeOutput( "<div>#arguments.value#</div>" );
    } else {
        writeDump( arguments.value );
    }


}
</cfscript>