package ext.config {

import joo.JavaScriptObject;

/**
 * Represents a single sorter that can be applied to a Store
 *
 * <p>This class serves as a
 * typed config object for constructor of class Sorter.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Sorter
 */
[ExtConfig(target="ext.util.Sorter")]
public class sorter extends JavaScriptObject {

  public function sorter(config:Object = null) {

    super(config);
  }


  /**
   The direction to sort by. Defaults to ASC
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   The property to sort by. Required unless <a href="output/Ext.util.Sorter.html#Ext.util.Sorter-sorter">sorter</a> is provided
   */
  public native function get property():String;

  /**
   * @private
   */
  public native function set property(value:String):void;

  /**
   Optional root property. This is mostly useful when sorting a Store, in which case we set the root to 'data' to make the filter pull the <a href="output/Ext.util.Sorter.html#Ext.util.Sorter-property">property</a> out of the data object of each item
   */
  public native function get root():String;

  /**
   * @private
   */
  public native function set root(value:String):void;

  /**
   A specific sorter function to execute. Can be passed instead of <a href="output/Ext.util.Sorter.html#Ext.util.Sorter-property">property</a>
   */
  public native function get sorterFn():Function;

  /**
   * @private
   */
  public native function set sorterFn(value:Function):void;


}
}
    