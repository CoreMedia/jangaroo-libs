package ext.data {
/**
 * DataWriter extension for writing an array or single <a href="Ext.data.Record.html">Ext.data.Record</a> object(s) in preparation for executing a remote CRUD action.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.jsonwriter
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonWriter Sencha Docs Ext JS 3.4
 */
[Native]
public class JsonWriter extends DataWriter {

  /**
   *
   *
   * @see ext.config.jsonwriter
   */
  public function JsonWriter() {
    super(null, null);
  }

  /**
   <tt>true</tt> to <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">JSON encode</a> the <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">hashed data</a> into a standard HTTP parameter named after this Reader's <code>meta.root</code> property which, by default is imported from the associated Reader. Defaults to <tt>true</tt>.
   <p>If set to <code>false</code>, the hashed data is <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">JSON encoded</a>, along with the associated <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a>, into the POST body.</p><p>When using <a href="Ext.data.DirectProxy.html">Ext.data.DirectProxy</a>, set this to <tt>false</tt> since Ext.Direct.JsonProvider will perform its own json-encoding. In addition, if you're using <a href="Ext.data.HttpProxy.html">Ext.data.HttpProxy</a>, setting to <tt>false</tt> will cause HttpProxy to transmit data using the <b>jsonData</b> configuration-params of <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a> instead of <b>params</b>.</p><p>When using a <a href="output/Ext.data.Store.html#Ext.data.Store-restful">Ext.data.Store.restful</a> Store, some serverside frameworks are tuned to expect data through the jsonData mechanism. In those cases, one will want to set <b>encode: <tt>false</tt></b>, as in let the lower-level connection object (eg: Ext.Ajax) do the encoding.</p>
   */
  public native function get encode():Boolean;

  /**
   False to send only the id to the server on delete, true to encode it in an object literal, eg: <pre><code>{id: 1}
   </code></pre>Defaults to <tt>false</tt>
   */
  public native function get encodeDelete():Boolean;

  /**
   * Implements abstract Ext.data.DataWriter#createRecord
   *
   * @param rec
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonWriter-method-createRecord Sencha Docs Ext JS 3.4
   */
  protected native function createRecord(rec:Record):Object;

  /**
   * Implements abstract Ext.data.DataWriter#destroyRecord
   *
   * @param rec
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonWriter-method-destroyRecord Sencha Docs Ext JS 3.4
   */
  protected native function destroyRecord(rec:Record):Object;

  /**
   * This method should not need to be called by application code, however it may be useful on occasion to override it, or augment it with an <a href="output/Function.html#Function-createInterceptor">interceptor</a> or <a href="output/Function.html#Function-createSequence">sequence</a>.
   <p>The provided implementation encodes the serialized data representing the Store's modified Records into the Ajax request's <code>params</code> according to the <code><a href="output/Ext.data.JsonWriter.html#Ext.data.JsonWriter-encode">encode</a></code> setting.</p>
   *
   * @param baseParams as defined by <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">Ext.data.Store.baseParams</a>. The baseParms must be encoded by the extending class, eg: <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>, <a href="Ext.data.XmlWriter.html">Ext.data.XmlWriter</a>.
   * @param params Http params to be sent to server.
   * @param data object populated according to DataReader meta-data.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonWriter-method-render Sencha Docs Ext JS 3.4
   */
  override public native function render(baseParams:Object, params:Object, data:*):void;

  /**
   * Implements abstract Ext.data.DataWriter#updateRecord
   *
   * @param rec
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.JsonWriter-method-updateRecord Sencha Docs Ext JS 3.4
   */
  protected native function updateRecord(rec:Record):Object;

}
}
    