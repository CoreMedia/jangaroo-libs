package ext.config {


/**
 * DataWriter extension for writing an array or single <a href="Ext.data.Record.html">Ext.data.Record</a> object(s) in preparation for executing a remote CRUD action.
 * <p>This class serves as a typed config object for constructor of class JsonWriter.</p>
 *
 * @see ext.data.JsonWriter
 */
[ExtConfig(target="ext.data.JsonWriter")]
public class jsonwriter extends datawriter {

  public function jsonwriter(config:Object = null) {

    super(config);
  }


  /**
   <tt>true</tt> to <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">JSON encode</a> the <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">hashed data</a> into a standard HTTP parameter named after this Reader's <code>meta.root</code> property which, by default is imported from the associated Reader. Defaults to <tt>true</tt>.
   <p>If set to <code>false</code>, the hashed data is <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">JSON encoded</a>, along with the associated <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a>, into the POST body.</p><p>When using <a href="Ext.data.DirectProxy.html">Ext.data.DirectProxy</a>, set this to <tt>false</tt> since Ext.Direct.JsonProvider will perform its own json-encoding. In addition, if you're using <a href="Ext.data.HttpProxy.html">Ext.data.HttpProxy</a>, setting to <tt>false</tt> will cause HttpProxy to transmit data using the <b>jsonData</b> configuration-params of <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a> instead of <b>params</b>.</p><p>When using a <a href="output/Ext.data.Store.html#Ext.data.Store-restful">Ext.data.Store.restful</a> Store, some serverside frameworks are tuned to expect data through the jsonData mechanism. In those cases, one will want to set <b>encode: <tt>false</tt></b>, as in let the lower-level connection object (eg: Ext.Ajax) do the encoding.</p>
   */
  public native function get encode():Boolean;

  /**
   * @private
   */
  public native function set encode(value:Boolean):void;

  /**
   False to send only the id to the server on delete, true to encode it in an object literal, eg: <pre><code>{id: 1}
   </code></pre>Defaults to <tt>false</tt>
   */
  public native function get encodeDelete():Boolean;

  /**
   * @private
   */
  public native function set encodeDelete(value:Boolean):void;


}
}
    