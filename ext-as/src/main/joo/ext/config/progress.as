package ext.config {


/**
 * An updateable progress bar component. The progress bar supports two different modes: manual and automatic.
 <p>In manual mode, you are responsible for showing, updating (via <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-updateProgress">updateProgress</a>) and clearing the progress bar as needed from your own code. This method is most appropriate when you want to show progress throughout an operation that has predictable points of interest at which you can update the control.</p><p>In automatic mode, you simply call <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-wait">wait</a> and let the progress bar run indefinitely, only clearing it once the operation is complete. You can optionally have the progress bar wait for a specific amount of time and then clear itself. Automatic mode is most appropriate for timed operations or asynchronous operations in which you have no need for indicating intermediate progress.</p>
 *
 * <p>This class represents the xtype 'progress' and serves as a
 * typed config object for constructor of class ProgressBar.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.ProgressBar
 */
[ExtConfig(target="ext.ProgressBar", xtype="progress")]
public class progress extends box {

  public function progress(config:Object = null) {

    super(config);
  }


  /**
   True to animate the progress bar during transitions (defaults to false)
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**
   The base CSS class to apply to the progress bar's wrapper element (defaults to 'x-progress')
   */
  public native function get baseCls():String;

  /**
   * @private
   */
  public native function set baseCls(value:String):void;

  /**
   The progress bar element's id (defaults to an auto-generated id)
   */
  override public native function get id():String;

  /**
   * @private
   */
  override public native function set id(value:String):void;

  /**
   The progress bar text (defaults to '')
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;

  /**
   The element to render the progress text to (defaults to the progress bar's internal text element)
   */
  public native function get textEl():*;

  /**
   * @private
   */
  public native function set textEl(value:*):void;

  /**
   A floating point value between 0 and 1 (e.g., .5, defaults to 0)
   */
  public native function get value():Number;

  /**
   * @private
   */
  public native function set value(value:Number):void;


}
}
    