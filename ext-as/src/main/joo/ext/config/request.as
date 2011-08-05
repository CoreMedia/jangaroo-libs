package ext.config {

import ext.data.DataReader;

import joo.JavaScriptObject;

/**
 * A simple Request class used internally to the data package to provide more generalized remote-requests to a DataProxy. TODO Not yet implemented. Implement in Ext.data.Store#execute
 * <p>This class serves as a typed config object for constructor of class Request.</p>
 *
 * @see ext.data.Request
 */
[ExtConfig(target="ext.data.Request")]
public class request extends JavaScriptObject {

  public function request(config:Object = null) {
    super(config);
  }


  /**

   */
  public native function get action():String;

  /**
   * @private
   */
  public native function set action(value:String):void;

  /**
   The function to call when request is complete
   */
  public native function get callback():Function;

  /**
   * @private
   */
  public native function set callback(value:Function):void;

  /**
   HTTP request params
   */
  public native function get params():Object;

  /**
   * @private
   */
  public native function set params(value:Object):void;

  /**
   The DataReader instance which will parse the received response
   */
  public native function get reader():DataReader;

  /**
   * @private
   */
  public native function set reader(value:DataReader):void;

  /**
   The Store recordset associated with the request.
   */
  public native function get rs():*;

  /**
   * @private
   */
  public native function set rs(value:*):void;

  /**
   The scope of the callback function.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    