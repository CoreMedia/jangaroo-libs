package ext.config {

import ext.form.Number;

/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class Connection.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Connection
 */
[ExtConfig(target="ext.data.Connection")]
public class connection extends observable {

  public function connection(config:Object = null) {

    super(config);
  }


  /**
   True to add a unique cache-buster param to GET requests. (defaults to true)
   */
  public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   Change the parameter which is sent went disabling caching through a cache buster. Defaults to '_dc'
   */
  public native function get disableCachingParam():String;

  /**
   * @private
   */
  public native function set disableCachingParam(value:String):void;

  /**
   The timeout in milliseconds to be used for requests. (defaults to 30000)
   */
  public native function get timeout():ext.form.Number;

  /**
   * @private
   */
  public native function set timeout(value:ext.form.Number):void;


}
}
    