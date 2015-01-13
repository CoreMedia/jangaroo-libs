package ext.slider {
/**
 * Represents a single thumb element on a Slider. This would not usually be created manually and would instead be created internally by an <a href="Ext.slider.MultiSlider.html">Ext.Slider</a>.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.thumb
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "slider.Thumb")]
public class Thumb {

  /**
   *
   *
   * @see ext.config.thumb
   */
  public function Thumb() {
    super();
  }

  /**
   True while the thumb is in a drag operation
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-property-dragging Sencha Docs Ext JS 3.4
   */
  public native function get dragging():Boolean;

  /**
   * @private
   */
  public native function set dragging(value:Boolean):void;

  /**
   The slider this thumb is contained within
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-property-slider Sencha Docs Ext JS 3.4
   */
  public native function get slider():MultiSlider;

  /**
   * @private
   */
  public native function set slider(value:MultiSlider):void;

  /**
   True to constrain the thumb so that it cannot overlap its siblings
   */
  public native function get constrain():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   * Disables the thumb if it is currently enabled
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-disable Sencha Docs Ext JS 3.4
   */
  public native function disable():void;

  /**
   * Enables the thumb if it is currently disabled
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-enable Sencha Docs Ext JS 3.4
   */
  public native function enable():void;

  /**
   * Sets up an Ext.dd.DragTracker for this thumb
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-initEvents Sencha Docs Ext JS 3.4
   */
  public native function initEvents():void;

  /**
   *
   *
   * @return False if the slider is currently disabled
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-onBeforeDragStart Sencha Docs Ext JS 3.4
   */
  public native function onBeforeDragStart():Boolean;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-onDrag Sencha Docs Ext JS 3.4
   */
  public native function onDrag():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-onDragEnd Sencha Docs Ext JS 3.4
   */
  public native function onDragEnd():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-onDragStart Sencha Docs Ext JS 3.4
   */
  public native function onDragStart():void;

  /**
   * Renders the thumb into a slider
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.slider.Thumb-method-render Sencha Docs Ext JS 3.4
   */
  public native function render():void;

}
}
    