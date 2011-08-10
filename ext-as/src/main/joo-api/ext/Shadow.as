package ext {

import ext.config.shadow;

/**
 * Simple class that can provide a shadow effect for any element. Note that the element MUST be absolutely positioned, and the shadow does not provide any shimming. This should be used only in simple cases -- for more advanced functionality that can also provide the same shadow effect, see the <a href="Ext.Layer.html">Ext.Layer</a> class.
 * @see ext.config.shadow
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#cls-Ext.Shadow Ext JS source
 */
public class Shadow {

  /**
   * Create a new Shadow
   *
   * @param config The config object
   * @see ext.config.shadow
   */
  public function Shadow(config:shadow) {
    super();
  }

  /**
   The shadow display mode. Supports the following options:<div class="mdetail-params"><ul><li><b><tt>sides</tt></b> : Shadow displays on both sides and bottom only</li><li><b><tt>frame</tt></b> : Shadow displays equally on all four sides</li><li><b><tt>drop</tt></b> : Traditional bottom-right drop shadow</li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get mode():String;

  /**
   The number of pixels to offset the shadow from the element (defaults to <tt>4</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get offset():String;

  /**
   * Hides this shadow
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#method-Ext.Shadow-hide Ext JS source
   */
  public native function hide():void;

  /**
   * Returns true if the shadow is visible, else false
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#method-Ext.Shadow-isVisible Ext JS source
   */
  public native function isVisible():void;

  /**
   * Direct alignment when values are already available. Show must be called at least once before calling this method to ensure it is initialized.
   *
   * @param left The target element left position
   * @param top The target element top position
   * @param width The target element width
   * @param height The target element height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#method-Ext.Shadow-realign Ext JS source
   */
  public native function realign(left:Number, top:Number, width:Number, height:Number):void;

  /**
   * Adjust the z-index of this shadow
   *
   * @param zindex The new z-index
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#method-Ext.Shadow-setZIndex Ext JS source
   */
  public native function setZIndex(zindex:Number):void;

  /**
   * Displays the shadow under the target element
   *
   * @param targetEl The id or element under which the shadow should display
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Shadow.html#method-Ext.Shadow-show Ext JS source
   */
  public native function show(targetEl:*):void;

}
}
    