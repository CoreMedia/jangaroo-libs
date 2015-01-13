package ext.data {
/**
 * Fires if an exception occurs in the Proxy during data loading. Note that this event is also relayed through <a href="Ext.data.Store.html">Ext.data.Store</a>, so you can listen for it directly on any Store instance.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>arg:Object</code>
 The callback's arg object passed to the <a href="output/Ext.data.MemoryProxy.html#Ext.data.MemoryProxy-load">load</a> function
 *       </li>

 *       <li>
 *           <code>null:Object</code>
 This parameter does not apply and will always be null for MemoryProxy
 *       </li>

 *       <li>
 *           <code>e:Error</code>
 The JavaScript Error object caught if the configured Reader could not read the data
 *       </li>

 * </ul>
 */
[Event(name="loadexception")]


/**
 * An implementation of Ext.data.DataProxy that simply passes the data specified in its constructor to the Reader when its load method is called.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.MemoryProxy Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "data.MemoryProxy")]
public class MemoryProxy extends DataProxy {

  /**
   *
   *
   * @param data The data object which the Reader uses to construct a block of Ext.data.Records.
   */
  public function MemoryProxy(data:Object) {
    super();
  }

  /**
   * MemoryProxy implementation of DataProxy#doRequest
   *
   * @param action
   * @param rs If action is load, rs will be null
   * @param params An object containing properties which are to be used as HTTP parameters for the request to the remote server.
   * @param reader The Reader object which converts the data object into a block of Ext.data.Records.
   * @param callback The function into which to pass the block of Ext.data.Records. The function must be passed <ul><li>The Record block object</li><li>The "arg" argument from the load function</li><li>A boolean success indicator</li></ul>
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the browser window.
   * @param arg An optional argument which is passed to the callback as its second parameter.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.MemoryProxy-method-doRequest Sencha Docs Ext JS 3.4
   */
  public native function doRequest(action:String, rs:*, params:Object, reader:DataReader, callback:Function, scope:Object, arg:Object):void;

}
}
    