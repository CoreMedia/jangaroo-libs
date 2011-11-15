package flash.ui {
/**
 * The MultitouchInputMode class provides values for the <code>inputMode</code> property in the flash.ui.Multitouch class. These values set the type of touch events the Flash runtime dispatches when the user interacts with a touch-enabled device.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/ui/MultitouchInputMode.html#includeExamplesSummary">View the examples</a></p>
 * @see Multitouch#inputMode
 *
 */
public final class MultitouchInputMode {
  /**
   * Specifies that TransformGestureEvent, PressAndTapGestureEvent, and GestureEvent events are dispatched for the related user interaction supported by the current environment, and other touch events (such as a simple tap) are interpreted as mouse events.
   * @see Multitouch#inputMode
   * @see flash.events.TransformGestureEvent
   * @see flash.events.GestureEvent
   * @see flash.events.PressAndTapGestureEvent
   * @see flash.events.TouchEvent
   *
   */
  public static const GESTURE:String = "gesture";
  /**
   * Specifies that all user contact with a touch-enabled device is interpreted as a type of mouse event.
   * @see Multitouch#inputMode
   * @see flash.events.MouseEvent
   *
   */
  public static const NONE:String = "none";
  /**
   * Specifies that events are dispatched only for basic touch events, such as a single finger tap. When you use this setting, events listed in the TouchEvent class are dispatched; events listed in the TransformGestureEvent, PressAndTapGestureEvent, and GestureEvent classes are not dispatched.
   * @see Multitouch#inputMode
   * @see flash.events.TransformGestureEvent
   * @see flash.events.GestureEvent
   * @see flash.events.PressAndTapGestureEvent
   * @see flash.events.TouchEvent
   *
   */
  public static const TOUCH_POINT:String = "touchPoint";
}
}
