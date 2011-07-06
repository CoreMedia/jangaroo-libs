package ext.data {


/**
 *
 * @see ext.config.directproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DirectProxy.html#cls-Ext.data.DirectProxy Ext JS source
 */
public class DirectProxy extends DataProxy {

  /**
   *
   *
   * @see ext.config.directproxy
   */
  public function DirectProxy() {
    super();
  }

  /**
   Defaults to <tt>undefined</tt>. A list of params to be executed server side. Specify the params in the order in which they must be executed on the server-side as either (1) an Array of String values, or (2) a String of params delimited by either whitespace, comma, or pipe. For example, any of the following would be acceptable:<pre><code>paramOrder: ['param1','param2','param3']
   paramOrder: 'param1 param2 param3'
   paramOrder: 'param1,param2,param3'
   paramOrder: 'param1|param2|param'
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get paramOrder():*;

  /**
   Send parameters as a collection of named arguments (defaults to <tt>true</tt>). Providing a <tt><a href="output/Ext.data.DirectProxy.html#Ext.data.DirectProxy-paramOrder">paramOrder</a></tt> nullifies this configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get paramsAsHash():Boolean;

  /**
   * DirectProxy implementation of <a href="output/Ext.data.DataProxy.html#Ext.data.DataProxy-doRequest">Ext.data.DataProxy.doRequest</a>
   *
   * @param action The crud action type (create, read, update, destroy)
   * @param rs If action is load, rs will be null
   * @param params An object containing properties which are to be used as HTTP parameters for the request to the remote server.
   * @param reader The Reader object which converts the data object into a block of Ext.data.Records.
   * @param callback <div class="sub-desc"><p>A function to be called after the request. The <tt>callback</tt> is passed the following arguments:</p><ul><li><tt>r</tt> : Ext.data.Record[] The block of Ext.data.Records.</li><li><tt>options</tt>: Options object from the action request</li><li><tt>success</tt>: Boolean success indicator</li></ul><br/><br/></div>
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the browser window.
   * @param arg An optional argument which is passed to the callback as its second parameter.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DirectProxy.html#method-Ext.data.DirectProxy-doRequest Ext JS source
   */
  protected native function doRequest(action:String, rs:*, params:Object, reader:DataReader, callback:Function, scope:Object, arg:Object):void;

  /**
   * Callback for read actions
   *
   * @param action [Ext.data.Api.actions.create|read|update|destroy]
   * @param trans The request transaction object
   * @param result Data object picked out of the server-response.
   * @param res The server response
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DirectProxy.html#method-Ext.data.DirectProxy-onRead Ext JS source
   */
  protected native function onRead(action:String, trans:Object, result:Object, res:Object):void;

  /**
   * Callback for write actions
   *
   * @param action [<a href="output/Ext.data.Api.html#Ext.data.Api-actions">create|read|update|destroy</a>]
   * @param trans The request transaction object
   * @param result Data object picked out of the server-response.
   * @param res The server response
   * @param rs The Store resultset associated with the action.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DirectProxy.html#method-Ext.data.DirectProxy-onWrite Ext JS source
   */
  protected native function onWrite(action:String, trans:Object, result:Object, res:Object, rs:*):void;

}
}
    