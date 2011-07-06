package ext {


/**
 * A base error class. Future implementations are intended to provide more robust error handling throughout the framework (<b>in the debug build only</b>) to check for common errors and problems. The messages issued by this class will aid error checking. Error checks will be automatically removed in the production build so that performance is not negatively impacted.
 <p>Some sample messages currently implemented:</p><pre>"DataProxy attempted to execute an API-action but found an undefined
 url / function. Please review your Proxy url/api-configuration."
 </pre><pre>"Could not locate your "root" property in your server response.
 Please review your JsonReader config to ensure the config-property
 "root" matches the property your server-response.  See the JsonReader
 docs for additional assistance."
 </pre><p>An example of the code used for generating error messages:</p><pre><code>try {
 generateError({
 foo: 'bar'
 });
 }
 catch (e) {
 console.error(e);
 }
 function generateError(data) {
 throw new Ext.Error('foo-error', data);
 }
 </code></pre>
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Error.html#cls-Ext.Error Ext JS source
 */
public class ExtError extends Error {

  /**
   *
   *
   */
  public function ExtError() {
    super();
  }

  /**
   * getMessage
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Error.html#method-Ext.Error-getMessage Ext JS source
   */
  public native function getMessage():String;

  /**
   * getName
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Error.html#method-Ext.Error-getName Ext JS source
   */
  public native function getName():String;

  /**
   * toJson
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Error.html#method-Ext.Error-toJson Ext JS source
   */
  public native function toJson():String;

}
}
    