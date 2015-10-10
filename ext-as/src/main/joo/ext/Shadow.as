package ext {
import ext.config.shadow;

/**
 * Simple class that can provide a shadow effect for any element. Note that the element MUST be absolutely positioned, and the shadow does not provide any shimming. This should be used only in simple cases -- for more advanced functionality that can also provide the same shadow effect, see the <a href="Ext.Layer.html">Ext.Layer</a> class.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.shadow
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow Sencha Docs Ext JS 3.4
 */
[Native]
public class Shadow {

  /**
   * Create a new Shadow
   *
   * @param config The config object
   * @see ext.config.shadow
   */
  public function Shadow(config:shadow = null) {
    super();
  }

  /**
   The shadow display mode. Supports the following options:<div class="mdetail-params"><ul><li><b><tt>sides</tt></b> : Shadow displays on both sides and bottom only</li><li><b><tt>frame</tt></b> : Shadow displays equally on all four sides</li><li><b><tt>drop</tt></b> : Traditional bottom-right drop shadow</li></ul></div>
   */
  public native function get mode():String;

  /**
   The number of pixels to offset the shadow from the element (defaults to <tt>4</tt>)
   */
  public native function get offset():String;

  /**
   * Hides this shadow
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow-method-hide Sencha Docs Ext JS 3.4
   */
  public native function hide():void;

  /**
   * Returns true if the shadow is visible, else false
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow-method-isVisible Sencha Docs Ext JS 3.4
   */
  public native function isVisible():void;

  /**
   * Direct alignment when values are already available. Show must be called at least once before calling this method to ensure it is initialized.
   *
   * @param left The target element left position
   * @param top The target element top position
   * @param width The target element width
   * @param height The target element height
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow-method-realign Sencha Docs Ext JS 3.4
   */
  public native function realign(left:Number, top:Number, width:Number, height:Number):void;

  /**
   * Adjust the z-index of this shadow
   *
   * @param zindex The new z-index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow-method-setZIndex Sencha Docs Ext JS 3.4
   */
  public native function setZIndex(zindex:Number):void;

  /**
   * Displays the shadow under the target element
   *
   * @param targetEl The id or element under which the shadow should display
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Shadow-method-show Sencha Docs Ext JS 3.4
   */
  public native function show(targetEl:*):void;

}
}
    