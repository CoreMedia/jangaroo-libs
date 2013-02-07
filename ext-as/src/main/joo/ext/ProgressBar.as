package ext {
import ext.config.progress;

/**
 * Fires after each update interval
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.ProgressBar</code>

 *       </li>

 *       <li>
 *           <code>The:Number</code>
 current progress value
 *       </li>

 *       <li>
 *           <code>The:String</code>
 current progress text
 *       </li>

 * </ul>
 */
[Event(name="update")]


/**
 * An updateable progress bar component. The progress bar supports two different modes: manual and automatic.
 <p>In manual mode, you are responsible for showing, updating (via <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-updateProgress">updateProgress</a>) and clearing the progress bar as needed from your own code. This method is most appropriate when you want to show progress throughout an operation that has predictable points of interest at which you can update the control.</p><p>In automatic mode, you simply call <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-wait">wait</a> and let the progress bar run indefinitely, only clearing it once the operation is complete. You can optionally have the progress bar wait for a specific amount of time and then clear itself. Automatic mode is most appropriate for timed operations or asynchronous operations in which you have no need for indicating intermediate progress.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'progress' / the EXML element &lt;progress>.</p>
 * @see ext.config.progress
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.ProgressBar")]
public class ProgressBar extends BoxComponent {

  /**
   * Create a new ProgressBar.
   *
   * @param config The config object
   * @see ext.config.progress
   */
  public function ProgressBar(config:progress = null) {
    super(null);
  }

  /**
   True to animate the progress bar during transitions (defaults to false)
   */
  public native function get animate():Boolean;

  /**
   The base CSS class to apply to the progress bar's wrapper element (defaults to 'x-progress')
   */
  public native function get baseCls():String;

  /**
   The progress bar text (defaults to '')
   */
  public native function get text():String;

  /**
   The element to render the progress text to (defaults to the progress bar's internal text element)
   */
  public native function get textEl():*;

  /**
   A floating point value between 0 and 1 (e.g., .5, defaults to 0)
   */
  public native function get value():Number;

  /**
   * Returns true if the progress bar is currently in a <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-wait">wait</a> operation
   *
   * @return True if waiting, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-isWaiting Sencha Docs Ext JS 3.4
   */
  public native function isWaiting():Boolean;

  /**
   * Resets the progress bar value to 0 and text to empty string. If hide = true, the progress bar will also be hidden (using the <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-hideMode">hideMode</a> property internally).
   *
   * @param hide True to hide the progress bar (defaults to false)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-reset Sencha Docs Ext JS 3.4
   */
  public native function reset(hide:Boolean = false):ProgressBar;

  /**
   * Sets the size of the progress bar.
   *
   * @param width The new width to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style.</li><li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li><li><code>undefined</code> to leave the width unchanged.</li></ul></div>
   * @param height The new height to set (not required if a size object is passed as the first arg). This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li><li><code>undefined</code> to leave the height unchanged.</li></ul></div>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-setSize Sencha Docs Ext JS 3.4
   */
  override public native function setSize(width:*, height:*):BoxComponent;

  /**
   * Synchronizes the inner bar width to the proper proportion of the total component width based on the current progress <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-value">value</a>. This will be called automatically when the ProgressBar is resized by a layout, but if it is rendered auto width, this method can be called from another resize handler to sync the ProgressBar if necessary.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-syncProgressBar Sencha Docs Ext JS 3.4
   */
  public native function syncProgressBar():void;

  /**
   * Updates the progress bar value, and optionally its text. If the text argument is not specified, any existing text value will be unchanged. To blank out existing text, pass ''. Note that even if the progress bar value exceeds 1, it will never automatically reset -- you are responsible for determining when the progress is complete and calling <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-reset">reset</a> to clear and/or hide the control.
   *
   * @param value A floating point value between 0 and 1 (e.g., .5, defaults to 0)
   * @param text The string to display in the progress text element (defaults to '')
   * @param animate Whether to animate the transition of the progress bar. If this value is not specified, the default for the class is used (default to false)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-updateProgress Sencha Docs Ext JS 3.4
   */
  public native function updateProgress(value:Number = undefined, text:String = null, animate:Boolean = false):ProgressBar;

  /**
   * Updates the progress bar text. If specified, textEl will be updated, otherwise the progress bar itself will display the updated text.
   *
   * @param text The string to display in the progress text element (defaults to '')
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-updateText Sencha Docs Ext JS 3.4
   */
  public native function updateText(text:String = null):ProgressBar;

  /**
   * Initiates an auto-updating progress bar. A duration can be specified, in which case the progress bar will automatically reset after a fixed amount of time and optionally call a callback function if specified. If no duration is passed in, then the progress bar will run indefinitely and must be manually cleared by calling <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-reset">reset</a>. The wait method accepts a config object with the following properties: <pre>Property   Type          Description
   ---------- ------------  ----------------------------------------------------------------------
   duration   Number        The length of time in milliseconds that the progress bar should
   run before resetting itself (defaults to undefined, in which case it
   will run indefinitely until reset is called)
   interval   Number        The length of time in milliseconds between each progress update
   (defaults to 1000 ms)
   animate    Boolean       Whether to animate the transition of the progress bar. If this value is
   not specified, the default for the class is used.
   increment  Number        The number of progress update segments to display within the progress
   bar (defaults to 10).  If the bar reaches the end and is still
   updating, it will automatically wrap back to the beginning.
   text       String        Optional text to display in the progress bar element (defaults to '').
   fn         Function      A callback function to execute after the progress bar finishes auto-
   updating.  The function will be called with no arguments.  This function
   will be ignored if duration is not specified since in that case the
   progress bar can only be stopped programmatically, so any required function
   should be called by the same code after it resets the progress bar.
   scope      Object        The scope that is passed to the callback function (only applies when
   duration and fn are both passed).
   </pre>Example usage: <pre><code>var p = new Ext.ProgressBar({
   renderTo: 'my-el'
   });

   //Wait for 5 seconds, then update the status el (progress bar will auto-reset)
   p.wait({
   interval: 100, //bar will move fast!
   duration: 5000,
   increment: 15,
   text: 'Updating...',
   scope: this,
   fn: function(){
   Ext.fly('status').update('Done!');
   }
   });

   //Or update indefinitely until some async action completes, then reset manually
   p.wait();
   myAction.on('complete', function(){
   p.reset();
   Ext.fly('status').update('Done!');
   });
   </code></pre>
   *
   * @param config Configuration options
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ProgressBar-method-wait Sencha Docs Ext JS 3.4
   */
  public native function wait(config:Object = null):ProgressBar;

}
}
    