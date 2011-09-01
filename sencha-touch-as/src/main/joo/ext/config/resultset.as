package ext.config {

import ext.form.Number;

import joo.JavaScriptObject;

/**
 * Simple wrapper class that represents a set of records returned by a Proxy.

 *
 * <p>This class serves as a
 * typed config object for constructor of class ResultSet.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.ResultSet
 */
[ExtConfig(target="ext.data.ResultSet")]
public class resultset extends JavaScriptObject {

  public function resultset(config:Object = null) {

    super(config);
  }


  /**
   The number of records in this ResultSet. Note that total may differ from this number
   */
  public native function get count():ext.form.Number;

  /**
   * @private
   */
  public native function set count(value:ext.form.Number):void;

  /**
   True if the records have already been loaded. This is only meaningful when dealing with SQL-backed proxies
   */
  public native function get loaded():Boolean;

  /**
   * @private
   */
  public native function set loaded(value:Boolean):void;

  /**
   The array of record instances. Required
   */
  public native function get records():Array;

  /**
   * @private
   */
  public native function set records(value:Array):void;

  /**
   True if the ResultSet loaded successfully, false if any errors were encountered
   */
  public native function get success():Boolean;

  /**
   * @private
   */
  public native function set success(value:Boolean):void;

  /**
   The total number of records reported by the data source. This ResultSet may form a subset of those records (see count)
   */
  public native function get total():ext.form.Number;

  /**
   * @private
   */
  public native function set total(value:ext.form.Number):void;


}
}
    