package ext.config {

import joo.JavaScriptObject;

/**
 * Simple class that represents a Request that will be made by any <a href="Ext.data.ServerProxy.html">Ext.data.ServerProxy</a> subclass. All this class does is standardize the representation of a Request as used by any ServerProxy subclass, it does not contain any actual logic or perform the request itself.

 *
 * <p>This class serves as a
 * typed config object for constructor of class Request.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Request
 */
[ExtConfig(target="ext.data.Request")]
public class request extends JavaScriptObject {

  public function request(config:Object = null) {

    super(config);
  }


  /**
   The name of the action this Request represents. Usually one of 'create', 'read', 'update' or 'destroy'
   */
  public native function get action():String;

  /**
   * @private
   */
  public native function set action(value:String):void;

  /**
   The HTTP method to use on this Request (defaults to 'GET'). Should be one of 'GET', 'POST', 'PUT' or 'DELETE'
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

  /**
   HTTP request params. The Proxy and its Writer have access to and can modify this object.
   */
  public native function get params():Object;

  /**
   * @private
   */
  public native function set params(value:Object):void;

  /**
   The url to access on this Request
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    