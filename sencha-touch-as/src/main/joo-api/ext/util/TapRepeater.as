package ext.util {

import ext.config.taprepeater;

/**
 * Fires on a specified interval during the time the element is pressed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.TapRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="tap")]

/**
 * Fires when the touch is ended.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.TapRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="touchend")]

/**
 * Fires when the touch is started.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.TapRepeater</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="touchstart")]


/**
 * A wrapper class which can be applied to any element. Fires a "tap" event while touching the device. The interval between firings may be specified in the config but defaults to 20 milliseconds.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.taprepeater
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TapRepeater.html#cls-Ext.util.TapRepeater Ext JS source
 */
[Native]
public class TapRepeater extends Observable {

  /**
   *
   *
   * @param el The element to listen on
   * @param config
   * @see ext.config.taprepeater
   */
  public function TapRepeater(el:*, config:taprepeater) {
    super();
  }

}
}
    