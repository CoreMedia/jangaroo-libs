package ext.slider {


/**
 * Represents a single thumb element on a Slider. This would not usually be created manually and would instead be created internally by an <a href="Ext.slider.MultiSlider.html">Ext.Slider</a>.
 * @see ext.config.thumb
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#cls-Ext.slider.Thumb Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.Thumb-dragging Ext JS source
   */
  public native function get dragging():Boolean;

  /**
   * @private
   */
  public native function set dragging(value:Boolean):void;

  /**
   The slider this thumb is contained within
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#prop-Ext.slider.Thumb-slider Ext JS source
   */
  public native function get slider():MultiSlider;

  /**
   * @private
   */
  public native function set slider(value:MultiSlider):void;

  /**
   True to constrain the thumb so that it cannot overlap its siblings
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Disables the thumb if it is currently enabled
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables the thumb if it is currently disabled
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Sets up an Ext.dd.DragTracker for this thumb
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-initEvents Ext JS source
   */
  public native function initEvents():void;

  /**
   *
   *
   * @return False if the slider is currently disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-onBeforeDragStart Ext JS source
   */
  public native function onBeforeDragStart():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-onDrag Ext JS source
   */
  public native function onDrag():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-onDragEnd Ext JS source
   */
  public native function onDragEnd():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-onDragStart Ext JS source
   */
  public native function onDragStart():void;

  /**
   * Renders the thumb into a slider
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Slider.html#method-Ext.slider.Thumb-render Ext JS source
   */
  public native function render():void;

}
}
    