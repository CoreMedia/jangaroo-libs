package ext.config {

import joo.JavaScriptObject;

/**
 * A generic response class to normalize response-handling internally to the framework.
 *
 * <p>This class serves as a
 * typed config object for constructor of class Response.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Response
 */
[ExtConfig(target="ext.data.Response")]
public class response extends JavaScriptObject {

  public function response(config:Object = null) {

    super(config);
  }


  /**
   <a href="output/Ext.data.Api.html#Ext.data.Api-actions">Ext.data.Api.actions</a>
   */
  public native function get action():String;

  /**
   * @private
   */
  public native function set action(value:String):void;

  /**

   */
  public native function get data():*;

  /**
   * @private
   */
  public native function set data(value:*):void;

  /**

   */
  public native function get message():String;

  /**
   * @private
   */
  public native function set message(value:String):void;

  /**
   The raw response returned from server-code
   */
  public native function get raw():Object;

  /**
   * @private
   */
  public native function set raw(value:Object):void;

  /**
   related to the Request action
   */
  public native function get records():*;

  /**
   * @private
   */
  public native function set records(value:*):void;

  /**

   */
  public native function get success():Boolean;

  /**
   * @private
   */
  public native function set success(value:Boolean):void;


}
}
    