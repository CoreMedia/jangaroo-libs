package ext.data {

import ext.config.proxy;
import ext.util.Observable;

/**
 * Proxies are used by <a href="Ext.data.Store.html">Stores</a> to handle the loading and saving of <a href="Ext.data.Model.html">Model</a> data. Usually developers will not need to create or interact with proxies directly.
 <p><u>Types of Proxy</u></p><p>There are two main types of Proxy - <a href="Ext.data.ClientProxy.html">Client</a> and <a href="Ext.data.ServerProxy.html">Server</a>. The Client proxies save their data locally and include the following subclasses:</p><ul style="list-style-type: disc; padding-left: 25px"><li><a href="Ext.data.LocalStorageProxy.html">LocalStorageProxy</a> - saves its data to localStorage if the browser supports it</li><li><a href="Ext.data.SessionStorageProxy.html">SessionStorageProxy</a> - saves its data to sessionStorage if the browsers supports it</li><li><a href="Ext.data.MemoryProxy.html">MemoryProxy</a> - holds data in memory only, any data is lost when the page is refreshed</li></ul><p>The Server proxies save their data by sending requests to some remote server. These proxies include:</p><ul style="list-style-type: disc; padding-left: 25px"><li><a href="Ext.data.AjaxProxy.html">AjaxProxy</a> - sends requests to a server on the same domain</li><li><a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a> - uses JSON-P to send requests to a server on a different domain</li></ul><p>Proxies operate on the principle that all operations performed are either Create, Read, Update or Delete. These four operations are mapped to the methods <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-create">create</a>, <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-read">read</a>, <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-update">update</a> and <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-destroy">destroy</a> respectively. Each Proxy subclass implements these functions.</p><p>The CRUD methods each expect an <a href="Ext.data.Operation.html">Operation</a> object as the sole argument. The Operation encapsulates information about the action the Store wishes to perform, the <a href="Ext.data.Model.html">model</a> instances that are to be modified, etc. See the <a href="Ext.data.Operation.html">Operation</a> documentation for more details. Each CRUD method also accepts a callback function to be called asynchronously on completion.</p><p>Proxies also support batching of Operations via a <a href="Ext.data.Batch.html">batch</a> object, invoked by the <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-batch">batch</a> method.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.proxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#cls-Ext.data.Proxy Ext JS source
 */
public class Proxy extends Observable {

  /**
   * Creates the Proxy
   *
   * @param config Optional config object
   * @see ext.config.proxy
   */
  public function Proxy(config:proxy) {
    super();
  }

  /**
   Comma-separated ordering 'create', 'update' and 'destroy' actions when batching. Override this to set a different order for the batched CRUD actions to be executed in. Defaults to 'create,update,destroy'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get batchOrder():String;

  /**
   The default registered reader type. Defaults to 'json'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultReaderType():String;

  /**
   The default registered writer type. Defaults to 'json'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultWriterType():String;

  /**
   * Performs a batch of <a href="Ext.data.Operation.html">Operations</a>, in the order specified by <a href="output/Ext.data.Proxy.html#Ext.data.Proxy-batchOrder">batchOrder</a>. Used internally by <a href="Ext.data.Store.html">Ext.data.Store</a>'s <a href="output/Ext.data.Store.html#Ext.data.Store-sync">sync</a> method. Example usage: <pre><code>myProxy.batch({
   create : [myModel1, myModel2],
   update : [myModel3],
   destroy: [myModel4, myModel5]
   });
   </code></pre>Where the myModel&#42; above are <a href="Ext.data.Model.html">Model</a> instances - in this case 1 and 2 are new instances and have not been saved before, 3 has been saved previously but needs to be updated, and 4 and 5 have already been saved but should now be destroyed.
   *
   * @param operations Object containing the Model instances to act upon, keyed by action name
   * @param listeners Optional listeners object passed straight through to the Batch - see <a href="Ext.data.Batch.html">Ext.data.Batch</a>
   * @return The newly created Ext.data.Batch object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-batch Ext JS source
   */
  public native function batch(operations:Object, listeners:Object):Batch;

  /**
   * Performs the given create operation.
   *
   * @param operation The Operation to perform
   * @param callback Callback function to be called when the Operation has completed (whether successful or not)
   * @param scope Scope to execute the callback function in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-create Ext JS source
   */
  public native function create(operation:Operation, callback:Function, scope:Object):void;

  /**
   * Performs the given destroy operation.
   *
   * @param operation The Operation to perform
   * @param callback Callback function to be called when the Operation has completed (whether successful or not)
   * @param scope Scope to execute the callback function in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-destroy Ext JS source
   */
  public native function destroy(operation:Operation, callback:Function, scope:Object):void;

  /**
   * Returns the model attached to this Proxy
   *
   * @return The model
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-getModel Ext JS source
   */
  public native function getModel():Model;

  /**
   * Returns the reader currently attached to this proxy instance
   *
   * @return The Reader instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-getReader Ext JS source
   */
  public native function getReader():Reader;

  /**
   * Returns the writer currently attached to this proxy instance
   *
   * @return The Writer instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-getWriter Ext JS source
   */
  public native function getWriter():Writer;

  /**
   * Performs the given read operation.
   *
   * @param operation The Operation to perform
   * @param callback Callback function to be called when the Operation has completed (whether successful or not)
   * @param scope Scope to execute the callback function in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-read Ext JS source
   */
  public native function read(operation:Operation, callback:Function, scope:Object):void;

  /**
   * Sets the model associated with this proxy. This will only usually be called by a Store
   *
   * @param model The new model. Can be either the model name string, or a reference to the model's constructor
   * @param setOnStore Sets the new model on the associated Store, if one is present
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-setModel Ext JS source
   */
  public native function setModel(model:*, setOnStore:Boolean):void;

  /**
   * Sets the Proxy's Reader by string, config object or Reader instance
   *
   * @param reader The new Reader, which can be either a type string, a configuration object or an Ext.data.Reader instance
   * @return The attached Reader object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-setReader Ext JS source
   */
  public native function setReader(reader:*):Reader;

  /**
   * Sets the Proxy's Writer by string, config object or Writer instance
   *
   * @param writer The new Writer, which can be either a type string, a configuration object or an Ext.data.Writer instance
   * @return The attached Writer object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-setWriter Ext JS source
   */
  public native function setWriter(writer:*):Writer;

  /**
   * Performs the given update operation.
   *
   * @param operation The Operation to perform
   * @param callback Callback function to be called when the Operation has completed (whether successful or not)
   * @param scope Scope to execute the callback function in
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Proxy.html#method-Ext.data.Proxy-update Ext JS source
   */
  public native function update(operation:Operation, callback:Function, scope:Object):void;

}
}
    