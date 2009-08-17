package ext {

/**
 * <p>An updateable progress bar component.  The progress bar supports two different modes: manual and automatic.</p>
 * <p>In manual mode, you are responsible for showing, updating (via <b class='link'>#updateProgress</b>) and clearing the
 * progress bar as needed from your own code.  This method is most appropriate when you want to show progress
 * throughout an operation that has predictable points of interest at which you can update the control.</p>
 * <p>In automatic mode, you simply call <b class='link'>#wait</b> and let the progress bar run indefinitely, only clearing it
 * once the operation is complete.  You can optionally have the progress bar wait for a specific amount of time
 * and then clear itself.  Automatic mode is most appropriate for timed operations or asynchronous operations in
 * which you have no need for indicating intermediate progress.</p>
 * @cfg {Float} value A floating point value between 0 and 1 (e.g., .5, defaults to 0)
 * @cfg {String} text The progress bar text (defaults to '')
 * @cfg {Mixed} textEl The element to render the progress text to (defaults to the progress
 * bar's internal text element)
 * @cfg {String} id The progress bar element's id (defaults to an auto-generated id)
 * @xtype progress
 */
public class ProgressBar extends BoxComponent {
  public function ProgressBar(config : *) {
    super(config);
  }
   /**
    * @cfg {String} baseCls
    * The base CSS class to apply to the progress bar's wrapper element (defaults to 'x-progress')
    */
    public var baseCls  : String;
    /**
    * @cfg {Boolean} animate
    * True to animate the progress bar during transitions (defaults to false)
    */
    public var animate  : Boolean;
    protected var waitTimer ;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    /**
     * Updates the progress bar value, and optionally its text.  If the text argument is not specified,
     * any existing text value will be unchanged.  To blank out existing text, pass ''.  Note that even
     * if the progress bar value exceeds 1, it will never automatically reset -- you are responsible for
     * determining when the progress is complete and calling <b class='link'>#reset</b> to clear and/or hide the control.
     * @param value A floating point value between 0 and 1 (e.g., .5, defaults to 0)
     * @param text The string to display in the progress text element (defaults to '')
     * @param animate Whether to animate the transition of the progress bar. If this value is
     * not specified, the default for the class is used (default to false)
     * @return this
     */
    public native function updateProgress(value : Number = undefined, text : String = undefined, animate : Boolean = undefined) : ProgressBar;
    /**
     * Initiates an auto-updating progress bar.  A duration can be specified, in which case the progress
     * bar will automatically reset after a fixed amount of time and optionally call a callback function
     * if specified.  If no duration is passed in, then the progress bar will run indefinitely and must
     * be manually cleared by calling <b class='link'>#reset</b>.  The wait method accepts a config object with
     * the following properties:
     * <pre>
Property   Type          Description
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
</pre>
         *
         * Example usage:
         * <pre><code>
var p = new ext.ProgressBar({
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
     * @param config Configuration options
     * @return this
     */
    public native function wait(config : Object = undefined) : ProgressBar;
    /**
     * Returns true if the progress bar is currently in a <b class='link'>#wait</b> operation
     * @return True if waiting, else false
     */
    public native function isWaiting() : Boolean;
    /**
     * Updates the progress bar text.  If specified, textEl will be updated, otherwise the progress
     * bar itself will display the updated text.
     * @param text The string to display in the progress text element (defaults to '')
     * @return this
     */
    public native function updateText(text : String = undefined) : ProgressBar;
    /**
     * Synchronizes the inner bar width to the proper proportion of the total componet width based
     * on the current progress <b class='link'>#value</b>.  This will be called automatically when the ProgressBar
     * is resized by a layout, but if it is rendered auto width, this method can be called from
     * another resize handler to sync the ProgressBar if necessary.
     */
    public native function syncProgressBar() : void;
    /**
     * Sets the size of the progress bar.
     * @param width The new width in pixels
     * @param height The new height in pixels
     * @return this
     */
    override public native function setSize(width : *, height : *) : BoxComponent;
    /**
     * Resets the progress bar value to 0 and text to empty string.  If hide = true, the progress
     * bar will also be hidden (using the <b class='link'>#hideMode</b> property internally).
     * @param hide True to hide the progress bar (defaults to false)
     * @return this
     */
    public native function reset(hide : Boolean = undefined) : ProgressBar;

}}
