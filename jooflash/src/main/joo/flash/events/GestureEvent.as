package flash.events {
/**
 * The GestureEvent class lets you handle multi-touch events on devices that detect complex user contact with the device (such as pressing two fingers on a touch screen at the same time). When a user interacts with a device such as a mobile phone or tablet with a touch screen, the user typically touches and moves across the screen with his or her fingers or a pointing device. You can develop applications that respond to this user interaction with the GestureEvent and TransformGestureEvent classes. Create event listeners using the event types defined here, or in the related TouchEvent and TransformGestureEvent classes. And, use the properties and methods of these classes to construct event handlers that respond to the user touching the device.
 * <p>Use the Multitouch class to determine the current environment's support for touch interaction, and to manage the support of touch interaction if the current environment supports it.</p>
 * <p><b>Note:</b> When objects are nested on the display list, touch events target the deepest possible nested object that is visible in the display list. This object is called the target node. To have a target node's ancestor (an object containing the target node in the display list) receive notification of a touch event, use <code>EventDispatcher.addEventListener()</code> on the ancestor node with the type parameter set to the specific touch event you want to detect.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/GestureEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.ui.Multitouch
 * @see TouchEvent
 * @see TransformGestureEvent
 * @see PressAndTapGestureEvent
 * @see MouseEvent
 * @see EventDispatcher#addEventListener()
 *
 */
public class GestureEvent extends Event {
  /**
   * Indicates whether the Alt key is active (<code>true</code>) or inactive (<code>false</code>). Supported for Windows and Linux operating systems only.
   */
  public function get altKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set altKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the Control key is activated on Mac and whether the Ctrl key is activated on Windows or Linux.
   */
  public function get controlKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set controlKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * On Windows or Linux, indicates whether the Ctrl key is active (<code>true</code>) or inactive (<code>false</code>). On Macintosh, indicates whether either the Control key or the Command key is activated.
   */
  public function get ctrlKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ctrlKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The horizontal coordinate at which the event occurred relative to the containing sprite.
   */
  public function get localX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set localX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical coordinate at which the event occurred relative to the containing sprite.
   */
  public function get localY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set localY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A value from the GesturePhase class indicating the progress of the touch gesture. For most gestures, the value is <code>begin</code>, <code>update</code>, or <code>end</code>. For the swipe and two-finger tap gestures, the phase value is always <code>all</code> once the event is dispatched. Use this value to determine when an event handler responds to a complex user interaction, or responds in different ways depending on the current phase of a multi-touch gesture (such as expanding, moving, and "dropping" as a user touches and drags a visual object across a screen).
   * @see GesturePhase
   *
   */
  public function get phase():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set phase(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the Shift key is active (<code>true</code>) or inactive (<code>false</code>).
   */
  public function get shiftKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set shiftKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The horizontal coordinate at which the event occurred in global Stage coordinates. This property is calculated when the <code>localX</code> property is set.
   */
  public function get stageX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical coordinate at which the event occurred in global Stage coordinates. This property is calculated when the <code>localY</code> property is set.
   */
  public function get stageY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about multi-touch events (such as pressing two fingers on a touch screen at the same time). Event objects are passed as parameters to event listeners.
   * @param type The type of the event. The supported value is: <code>GestureEvent.GESTURE_TWO_FINGER_TAP</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param phase A value from the GesturePhase class indicating the progress of the touch gesture (begin, update, end, or all).
   * @param localX The horizontal coordinate at which the event occurred relative to the containing sprite.
   * @param localY The vertical coordinate at which the event occurred relative to the containing sprite.
   * @param ctrlKey On Windows or Linux, indicates whether the Ctrl key is activated. On Mac, indicates whether either the Ctrl key or the Command key is activated.
   * @param altKey Indicates whether the Alt key is activated (Windows or Linux only).
   * @param shiftKey Indicates whether the Shift key is activated.
   * @param commandKey (AIR only) Indicates whether the Command key is activated (Mac only). This parameter is for Adobe AIR only; do not set it for Flash Player content.
   * @param controlKey (AIR only) Indicates whether the Control or Ctrl key is activated. This parameter is for Adobe AIR only; do not set it for Flash Player content.
   *
   * @see GesturePhase
   *
   */
  public function GestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false, commandKey:Boolean = false, controlKey:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of the GestureEvent object and sets the value of each property to match that of the original.
   * @return A new GestureEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the GestureEvent object. The string is in the following format:
   * <p><code>[GestureEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... ]</code></p>
   * @return A string that contains all the properties of the GestureEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Refreshes the Flash runtime display after processing the gesture event, in case the display list has been modified by the event handler.
   */
  public function updateAfterEvent():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_TWO_FINGER_TAP</code> gesture event object.
   * <p>The dispatched GestureEvent object has the following properties:</p>
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
   * <td>(AIR only) <code>true</code> on the Mac if the Command key is active; <code>false</code> if it is inactive. Always <code>false</code> on Windows.</td></tr>
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
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow. For two-finger tap events, this value is always <code>all</code> corresponding to the value <code>GesturePhase.ALL</code> once the event is dispatched.</td></tr>
   * <tr>
   * <td><code>isRelatedObjectInaccessible</code></td>
   * <td><code>true</code> if the relatedObject property is set to <code>null</code> because of security sandbox rules.</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing sprite.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing sprite.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gestureTwoFingerTap
   * @see GesturePhase
   *
   */
  public static const GESTURE_TWO_FINGER_TAP:String = "gestureTwoFingerTap";
}
}
