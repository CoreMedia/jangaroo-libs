package ext {


/**
 * An object that manages a group of <a href="Ext.Window.html">Ext.Window</a> instances and provides z-order management and window activation behavior.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.WindowGroup")]
public class WindowGroup
 {

  /**
   *
   *
   */
  public function WindowGroup() {
    super();
  }

  /**
   The starting z-index for windows in this WindowGroup (defaults to 9000) The z-index value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-property-zseed Sencha Docs Ext JS 3.4
   */
  public native function get zseed():Number;

  /**
   * @private
   */
  public native function set zseed(value:Number):void;

  /**
   * Brings the specified window to the front of any other active windows in this WindowGroup.
   *
   * @param win The id of the window or a <a href="Ext.Window.html">Ext.Window</a> instance
   * @return True if the dialog was brought to the front, else false if it was already in front
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-bringToFront Sencha Docs Ext JS 3.4
   */
  public native function bringToFront(win:*):Boolean;

  /**
   * Executes the specified function once for every window in this WindowGroup, passing each window as the only parameter. Returning false from the function will stop the iteration.
   *
   * @param fn The function to execute for each item
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Window in the iteration.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-each Sencha Docs Ext JS 3.4
   */
  public native function each(fn:Function, scope:Object = null):void;

  /**
   * Gets a registered window by id.
   *
   * @param id The id of the window or a <a href="Ext.Window.html">Ext.Window</a> instance
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-get Sencha Docs Ext JS 3.4
   */
  public native function get(id:*):Window;

  /**
   * Gets the currently-active window in this WindowGroup.
   *
   * @return The active window
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-getActive Sencha Docs Ext JS 3.4
   */
  public native function getActive():Window;

  /**
   * Returns zero or more windows in this WindowGroup using the custom search function passed to this method. The function should accept a single <a href="Ext.Window.html">Ext.Window</a> reference as its only argument and should return true if the window matches the search criteria, otherwise it should return false.
   *
   * @param fn The search function
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Window being tested. that gets passed to the function if not specified)
   * @return An array of zero or more matching windows
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-getBy Sencha Docs Ext JS 3.4
   */
  public native function getBy(fn:Function, scope:Object = null):Array;

  /**
   * Hides all windows in this WindowGroup.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-hideAll Sencha Docs Ext JS 3.4
   */
  public native function hideAll():void;

  /**
   * Registers a <a href="Ext.Window.html">Window</a> with this WindowManager. This should not need to be called under normal circumstances. Windows are automatically registered with a <a href="output/Ext.Window.html#Ext.Window-manager">manager</a> at construction time.
   <p>Where this may be useful is moving Windows between two WindowManagers. For example, to bring the Ext.MessageBox dialog under the same manager as the Desktop's WindowManager in the desktop sample app:</p><pre><code>var msgWin = Ext.MessageBox.getDialog();
   MyDesktop.getDesktop().getManager().register(msgWin);
   </code></pre>
   *
   * @param win The Window to register.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-register Sencha Docs Ext JS 3.4
   */
  public native function register(win:Window):void;

  /**
   * Sends the specified window to the back of other active windows in this WindowGroup.
   *
   * @param win The id of the window or a <a href="Ext.Window.html">Ext.Window</a> instance
   * @return The window
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-sendToBack Sencha Docs Ext JS 3.4
   */
  public native function sendToBack(win:*):Window;

  /**
   * Unregisters a <a href="Ext.Window.html">Window</a> from this WindowManager. This should not need to be called. Windows are automatically unregistered upon destruction. See <a href="output/Ext.WindowGroup.html#Ext.WindowGroup-register">register</a>.

   *
   * @param win The Window to unregister.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowGroup-method-unregister Sencha Docs Ext JS 3.4
   */
  public native function unregister(win:Window):void;

}
}
    