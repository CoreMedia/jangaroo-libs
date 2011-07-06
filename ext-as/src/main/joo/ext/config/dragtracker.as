package ext.config {


/**
 * A DragTracker listens for drag events on an Element and fires events at the start and end of the drag, as well as during the drag. This is useful for components such as <a href="Ext.slider.MultiSlider.html">Ext.slider.MultiSlider</a>, where there is an element that can be dragged around to change the Slider's value. DragTracker provides a series of template methods that should be overridden to provide functionality in response to detected drag operations. These are onBeforeStart, onStart, onDrag and onEnd. See <a href="Ext.slider.MultiSlider.html">Ext.slider.MultiSlider</a>'s initEvents function for an example implementation.
 * <p>This class serves as a typed config object for constructor of class DragTracker.</p>
 *
 * @see ext.dd.DragTracker
 */
[ExtConfig(target="ext.dd.DragTracker")]
public class dragtracker extends observable {

  public function dragtracker(config:Object = null) {

    super(config);
  }


  /**
   Defaults to <tt>false</tt>.
   */
  public native function get active():Boolean;

  /**
   * @private
   */
  public native function set active(value:Boolean):void;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to defer trigger start by 1000 ms. Specify a Number for the number of milliseconds to defer trigger start.
   */
  public native function get autoStart():*;

  /**
   * @private
   */
  public native function set autoStart(value:*):void;

  /**
   Number of pixels the drag target must be moved before dragging is considered to have started. Defaults to <tt>5</tt>.
   */
  public native function get tolerance():Number;

  /**
   * @private
   */
  public native function set tolerance(value:Number):void;


}
}
    