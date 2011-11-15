package flash.events {
/**
 * The TransformGestureEvent class lets you handle complex movement input events (such as moving fingers across a touch screen) that the device or operating system interprets as a gesture. A gesture can have one or more touch points. When a user interacts with a device such as a mobile phone or tablet with a touch screen, the user typically touches and moves across the screen with his or her fingers or a pointing device. You can develop applications that respond to this user interaction with the GestureEvent, PressAndTapGestureEvent, and TransformGestureEvent classes. Create event listeners using the event types defined here, or in the related GestureEvent and TouchEvent classes. And, use the properties and methods of these classes to construct event handlers that respond to the user touching the device.
 * <p>A device or operating system interprets gesture input. So, different devices or operating systems have different requirements for individual gesture types. A swipe on one device might require different input movement than a swipe on another device. Refer to the hardware or operating system documentation to discover how the device or operating system interprets contact as a specific gesture.</p>
 * <p>Use the Multitouch class to determine the current environment's support for touch interaction, and to manage the support of touch interaction if the current environment supports it.</p>
 * <p><b>Note:</b> When objects are nested on the display list, touch events target the deepest possible nested object that is visible in the display list. This object is called the target node. To have a target node's ancestor (an object containing the target node in the display list) receive notification of a touch event, use <code>EventDispatcher.addEventListener()</code> on the ancestor node with the type parameter set to the specific touch event you want to detect.</p>
 * <p>While the user is in contact with the device, the TransformGestureEvent object's scale, rotation, and offset properties are incremental values from the previous gesture event. For example, as a gesture increases the size of a display object, the scale values might go in sequence <code>1.03</code>, <code>1.01</code>, <code>1.01</code>, <code>1.02</code> indicating the display object scaled 1.0717 times its original size by the end of the gesture.</p>
 * <p>For TransformGestureEvent objects, properties not modified by the current gesture are set to identity values. For example, a pan gesture does not have a rotation or scale transformation, so the <code>rotation</code> value of the event object is <code>0</code>, the <code>scaleX</code> and <code>scaleY</code> properties are <code>1</code>.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/TransformGestureEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.ui.Multitouch
 * @see TouchEvent
 * @see GestureEvent
 * @see PressAndTapGestureEvent
 * @see MouseEvent
 * @see EventDispatcher#addEventListener()
 *
 */
public class TransformGestureEvent extends GestureEvent {
  /**
   * The horizontal translation of the display object, since the previous gesture event.
   */
  public function get offsetX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set offsetX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical translation of the display object, since the previous gesture event.
   */
  public function get offsetY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set offsetY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current rotation angle, in degrees, of the display object along the z-axis, since the previous gesture event.
   */
  public function get rotation():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set rotation(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The horizontal scale of the display object, since the previous gesture event.
   */
  public function get scaleX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scaleX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The vertical scale of the display object, since the previous gesture event.
   */
  public function get scaleY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scaleY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about complex multi-touch events, such as a user sliding his or her finger across a screen. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Possible values are: <code>TransformGestureEvent.GESTURE_PAN</code>, <code>TransformGestureEvent.GESTURE_ROTATE</code>, <code>TransformGestureEvent.GESTURE_SWIPE</code> and <code>TransformGestureEvent.GESTURE_ZOOM</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param phase This values tracks the beginning, progress, and end of a touch gesture. Possible values are: <code>GesturePhase.BEGIN</code>, <code>GesturePhase.END</code>, and <code>GesturePhase.UPDATE</code>.
   * @param localX The horizontal coordinate at which the event occurred relative to the containing display object.
   * @param localY The vertical coordinate at which the event occurred relative to the containing display object.
   * @param scaleX The horizontal scale of the display object.
   * @param scaleY The vertical scale of the display object.
   * @param rotation The current rotation angle, in degrees, of the display object along the z-axis.
   * @param offsetX The horizontal translation of the display object from its original position.
   * @param offsetY The vertical translation of the display object from its original position.
   * @param ctrlKey On Windows or Linux, indicates whether the Ctrl key is activated. On Mac, indicates whether either the Ctrl key or the Command key is activated.
   * @param altKey Indicates whether the Alt key is activated (Windows or Linux only).
   * @param shiftKey Indicates whether the Shift key is activated.
   * @param commandKey (AIR only) Indicates whether the Command key is activated (Mac only). This parameter is for Adobe AIR only; do not set it for Flash Player content.
   * @param controlKey (AIR only) Indicates whether the Control or Ctrl key is activated. This parameter is for Adobe AIR only; do not set it for Flash Player content.
   *
   * @see flash.ui.Multitouch
   * @see TouchEvent
   * @see GestureEvent
   * @see PressAndTapGestureEvent
   * @see GesturePhase
   * @see MouseEvent
   * @see EventDispatcher#addEventListener()
   *
   */
  public function TransformGestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, scaleX:Number = 1.0, scaleY:Number = 1.0, rotation:Number = 0, offsetX:Number = 0, offsetY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false, commandKey:Boolean = false, controlKey:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of the TransformGestureEvent object and sets the value of each property to match that of the original.
   * @return A new TransformGestureEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the TransformGestureEvent object. The string is in the following format:
   * <p><code>[TransformGestureEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... ]</code></p>
   * @return A string that contains all the properties of the TransformGestureEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_PAN</code> touch event object.
   * <p>The dispatched TransformGestureEvent object has the following properties:</p>
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
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow; a value from the GesturePhase class.</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>scaleX</code></td>
   * <td>The horizontal scale of the display object since the previous gesture event. For pan gestures this value is <code>1</code>.</td></tr>
   * <tr>
   * <td><code>scaleY</code></td>
   * <td>The vertical scale of the display object since the previous gesture event. For pan gestures this value is <code>1</code>.</td></tr>
   * <tr>
   * <td><code>rotation</code></td>
   * <td>The current rotation angle, in degrees, of the display object along the z-axis, since the previous gesture event. For pan gestures this value is <code>0</code>.</td></tr>
   * <tr>
   * <td><code>offsetX</code></td>
   * <td>The horizontal translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>offsetY</code></td>
   * <td>The vertical translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gesturePan
   * @see GesturePhase
   *
   * @example The following example shows event handling for the <code>GESTURE_PAN</code> events. While the user performs a pan gesture on the touch-enabled device, myTextField populates with the current phase.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.GESTURE;
   *
   * var mySprite = new Sprite();
   * mySprite.addEventListener(TransformGestureEvent.GESTURE_PAN , onPan);
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0, 0, 100, 80);
   * var myTextField = new TextField();
   * myTextField.y = 200;
   * addChild(mySprite);
   * addChild(myTextField);
   *
   * function onPan(evt:TransformGestureEvent):void {
   *
   *     evt.target.localX++;
   *
   *     if (evt.phase==GesturePhase.BEGIN) {
   *         myTextField.text = "Begin";
   *     }
   *     if (evt.phase==GesturePhase.UPDATE) {
   *         myTextField.text = "Update";
   *     }
   *     if (evt.phase==GesturePhase.END) {
   *         myTextField.text = "End";
   *     }
   * }
   * </listing>
   */
  public static const GESTURE_PAN:String = "gesturePan";
  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_ROTATE</code> touch event object.
   * <p>The dispatched TransformGestureEvent object has the following properties:</p>
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
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow; a value from the GesturePhase class.</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>scaleX</code></td>
   * <td>The horizontal scale of the display object since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>scaleY</code></td>
   * <td>The vertical scale of the display object since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>rotation</code></td>
   * <td>The current rotation angle, in degrees, of the display object along the z-axis, since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>offsetX</code></td>
   * <td>The horizontal translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>offsetY</code></td>
   * <td>The vertical translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gestureRotate
   * @see GesturePhase
   *
   * @example The following example shows event handling for the <code>GESTURE_ROTATE</code> events. While the user performs a rotation gesture on the touch-enabled device, mySprite rotates and myTextField populates with the current phase.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.GESTURE;
   *
   * var mySprite = new Sprite();
   * mySprite.addEventListener(TransformGestureEvent.GESTURE_ROTATE , onRotate );
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0, 0, 100, 80);
   * var myTextField = new TextField();
   * myTextField.y = 200;
   * addChild(mySprite);
   * addChild(myTextField);
   *
   * function onRotate(evt:TransformGestureEvent):void {
   *
   *     evt.target.rotation -= 45;
   *
   *     if (evt.phase==GesturePhase.BEGIN) {
   *         myTextField.text = "Begin";
   *     }
   *     if (evt.phase==GesturePhase.UPDATE) {
   *         myTextField.text = "Update";
   *     }
   *     if (evt.phase==GesturePhase.END) {
   *         myTextField.text = "End";
   *     }
   * }
   * </listing>
   */
  public static const GESTURE_ROTATE:String = "gestureRotate";
  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_SWIPE</code> touch event object.
   * <p>The dispatched TransformGestureEvent object has the following properties:</p>
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
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow. For swipe events, this value is always <code>all</code> corresponding to the value <code>GesturePhase.ALL</code> once the event is dispatched.</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing sprite.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing sprite.</td></tr>
   * <tr>
   * <td><code>scaleX</code></td>
   * <td>The horizontal scale of the display object. For swipe gestures this value is <code>1</code></td></tr>
   * <tr>
   * <td><code>scaleY</code></td>
   * <td>The vertical scale of the display object. For swipe gestures this value is <code>1</code></td></tr>
   * <tr>
   * <td><code>rotation</code></td>
   * <td>The current rotation angle, in degrees, of the display object along the z-axis. For swipe gestures this value is <code>0</code></td></tr>
   * <tr>
   * <td><code>offsetX</code></td>
   * <td>Indicates horizontal direction: 1 for right and -1 for left.</td></tr>
   * <tr>
   * <td><code>offsetY</code></td>
   * <td>Indicates vertical direction: 1 for down and -1 for up.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gestureSwipe
   * @see GesturePhase
   *
   * @example The following example shows event handling for the <code>GESTURE_SWIPE</code> events. While the user performs a swipe gesture on the touch-enabled device, myTextField populates with the phase <code>all</code>, which is the only phase for swipe events.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.GESTURE;
   *
   * var mySprite = new Sprite();
   * mySprite.addEventListener(TransformGestureEvent.GESTURE_SWIPE , onSwipe);
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0, 0, 100, 80);
   * var myTextField = new TextField();
   * myTextField.y = 200;
   * addChild(mySprite);
   * addChild(myTextField);
   *
   * function onSwipe(evt:TransformGestureEvent):void {
   *
   *     if (evt.offsetX == 1 ) {
   *     myTextField.text = "right";
   *     }
   *     if (evt.offsetY == -1) {
   *     myTextField.text = "up";
   *     }
   *     myTextField.text = evt.phase;
   *
   * }
   * </listing>
   */
  public static const GESTURE_SWIPE:String = "gestureSwipe";
  /**
   * Defines the value of the <code>type</code> property of a <code>GESTURE_ZOOM</code> touch event object.
   * <p>The dispatched TransformGestureEvent object has the following properties:</p>
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
   * <td><code>phase</code></td>
   * <td>The current phase in the event flow; a value from the GesturePhase class.</td></tr>
   * <tr>
   * <td><code>localX</code></td>
   * <td>The horizontal coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>localY</code></td>
   * <td>The vertical coordinate at which the event occurred relative to the containing display object.</td></tr>
   * <tr>
   * <td><code>scaleX</code></td>
   * <td>The horizontal scale of the display object since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>scaleY</code></td>
   * <td>The vertical scale of the display object since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>rotation</code></td>
   * <td>The current rotation angle, in degrees, of the display object along the z-axis, since the previous gesture event.</td></tr>
   * <tr>
   * <td><code>offsetX</code></td>
   * <td>The horizontal translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>offsetY</code></td>
   * <td>The vertical translation of the display object from its position at the previous gesture event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:gestureZoom
   * @see GesturePhase
   *
   * @example The following example shows event handling for the <code>GESTURE_ZOOM</code> events. While the user performs a zoom gesture on the touch-enabled device, myTextField populates with the current phase.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.GESTURE;
   *
   * var mySprite = new Sprite();
   * mySprite.addEventListener(TransformGestureEvent.GESTURE_ZOOM , onZoom);
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0, 0, 100, 80);
   * var myTextField = new TextField();
   * myTextField.y = 200;
   * addChild(mySprite);
   * addChild(myTextField);
   *
   * function onZoom(evt:TransformGestureEvent):void {
   *
   *     evt.target.scaleX++;
   *
   *     if (evt.phase==GesturePhase.BEGIN) {
   *         myTextField.text = "Begin";
   *     }
   *     if (evt.phase==GesturePhase.UPDATE) {
   *         myTextField.text = "Update";
   *     }
   *     if (evt.phase==GesturePhase.END) {
   *         myTextField.text = "End";
   *     }
   * }
   * </listing>
   */
  public static const GESTURE_ZOOM:String = "gestureZoom";
}
}
