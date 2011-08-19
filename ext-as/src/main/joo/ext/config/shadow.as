package ext.config {

import joo.JavaScriptObject;

/**
 * Simple class that can provide a shadow effect for any element. Note that the element MUST be absolutely positioned, and the shadow does not provide any shimming. This should be used only in simple cases -- for more advanced functionality that can also provide the same shadow effect, see the <a href="Ext.Layer.html">Ext.Layer</a> class.
 *
 * <p>This class serves as a
 * typed config object for constructor of class Shadow.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Shadow
 */
[ExtConfig(target="ext.Shadow")]
public class shadow extends JavaScriptObject {

  public function shadow(config:Object = null) {

    super(config);
  }


  /**
   The shadow display mode. Supports the following options:<div class="mdetail-params"><ul><li><b><tt>sides</tt></b> : Shadow displays on both sides and bottom only</li><li><b><tt>frame</tt></b> : Shadow displays equally on all four sides</li><li><b><tt>drop</tt></b> : Traditional bottom-right drop shadow</li></ul></div>
   */
  public native function get mode():String;

  /**
   * @private
   */
  public native function set mode(value:String):void;

  /**
   The number of pixels to offset the shadow from the element (defaults to <tt>4</tt>)
   */
  public native function get offset():String;

  /**
   * @private
   */
  public native function set offset(value:String):void;


}
}
    