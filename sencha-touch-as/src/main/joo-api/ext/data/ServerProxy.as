package ext.data {

import ext.form.Number;

/**
 * ServerProxy is a superclass of <a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a> and <a href="Ext.data.AjaxProxy.html">AjaxProxy</a>, and would not usually be used directly.
 <p>ServerProxy should ideally be named HttpProxy as it is a superclass for all HTTP proxies - for Ext JS 4.x it has been called ServerProxy to enable any 3.x applications that reference the HttpProxy to continue to work (HttpProxy is now an alias of AjaxProxy).</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.serverproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#cls-Ext.data.ServerProxy Ext JS source
 */
public class ServerProxy extends Proxy {

  /**
   *
   *
   * @see ext.config.serverproxy
   */
  public function ServerProxy() {
    super(null);
  }

  /**
   The name of the cache param added to the url when using noCache (defaults to "_dc")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cacheString():String;

  /**
   Extra parameters that will be included on every request. Individual requests with params of the same name will override these params when they are in conflict.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get extraParams():Object;

  /**
   The name of the 'filter' parameter to send in a request. Defaults to 'filter'. Set this to undefined if you don't want to send a filter parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get filterParam():String;

  /**
   The name of the 'group' parameter to send in a request. Defaults to 'group'. Set this to undefined if you don't want to send a group parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupParam():String;

  /**
   The name of the 'limit' parameter to send in a request. Defaults to 'limit'. Set this to undefined if you don't want to send a limit parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get limitParam():String;

  /**
   Defaults to true. Disable caching by adding a unique parameter name to the request.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get noCache():Boolean;

  /**
   The name of the 'page' parameter to send in a request. Defaults to 'page'. Set this to undefined if you don't want to send a page parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pageParam():String;

  /**
   The name of the 'sort' parameter to send in a request. Defaults to 'sort'. Set this to undefined if you don't want to send a sort parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortParam():String;

  /**
   The name of the 'start' parameter to send in a request. Defaults to 'start'. Set this to undefined if you don't want to send a start parameter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get startParam():String;

  /**
   The number of milliseconds to wait for a response. Defaults to 30 seconds.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get timeout():ext.form.Number;

  /**
   The URL from which to request the data object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

  /**
   * Optional callback function which can be used to clean up after a request has been completed.
   *
   * @param request The Request object
   * @param success True if the request was successful
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-afterRequest Ext JS source
   */
  public native function afterRequest(request:Request, success:Boolean):void;

  /**
   * Creates and returns an Ext.data.Request object based on the options passed by the <a href="Ext.data.Store.html">Store</a> that this Proxy is attached to.
   *
   * @param operation The <a href="Ext.data.Operation.html">Operation</a> object to execute
   * @return The request object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-buildRequest Ext JS source
   */
  public native function buildRequest(operation:Operation):Request;

  /**
   * Generates a url based on a given Ext.data.Request object. By default, ServerProxy's buildUrl will add the cache-buster param to the end of the url. Subclasses may need to perform additional modifications to the url.
   *
   * @param request The request object
   * @return The url
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-buildUrl Ext JS source
   */
  public native function buildUrl(request:Request):String;

  /**
   * In ServerProxy subclasses, the <a href="output/Ext.data.ServerProxy.html#Ext.data.ServerProxy-create">create</a>, <a href="output/Ext.data.ServerProxy.html#Ext.data.ServerProxy-read">read</a>, <a href="output/Ext.data.ServerProxy.html#Ext.data.ServerProxy-update">update</a> and <a href="output/Ext.data.ServerProxy.html#Ext.data.ServerProxy-destroy">destroy</a> methods all pass through to doRequest. Each ServerProxy subclass must implement the doRequest method - see <a href="Ext.data.ScriptTagProxy.html">Ext.data.ScriptTagProxy</a> and <a href="Ext.data.AjaxProxy.html">Ext.data.AjaxProxy</a> for examples. This method carries the same signature as each of the methods that delegate to it.
   *
   * @param operation The Ext.data.Operation object
   * @param callback The callback function to call when the Operation has completed
   * @param scope The scope in which to execute the callback
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-doRequest Ext JS source
   */
  public native function doRequest(operation:Operation, callback:Function, scope:Object):void;

  /**
   * Encodes the array of <a href="Ext.util.Filter.html">Ext.util.Filter</a> objects into a string to be sent in the request url. By default, this simply JSON-encodes the filter data
   *
   * @param sorters The array of <a href="Ext.util.Filter.html">Filter</a> objects
   * @return The encoded filters
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-encodeFilters Ext JS source
   */
  public native function encodeFilters(sorters:Array):String;

  /**
   * Encodes the grouping object (field and direction) into a string to be sent in the request url. Be default, this simply JSON-encodes the grouping data
   *
   * @param group The group configuration (field and direction)
   * @return The encoded group string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-encodeGroupers Ext JS source
   */
  public native function encodeGroupers(group:Object):String;

  /**
   * Encodes the array of <a href="Ext.util.Sorter.html">Ext.util.Sorter</a> objects into a string to be sent in the request url. By default, this simply JSON-encodes the sorter data
   *
   * @param sorters The array of <a href="Ext.util.Sorter.html">Sorter</a> objects
   * @return The encoded sorters
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-encodeSorters Ext JS source
   */
  public native function encodeSorters(sorters:Array):String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ServerProxy.html#method-Ext.data.ServerProxy-getParams Ext JS source
   */
  public native function getParams():void;

}
}
    