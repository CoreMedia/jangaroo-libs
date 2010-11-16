package ext {

/**
 * A base error class. Future implementations are intended to provide more
 * robust error handling throughout the framework (<b>in the debug build only</b>)
 * to check for common errors and problems. The messages issued by this class
 * will aid error checking. Error checks will be automatically removed in the
 * production build so that performance is not negatively impacted.
 * <p>Some sample messages currently implemented:</p><pre>
"DataProxy attempted to execute an API-action but found an undefined
url / function. Please review your Proxy url/api-configuration."
 * </pre><pre>
"Could not locate your "root" property in your server response.
Please review your JsonReader config to ensure the config-property
"root" matches the property your server-response.  See the JsonReader
docs for additional assistance."
 * </pre>
 * <p>An example of the code used for generating error messages:</p><pre><code>
try {
    generateError({
        foo: 'bar'
    });
}
catch (e) {
    console.error(e);
}
function generateError(data) {
    throw new ext.Error('foo-error', data);
}
 * </code></pre>
 */
public class ExtError extends Error {
  /**
   * @param message
   */
  public function ExtError(message : String = null) {
    super(message);
  }

  public var lang : String;

  /**
   * getName
   * @return 
   */
    public native function getName() : String;
    /**
     * getMessage
     * @return 
     */
    public native function getMessage() : String;
    /**
     * toJson
     * @return 
     */
    public native function toJson() : String;
}}
