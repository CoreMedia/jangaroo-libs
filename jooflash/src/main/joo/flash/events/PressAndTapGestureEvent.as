package flash.events {
/**
 * The PressAndTapGestureEvent class lets you handle press-and-tap gesture on touch-enabled devices. Objects that inherit properties from the InteractiveObject class capture the primary touch point (press) and a secondary point (tap) in the dispatched event object. The press-and-tap gesture is typically used to raise a context-sensitive popup menu.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/PressAndTapGestureEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.ui.Multitouch
 * @see flash.display.InteractiveObject
 * @see TouchEvent
 * @see GestureEvent
 * @see MouseEvent
 * @see EventDispatcher#addEventListener()
 *
 */
public class PressAndTapGestureEvent extends GestureEvent {
  /**
   * The horizontal coordinate at which the event occurred relative to the containing interactive object.
   */
  public function get tapLocalX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tapLocalX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical coordinate at which the event occurred relative to the containing interactive object.
   */
  public function get tapLocalY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tapLocalY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The horizontal coordinate at which the tap touch occurred in global Stage coordinates. This property is calculated when the <code>tapLocalX</code> property is set.
   */
  public function get tapStageX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical coordinate at which the tap touch occurred in global Stage coordinates. This property is calculated when the <code>tapLocalX</code> property is set.
   */
  public function get tapStageY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about complex multi-touch events, such as a user raising a context-sensitive popup menu. Event objects are passed as parameters to event listeners.
   * @param type The type of the event: <code>PressAndTapGestureEvent.GESTURE_PRESS_AND_TAP</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param phase This values tracks the beginning, progress, and end of a touch gesture. Possible values are: <code>GesturePhase.BEGIN</code>, <code>GesturePhase.END</code>, <code>GesturePhase.UPDATE</code>, or <code>GesturePhase.ALL</code>.
   * @param localX The horizontal coordinate at which the event occurred relative to the containing display object.
   * @param localY The vertical coordinate at which the event occurred relative to the containing display object.
   * @param tapLocalX The horizontal coordinate at which the event occurred relative to the containing interactive object.
   * @param tapLocalY The vertical coordinate at which the event occurred relative to the containing interactive object.
   * @param ctrlKey On Windows or Linux, indicates whether the Ctrl key is activated. On Mac, indicates whether either the Ctrl key or the Command key is activated.
   * @param altKey Indicates whether the Alt key is activated (Windows or Linux only).
   * @param shiftKey Indicates whether the Shift key is activated.
   * @param commandKey (AIR only) Indicates whether the Command key is activated (Mac only). This parameter is for Adobe AIR only; do not set it for Flash Player content.
   * @param controlKey (AIR only) Indicates whether the Control or Ctrl key is activated. This parameter is for Adobe AIR only; do not set it for Flash Player content.
   *
   * @see flash.ui.Multitouch
   * @see TouchEvent
   * @see GestureEvent
   * @see GesturePhase
   * @see MouseEvent
   * @see EventDispatcher#addEventListener()
   *
   */
  public function PressAndTapGestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, tapLocalX:Number = 0, tapLocalY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false, commandKey:Boolean = false, controlKey:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of the PressAndTapGestureEvent object and sets the value of each property to match that of the original.
   * @return A new PressAndTapGestureEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the PressAndTapGestureEvent object. The string is in the following format:
   * <p><code>[PressAndTapGestureEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... ]</code></p>
   * @return A string that contains all the properties of the PressAndTapGestureEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_PRESS_AND_TAP</code> touch event object.
   * <p>The dispatched PressAndTapGestureEvent object has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>altKey</code></td>
   * <td><code>true</code> if the Alt key is active (Windows or Linux).</td></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>commandKey</code></td>
   * <td><code>true</code> on the Mac if the Command key is active; <code>false</code> if it is inactive. Always <code>false</code> on Windows.</td></tr>
   * <tr>
   * <td><code>controlKey</code></td>
   * <td><code>true</code> if the Ctrl or Control key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>ctrlKey</code></td>
   * <td><code>true</code> on Windows or Linux if the Ctrl key is active. <code>true</code> on Mac if either the Ctrl key or the Command key is active. Otherwise, <code>false</code>.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>eventPhase</code></td>
   * <td>The current phase as the event passes through the object hierarchy; a numeric value indicating the event is captured (1), at the target (2), or bubbling (3).</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow; a value from the GesturePhase class.Possible values are: <code>GesturePhase.BEGIN</code>, <code>GesturePhase.UPDATE</code>, <code>GesturePhase.END</code>, or <code>GesturePhase.ALL</code>. A press-and-tap gesture either generates a <code>GesturePhase.BEGIN</code>, <code>GesturePhase.UPDATE</code>, <code>GesturePhase.END</code> sequence or the gesture generates a single <code>GesturePhase.ALL</code> phase.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>tapLocalX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing interactive object.</td></tr>
   * <tr>
   * <td><code>tapLocalY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing interactive object.</td></tr>
   * <tr>
   * <td><code>tapStageX</code></td>
   * <td>The horizontal coordinate at which the tap touch occurred in global Stage coordinates.</td></tr>
   * <tr>
   * <td><code>tapStageY</code></td>
   * <td>The vertical coordinate at which the tap touch occurred in global Stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gesturePressAndTap
   * @see GesturePhase
   *
   */
  public static const GESTURE_PRESS_AND_TAP:String = "gesturePressAndTap";
}
}
