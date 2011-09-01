package ext.config {

import ext.form.Number;

/**
 * ServerProxy is a superclass of <a href="Ext.data.ScriptTagProxy.html">ScriptTagProxy</a> and <a href="Ext.data.AjaxProxy.html">AjaxProxy</a>, and would not usually be used directly.
 <p>ServerProxy should ideally be named HttpProxy as it is a superclass for all HTTP proxies - for Ext JS 4.x it has been called ServerProxy to enable any 3.x applications that reference the HttpProxy to continue to work (HttpProxy is now an alias of AjaxProxy).</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class ServerProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ServerProxy
 */
[ExtConfig(target="ext.data.ServerProxy")]
public class serverproxy extends proxy {

  public function serverproxy(config:Object = null) {

    super(config);
  }


  /**
   The name of the cache param added to the url when using noCache (defaults to "_dc")
   */
  public native function get cacheString():String;

  /**
   * @private
   */
  public native function set cacheString(value:String):void;

  /**
   Extra parameters that will be included on every request. Individual requests with params of the same name will override these params when they are in conflict.
   */
  public native function get extraParams():Object;

  /**
   * @private
   */
  public native function set extraParams(value:Object):void;

  /**
   The name of the 'filter' parameter to send in a request. Defaults to 'filter'. Set this to undefined if you don't want to send a filter parameter
   */
  public native function get filterParam():String;

  /**
   * @private
   */
  public native function set filterParam(value:String):void;

  /**
   The name of the 'group' parameter to send in a request. Defaults to 'group'. Set this to undefined if you don't want to send a group parameter
   */
  public native function get groupParam():String;

  /**
   * @private
   */
  public native function set groupParam(value:String):void;

  /**
   The name of the 'limit' parameter to send in a request. Defaults to 'limit'. Set this to undefined if you don't want to send a limit parameter
   */
  public native function get limitParam():String;

  /**
   * @private
   */
  public native function set limitParam(value:String):void;

  /**
   Defaults to true. Disable caching by adding a unique parameter name to the request.
   */
  public native function get noCache():Boolean;

  /**
   * @private
   */
  public native function set noCache(value:Boolean):void;

  /**
   The name of the 'page' parameter to send in a request. Defaults to 'page'. Set this to undefined if you don't want to send a page parameter
   */
  public native function get pageParam():String;

  /**
   * @private
   */
  public native function set pageParam(value:String):void;

  /**
   The Ext.data.Reader to use to decode the server's response. This can either be a Reader instance, a config object or just a valid Reader type name (e.g. 'json', 'xml').
   */
  public native function get reader():*;

  /**
   * @private
   */
  public native function set reader(value:*):void;

  /**
   The name of the 'sort' parameter to send in a request. Defaults to 'sort'. Set this to undefined if you don't want to send a sort parameter
   */
  public native function get sortParam():String;

  /**
   * @private
   */
  public native function set sortParam(value:String):void;

  /**
   The name of the 'start' parameter to send in a request. Defaults to 'start'. Set this to undefined if you don't want to send a start parameter
   */
  public native function get startParam():String;

  /**
   * @private
   */
  public native function set startParam(value:String):void;

  /**
   The number of milliseconds to wait for a response. Defaults to 30 seconds.
   */
  public native function get timeout():ext.form.Number;

  /**
   * @private
   */
  public native function set timeout(value:ext.form.Number):void;

  /**
   The URL from which to request the data object.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   The Ext.data.Writer to use to encode any request sent to the server. This can either be a Writer instance, a config object or just a valid Writer type name (e.g. 'json', 'xml').
   */
  public native function get writer():*;

  /**
   * @private
   */
  public native function set writer(value:*):void;


}
}
    