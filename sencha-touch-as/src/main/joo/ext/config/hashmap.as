package ext.config {


/**
 * A simple unordered dictionary implementation to store key/value pairs.

 *
 * <p>This class serves as a
 * typed config object for constructor of class HashMap.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.HashMap
 */
[ExtConfig(target="ext.util.HashMap")]
public class hashmap extends observable {

  public function hashmap(config:Object = null) {

    super(config);
  }


  /**
   A function that is used to retrieve a default key for a passed object. A default is provided that returns the <b>id</b> property on the object. This function is only used if the add method is called with a single argument.
   */
  public native function get keyFn():Function;

  /**
   * @private
   */
  public native function set keyFn(value:Function):void;


}
}
    