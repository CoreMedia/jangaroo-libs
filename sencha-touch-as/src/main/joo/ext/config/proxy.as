package ext.config {


/**
 * Proxies are used by <a href="Ext.data.Store.html">Stores</a> to handle the loading and saving of <a href="Ext.data.Model.html">Model</a> data. Usually developers will not need to create or interact with proxies directly.
 <p><u>Types of Proxy</u></p><p>There are two main types of Proxy - <a href="Ext.data.ClientProxy.html">Client</a> and <a href="Ext.data.ServerProxy.html">Server</a>. The Client proxies save their data locally and include the following subclasses:</p><ul style="list-style-type: disc; padding-left: 25px"><li><a href="Ext.data.LocalStorageProxy.html">LocalStorageProxy</a> - saves its data to localStorage if the browser supports it</li><li><a href="Ext.data.SessionStorageProxy.html">SessionStorageProxy</a> - saves its data to sessionStorage if the browsers supports it</li><li><a href="Ext.data.MemoryProxy.html">MemoryProxy</a> - holds data in memory only, any data is lost when the page is refreshed</li></ul><p>The Server proxies save their data by sending requests to some remote server. These proxies include:</p><ul style="list-style-type: disc; padding-left: 25px"><li><a href="Ext.data.AjaxProxy.html">AjaxProxy</a> - sends requests to a server on the same domain</li><li><a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a> - uses JSON-P to send requests to a server on a different domain</li></ul><p>Proxies operate on the principle that all operations performed are either Create, Read, Update or Delete. These four operations are mapped to the methods <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-create">create</a>, <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-read">read</a>, <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-update">update</a> and <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-destroy">destroy</a> respectively. Each Proxy subclass implements these functions.</p><p>The CRUD methods each expect an <a href="Ext.data.Operation.html">Operation</a> object as the sole argument. The Operation encapsulates information about the action the Store wishes to perform, the <a href="Ext.data.Model.html">model</a> instances that are to be modified, etc. See the <a href="Ext.data.Operation.html">Operation</a> documentation for more details. Each CRUD method also accepts a callback function to be called asynchronously on completion.</p><p>Proxies also support batching of Operations via a <a href="Ext.data.Batch.html">batch</a> object, invoked by the <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-batch">batch</a> method.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Proxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Proxy
 */
[ExtConfig(target="ext.data.Proxy")]
public class proxy extends observable {

  public function proxy(config:Object = null) {

    super(config);
  }


  /**
   Comma-separated ordering 'create', 'update' and 'destroy' actions when batching. Override this to set a different order for the batched CRUD actions to be executed in. Defaults to 'create,update,destroy'
   */
  public native function get batchOrder():String;

  /**
   * @private
   */
  public native function set batchOrder(value:String):void;

  /**
   The default registered reader type. Defaults to 'json'
   */
  public native function get defaultReaderType():String;

  /**
   * @private
   */
  public native function set defaultReaderType(value:String):void;

  /**
   The default registered writer type. Defaults to 'json'
   */
  public native function get defaultWriterType():String;

  /**
   * @private
   */
  public native function set defaultWriterType(value:String):void;

  /**
   The name of the Model to tie to this Proxy. Can be either the string name of the Model, or a reference to the Model constructor. Required.
   */
  public native function get model():*;

  /**
   * @private
   */
  public native function set model(value:*):void;


}
}
    