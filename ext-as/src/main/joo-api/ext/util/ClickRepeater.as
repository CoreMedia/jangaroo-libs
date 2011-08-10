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
 * @see ext.config.clickrepeater
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClickRepeater.html#cls-Ext.util.ClickRepeater Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get accelerate():Boolean;

  /**
   The initial delay before the repeating event begins firing. Similar to an autorepeat key delay.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get delay():Number;

  /**
   The element to act as a button.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get el():*;

  /**
   The interval between firings of the "click" event. Default 20 ms.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get interval():Number;

  /**
   A CSS class name to be applied to the element while pressed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pressClass():String;

  /**
   True to prevent the default click event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get preventDefault():Boolean;

  /**
   True to stop the default click event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get stopDefault():Boolean;

  /**
   * Disables the repeater and stops events from firing.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClickRepeater.html#method-Ext.util.ClickRepeater-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables the repeater and allows events to fire.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClickRepeater.html#method-Ext.util.ClickRepeater-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Convenience function for setting disabled/enabled by boolean.
   *
   * @param disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ClickRepeater.html#method-Ext.util.ClickRepeater-setDisabled Ext JS source
   */
  public native function setDisabled(disabled:Boolean):void;

}
}
    