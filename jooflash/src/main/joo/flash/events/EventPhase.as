package flash.events {


/**
 * The EventPhase class provides values for the <code>eventPhase</code> property of the Event class.
 * @see Event
 * @see EventDispatcher
 *
 */
public final class EventPhase {
  /**
   * The target phase, which is the second phase of the event flow.
   */
  public static const AT_TARGET:uint = 2;
  /**
   * The bubbling phase, which is the third phase of the event flow.
   */
  public static const BUBBLING_PHASE:uint = 3;
  /**
   * The capturing phase, which is the first phase of the event flow.
   */
  public static const CAPTURING_PHASE:uint = 1;
}
}
