package ext.data {


/**
 * Writer that outputs model data in JSON format

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.jsonwriter
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonWriter.html#cls-Ext.data.JsonWriter Ext JS source
 */
public class JsonWriter extends Writer {

  /**
   *
   *
   * @see ext.config.jsonwriter
   */
  public function JsonWriter() {
    super(null);
  }

  /**
   True to use Ext.encode() on the data before sending. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get encode():Boolean;

  /**
   The key under which the records in this Writer will be placed. Defaults to 'records'. Example generated request: <pre><code>{'records': [{name: 'my record'}, {name: 'another record'}]}
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get root():String;

}
}
    