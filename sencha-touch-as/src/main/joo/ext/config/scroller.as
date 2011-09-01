package ext.config {

import ext.form.Number;

/**
 * Provide the native scrolling experience on iDevices for any DOM element
 *
 * <p>This class serves as a
 * typed config object for constructor of class Scroller.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Scroller
 */
[ExtConfig(target="ext.util.Scroller")]
public class scroller extends draggable {

  public function scroller(config:Object = null) {

    super(config);
  }


  /**
   A higher acceleration gives the scroller more initial velocity. Defaults to 30
   */
  public native function get acceleration():ext.form.Number;

  /**
   * @private
   */
  public native function set acceleration(value:ext.form.Number):void;

  /**
   Enable bouncing during scrolling past the bounds. Defaults to true. (Which is 'both'). You can also specify 'vertical', 'horizontal', or 'both'
   */
  public native function get bounces():*;

  /**
   * @private
   */
  public native function set bounces(value:*):void;

  /**
   The desired fps of the deceleration. Defaults to 70.
   */
  public native function get fps():ext.form.Number;

  /**
   * @private
   */
  public native function set fps(value:ext.form.Number):void;

  /**
   The friction of the scroller. By raising this value the length that momentum scrolls becomes shorter. This value is best kept between 0 and 1. The default value is 0.5
   */
  public native function get friction():ext.form.Number;

  /**
   * @private
   */
  public native function set friction(value:ext.form.Number):void;

  /**
   The minimum velocity to keep animating. Defaults to 1 (1px per second)
   */
  public native function get minVelocityForAnimation():ext.form.Number;

  /**
   * @private
   */
  public native function set minVelocityForAnimation(value:ext.form.Number):void;

  /**
   Whether or not to enable scrolling momentum. Defaults to true
   */
  public native function get momentum():Boolean;

  /**
   * @private
   */
  public native function set momentum(value:Boolean):void;

  /**
   Determines the offset ratio when the scroller is pulled / pushed out of bound (when it's not decelerating) A value of 0.5 means 1px allowed for every 2px. Defaults to 0.5
   */
  public native function get outOfBoundRestrictFactor():ext.form.Number;

  /**
   * @private
   */
  public native function set outOfBoundRestrictFactor(value:ext.form.Number):void;

  /**
   The tension of the spring that is attached to the scroller when it bounces. By raising this value the bounce becomes shorter. This value is best kept between 0 and 1. The default value is 0.3
   */
  public native function get springTension():ext.form.Number;

  /**
   * @private
   */
  public native function set springTension(value:ext.form.Number):void;

  /**
   The time duration in ms to reset the start time of momentum Defaults to 350
   */
  public native function get startMomentumResetTime():ext.form.Number;

  /**
   * @private
   */
  public native function set startMomentumResetTime(value:ext.form.Number):void;


}
}
    