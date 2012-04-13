package ext.data {
import ext.config.httpproxy;

/**
 * An implementation of <a href="Ext.data.DataProxy.html">Ext.data.DataProxy</a> that processes data requests within the same domain of the originating page.
 <p><b>Note</b>: this class cannot be used to retrieve data from a domain other than the domain from which the running page was served. For cross-domain requests, use a <a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a>.</p><p>Be aware that to enable the browser to parse an XML document, the server must set the Content-Type header in the HTTP response to "<tt>text/xml</tt>".</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.httpproxy
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy Sencha Docs Ext JS 3.4
 */
public class HttpProxy extends DataProxy {

  /**
   *
   *
   * @param conn An <a href="Ext.data.Connection.html">Ext.data.Connection</a> object, or options parameter to <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a>. <p>Note that if this HttpProxy is being used by a <a href="Ext.data.Store.html">Store</a>, then the Store's call to <a href="output/Ext.data.HttpProxy.html#Ext.data.HttpProxy-load">load</a> will override any specified <tt>callback</tt> and <tt>params</tt> options. In this case, use the Store's <a href="output/Ext.data.Store.html#Ext.data.Store-events">events</a> to modify parameters, or react to loading events. The Store's <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a> may also be used to pass parameters known at instantiation time.</p><p>If an options parameter is passed, the singleton <a href="Ext.Ajax.html">Ext.Ajax</a> object will be used to make the request.</p>
   * @see ext.config.httpproxy
   */
  public function HttpProxy(conn:httpproxy = null) {
    super(conn);
  }

  /**
   The Connection object (Or options parameter to <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a>) which this HttpProxy uses to make requests to the server. Properties of this object may be changed dynamically to change the way data is requested.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-property-conn Sencha Docs Ext JS 3.4
   */
  public native function get conn():Object;

  /**
   * @private
   */
  public native function set conn(value:Object):void;

  /**
   * Returns a callback function for a request. Note a special case is made for the read action vs all the others.
   *
   * @param action [create|update|delete|load]
   * @param rs The Store-recordset being acted upon
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-createCallback Sencha Docs Ext JS 3.4
   */
  public native function createCallback(action:String, rs:Array):void;

  /**
   * HttpProxy implementation of DataProxy#doRequest
   *
   * @param action The crud action type (create, read, update, destroy)
   * @param rs If action is load, rs will be null
   * @param params An object containing properties which are to be used as HTTP parameters for the request to the remote server.
   * @param reader The Reader object which converts the data object into a block of Ext.data.Records.
   * @param callback <div class="sub-desc"><p>A function to be called after the request. The <tt>callback</tt> is passed the following arguments:</p><ul><li><tt>r</tt> : Ext.data.Record[] The block of Ext.data.Records.</li><li><tt>options</tt>: Options object from the action request</li><li><tt>success</tt>: Boolean success indicator</li></ul><br/><br/></div>
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the browser window.
   * @param arg An optional argument which is passed to the callback as its second parameter.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-doRequest Sencha Docs Ext JS 3.4
   */
  protected native function doRequest(action:String, rs:*, params:Object, reader:DataReader, callback:Function, scope:Object, arg:Object):void;

  /**
   * Return the <a href="Ext.data.Connection.html">Ext.data.Connection</a> object being used by this Proxy.
   *
   * @return The Connection object. This object may be used to subscribe to events on a finer-grained basis than the DataProxy events.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-getConnection Sencha Docs Ext JS 3.4
   */
  public native function getConnection():Connection;

  /**
   * Callback for read action
   *
   * @param action Action name as per <a href="output/Ext.data.Api.actions.html#Ext.data.Api.actions-read">Ext.data.Api.actions.read</a>.
   * @param o The request transaction object
   * @param res The server response
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-onRead Sencha Docs Ext JS 3.4
   */
  protected native function onRead(action:String, o:Object, res:Object):void;

  /**
   * Callback for write actions
   *
   * @param action [Ext.data.Api.actions.create|read|update|destroy]
   * @param trans The request transaction object
   * @param res The server response
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-onWrite Sencha Docs Ext JS 3.4
   */
  protected native function onWrite(action:String, trans:Object, res:Object):void;

  /**
   * Used for overriding the url used for a single request. Designed to be called during a beforeaction event. Calling setUrl will override any urls set via the api configuration parameter. Set the optional parameter makePermanent to set the url for all subsequent requests. If not set to makePermanent, the next request will use the same url or api configuration defined in the initial proxy configuration.
   *
   * @param url
   * @param makePermanent [false] (e.g.: beforeload, beforesave, etc).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.HttpProxy-method-setUrl Sencha Docs Ext JS 3.4
   */
  public native function setUrl(url:String, makePermanent:Boolean = false):void;

}
}
    