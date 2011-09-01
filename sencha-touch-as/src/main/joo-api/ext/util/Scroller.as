package ext.util {

import ext.form.Number;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.Scroller</code>

 *       </li>

 *       <li>
 *           <code>info:Object</code>
 Object containing information regarding the bounce
 *       </li>

 * </ul>
 */
[Event(name="bouncestart")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.Scroller</code>

 *       </li>

 *       <li>
 *           <code>info:Object</code>
 Object containing information regarding the bounce
 *       </li>

 * </ul>
 */
[Event(name="bouncestart")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.Scroller</code>

 *       </li>

 *       <li>
 *           <code>offsets:Object</code>
 An object containing the x and y offsets for the scroller.
 *       </li>

 * </ul>
 */
[Event(name="scroll")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.Scroller</code>

 *       </li>

 *       <li>
 *           <code>offsets:Object</code>
 An object containing the x and y offsets for the scroller.
 *       </li>

 * </ul>
 */
[Event(name="scrollend")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.Scroller</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="scrollstart")]


/**
 * Provide the native scrolling experience on iDevices for any DOM element
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.scroller
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Scroller.html#cls-Ext.util.Scroller Ext JS source
 */
public class Scroller extends Draggable {

  /**
   *
   *
   * @see ext.config.scroller
   */
  public function Scroller() {
    super(null, null);
  }

  /**
   A higher acceleration gives the scroller more initial velocity. Defaults to 30
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get acceleration():ext.form.Number;

  /**
   Enable bouncing during scrolling past the bounds. Defaults to true. (Which is 'both'). You can also specify 'vertical', 'horizontal', or 'both'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bounces():*;

  /**
   The desired fps of the deceleration. Defaults to 70.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fps():ext.form.Number;

  /**
   The friction of the scroller. By raising this value the length that momentum scrolls becomes shorter. This value is best kept between 0 and 1. The default value is 0.5
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get friction():ext.form.Number;

  /**
   The minimum velocity to keep animating. Defaults to 1 (1px per second)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minVelocityForAnimation():ext.form.Number;

  /**
   Whether or not to enable scrolling momentum. Defaults to true
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get momentum():Boolean;

  /**
   Determines the offset ratio when the scroller is pulled / pushed out of bound (when it's not decelerating) A value of 0.5 means 1px allowed for every 2px. Defaults to 0.5
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get outOfBoundRestrictFactor():ext.form.Number;

  /**
   The tension of the spring that is attached to the scroller when it bounces. By raising this value the bounce becomes shorter. This value is best kept between 0 and 1. The default value is 0.3
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get springTension():ext.form.Number;

  /**
   The time duration in ms to reset the start time of momentum Defaults to 350
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get startMomentumResetTime():ext.form.Number;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Scroller.html#method-Ext.util.Scroller-handleMomentumAnimationFrame Ext JS source
   */
  public native function handleMomentumAnimationFrame():void;

}
}
    