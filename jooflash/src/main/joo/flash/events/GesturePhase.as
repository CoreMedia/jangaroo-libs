package flash.events {


/**
 * The GesturePhase class is an enumeration class of constant values for use with the GestureEvent, PressAndTapGestureEvent, and TransformGestureEvent classes. Use these values to track the beginning, progress, and end of a touch gesture (such as moving several fingers across a touch enabled screen) so your application can respond to individual stages of user contact. Some gestures (swipe and two-finger tap gestures) do not have multiple phases, and set the event object <code>phase</code> property to <code>all</code>.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/GesturePhase.html#includeExamplesSummary">View the examples</a></p>
 * @see GestureEvent
 * @see TransformGestureEvent
 * @see PressAndTapGestureEvent
 *
 */
public final class GesturePhase {
  /**
   * A single value that encompasses all phases of simple gestures like two-finger-tap or swipe. For gestures that set the event object <code>phase</code> property to <code>all</code> (swipe and two-finger tap gestures), the <code>phase</code> value is always <code>all</code> once the event is dispatched.
   * @see GestureEvent
   * @see TransformGestureEvent
   * @see PressAndTapGestureEvent
   *
   */
  public static const ALL:String = "all";
  /**
   * The beginning of a new gesture (such as touching a finger to a touch enabled screen).
   * @see GestureEvent
   * @see TransformGestureEvent
   * @see PressAndTapGestureEvent
   *
   */
  public static const BEGIN:String = "begin";
  /**
   * The completion of a gesture (such as lifting a finger off a touch enabled screen).
   * @see GestureEvent
   * @see TransformGestureEvent
   * @see PressAndTapGestureEvent
   *
   */
  public static const END:String = "end";
  /**
   * The progress of a gesture (such as moving a finger across a touch enabled screen).
   * @see GestureEvent
   * @see TransformGestureEvent
   * @see PressAndTapGestureEvent
   *
   */
  public static const UPDATE:String = "update";
}
}
