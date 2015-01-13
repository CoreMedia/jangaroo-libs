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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Error Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "Error")]
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
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Error-method-getMessage Sencha Docs Ext JS 3.4
   */
  public native function getMessage():String;

  /**
   * getName
   *
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Error-method-getName Sencha Docs Ext JS 3.4
   */
  public native function getName():String;

  /**
   * toJson
   *
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Error-method-toJson Sencha Docs Ext JS 3.4
   */
  public native function toJson():String;

}
}
    