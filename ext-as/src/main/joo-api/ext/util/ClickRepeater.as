package ext.util {
import ext.config.clickrepeater;

/**
 * Fires on a specified interval during the time the element is pressed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.ClickRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when the mouse button is depressed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.ClickRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mousedown")]

/**
 * Fires when the mouse key is released.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.ClickRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="mouseup")]


/**
 * A wrapper class which can be applied to any element. Fires a "click" event while the mouse is pressed. The interval between firings may be specified in the config but defaults to 20 milliseconds. Optionally, a CSS class may be applied to the element during the time it is pressed.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.clickrepeater
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.ClickRepeater Sencha Docs Ext JS 3.4
 */
[Native]
public class ClickRepeater extends Observable {

  /**
   *
   *
   * @param el The element to listen on
   * @param config
   * @see ext.config.clickrepeater
   */
  public function ClickRepeater(el:*, config:clickrepeater) {
    super();
  }

  /**
   True if autorepeating should start slowly and accelerate. "interval" and "delay" are ignored.
   */
  public native function get accelerate():Boolean;

  /**
   The initial delay before the repeating event begins firing. Similar to an autorepeat key delay.
   */
  public native function get delay():Number;

  /**
   The element to act as a button.
   */
  public native function get el():*;

  /**
   The interval between firings of the "click" event. Default 20 ms.
   */
  public native function get interval():Number;

  /**
   A CSS class name to be applied to the element while pressed.
   */
  public native function get pressClass():String;

  /**
   True to prevent the default click event
   */
  public native function get preventDefault():Boolean;

  /**
   True to stop the default click event
   */
  public native function get stopDefault():Boolean;

  /**
   * Disables the repeater and stops events from firing.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.ClickRepeater-method-disable Sencha Docs Ext JS 3.4
   */
  public native function disable():void;

  /**
   * Enables the repeater and allows events to fire.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.ClickRepeater-method-enable Sencha Docs Ext JS 3.4
   */
  public native function enable():void;

  /**
   * Convenience function for setting disabled/enabled by boolean.
   *
   * @param disabled
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.ClickRepeater-method-setDisabled Sencha Docs Ext JS 3.4
   */
  public native function setDisabled(disabled:Boolean):void;

}
}
    