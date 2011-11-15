package flash.events {
import flash.display.InteractiveObject;

/**
 * The TouchEvent class lets you handle events on devices that detect user contact with the device (such as a finger on a touch screen). When a user interacts with a device such as a mobile phone or tablet with a touch screen, the user typically touches the screen with his or her fingers or a pointing device. You can develop applications that respond to basic touch events (such as a single finger tap) with the TouchEvent class. Create event listeners using the event types defined in this class. For user interaction with multiple points of contact (such as several fingers moving across a touch screen at the same time) use the related GestureEvent, PressAndTapGestureEvent, and TransformGestureEvent classes. And, use the properties and methods of these classes to construct event handlers that respond to the user touching the device.
 * <p>Use the Multitouch class to determine the current environment's support for touch interaction, and to manage the support of touch interaction if the current environment supports it.</p>
 * <p><b>Note:</b> When objects are nested on the display list, touch events target the deepest possible nested object that is visible in the display list. This object is called the target node. To have a target node's ancestor (an object containing the target node in the display list) receive notification of a touch event, use <code>EventDispatcher.addEventListener()</code> on the ancestor node with the type parameter set to the specific touch event you want to detect.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/TouchEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.ui.Multitouch
 * @see GestureEvent
 * @see TransformGestureEvent
 * @see PressAndTapGestureEvent
 * @see MouseEvent
 * @see EventDispatcher#addEventListener()
 *
 */
public class TouchEvent extends Event {
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
   * Indicates whether the command key is activated (Mac only).
   * <p>On a Mac OS, the value of the <code>commandKey</code> property is the same value as the <code>ctrlKey</code> property. This property is always false on Windows or Linux.</p>
   */
  public function get commandKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set commandKey(value:Boolean):void {
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
   * Indicates whether the first point of contact is mapped to mouse events.
   * @see MouseEvent
   *
   */
  public function get isPrimaryTouchPoint():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set isPrimaryTouchPoint(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * If <code>true</code>, the <code>relatedObject</code> property is set to <code>null</code> for reasons related to security sandboxes. If the nominal value of <code>relatedObject</code> is a reference to a DisplayObject in another sandbox, <code>relatedObject</code> is set to <code>null</code> unless there is permission in both directions across this sandbox boundary. Permission is established by calling <code>Security.allowDomain()</code> from a SWF file, or by providing a policy file from the server of an image file, and setting the <code>LoaderContext.checkPolicyFile</code> property when loading the image.
   * @see #relatedObject
   * @see flash.system.Security#allowDomain()
   * @see flash.system.LoaderContext#checkPolicyFile
   *
   */
  public function get isRelatedObjectInaccessible():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set isRelatedObjectInaccessible(value:Boolean):void {
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
   * A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.
   */
  public function get pressure():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set pressure(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A reference to a display list object that is related to the event. For example, when a <code>touchOut</code> event occurs, <code>relatedObject</code> represents the display list object to which the pointing device now points. This property applies to the <code>touchOut</code>, <code>touchOver</code>, <code>touchRollOut</code>, and <code>touchRollOver</code> events.
   * <p>The value of this property can be <code>null</code> in two circumstances: if there is no related object, or there is a related object, but it is in a security sandbox to which you don't have access. Use the <code>isRelatedObjectInaccessible()</code> property to determine which of these reasons applies.</p>
   * @see #isRelatedObjectInaccessible
   *
   */
  public function get relatedObject():InteractiveObject {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set relatedObject(value:InteractiveObject):void {
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
   * Width of the contact area.
   */
  public function get sizeX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set sizeX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Height of the contact area.
   */
  public function get sizeY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set sizeY(value:Number):void {
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
   * A unique identification number (as an int) assigned to the touch point.
   * @example The following example establishes a variable <code>touchMoveID</code> to test for the correct <code>touchPointID</code> value before responding to a touch move event. Otherwise, other touch input triggers the event handler, too. Notice the listeners for the move and end phases are on the stage, not the display object. The stage listens for the move or end phases in case the user's touch moves beyond the display object boundaries.
   * <listing>
   * Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
   *
   * var mySprite:Sprite = new Sprite();
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0,0,40,40);
   * addChild(mySprite);
   *
   * var myTextField:TextField = new TextField();
   * addChild(myTextField);
   * myTextField.width = 200;
   * myTextField.height = 20;
   *
   * var touchMoveID:int = 0;
   *
   * mySprite.addEventListener(TouchEvent.TOUCH_BEGIN, onTouchBegin);
   * function onTouchBegin(event:TouchEvent) {
   *     if(touchMoveID != 0) {
   *         myTextField.text = "already moving. ignoring new touch";
   *         return;
   *     }
   *     touchMoveID = event.touchPointID;
   *
   *     myTextField.text = "touch begin" + event.touchPointID;
   *     stage.addEventListener(TouchEvent.TOUCH_MOVE, onTouchMove);
   *     stage.addEventListener(TouchEvent.TOUCH_END, onTouchEnd);
   * }
   * function onTouchMove(event:TouchEvent) {
   *     if(event.touchPointID != touchMoveID) {
   *         myTextField.text = "ignoring unrelated touch";
   *         return;
   *     }
   *     mySprite.x = event.stageX;
   *     mySprite.y = event.stageY;
   *     myTextField.text = "touch move" + event.touchPointID;
   * }
   * function onTouchEnd(event:TouchEvent) {
   *     if(event.touchPointID != touchMoveID) {
   *         myTextField.text = "ignoring unrelated touch end";
   *         return;
   *     }
   *     touchMoveID = 0;
   *     stage.removeEventListener(TouchEvent.TOUCH_MOVE, onTouchMove);
   *     stage.removeEventListener(TouchEvent.TOUCH_END, onTouchEnd);
   *     myTextField.text = "touch end" + event.touchPointID;
   * }
   * </listing>
   */
  public function get touchPointID():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set touchPointID(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an Event object that contains information about touch events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Possible values are: <code>TouchEvent.TOUCH_BEGIN</code>, <code>TouchEvent.TOUCH_END</code>, <code>TouchEvent.TOUCH_MOVE</code>, <code>TouchEvent.TOUCH_OUT</code>, <code>TouchEvent.TOUCH_OVER</code>, <code>TouchEvent.TOUCH_ROLL_OUT</code>, <code>TouchEvent.TOUCH_ROLL_OVER</code>, and <code>TouchEvent.TOUCH_TAP</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param touchPointID A unique identification number (as an int) assigned to the touch point.
   * @param isPrimaryTouchPoint Indicates whether the first point of contact is mapped to mouse events.
   * @param localX The horizontal coordinate at which the event occurred relative to the containing sprite.
   * @param localY The vertical coordinate at which the event occurred relative to the containing sprite.
   * @param sizeX Width of the contact area.
   * @param sizeY Height of the contact area.
   * @param pressure A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.
   * @param relatedObject The complementary InteractiveObject instance that is affected by the event. For example, when a <code>touchOut</code> event occurs, <code>relatedObject</code> represents the display list object to which the pointing device now points.
   * @param ctrlKey On Windows or Linux, indicates whether the Ctrl key is activated. On Mac, indicates whether either the Ctrl key or the Command key is activated.
   * @param altKey Indicates whether the Alt key is activated (Windows or Linux only).
   * @param shiftKey Indicates whether the Shift key is activated.
   * @param commandKey (AIR only) Indicates whether the Command key is activated (Mac only). This parameter is for Adobe AIR only; do not set it for Flash Player content.
   * @param controlKey (AIR only) Indicates whether the Control or Ctrl key is activated. This parameter is for Adobe AIR only; do not set it for Flash Player content.
   *
   */
  public function TouchEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, touchPointID:int = 0, isPrimaryTouchPoint:Boolean = false, localX:Number = NaN, localY:Number = NaN, sizeX:Number = NaN, sizeY:Number = NaN, pressure:Number = NaN, relatedObject:InteractiveObject = null, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false, commandKey:Boolean = false, controlKey:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of the TouchEvent object and sets the value of each property to match that of the original.
   * @return A new TouchEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the TouchEvent object. The string is in the following format:
   * <p><code>[TouchEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... ]</code></p>
   * @return A string that contains all the properties of the TouchEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Instructs Flash Player or Adobe AIR to render after processing of this event completes, if the display list has been modified.
   */
  public function updateAfterEvent():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_BEGIN</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchBegin
   *
   */
  public static const TOUCH_BEGIN:String = "touchBegin";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_END</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchEnd
   *
   */
  public static const TOUCH_END:String = "touchEnd";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_MOVE</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchMove
   *
   */
  public static const TOUCH_MOVE:String = "touchMove";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_OUT</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchOut
   *
   */
  public static const TOUCH_OUT:String = "touchOut";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_OVER</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchOver
   *
   */
  public static const TOUCH_OVER:String = "touchOver";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_ROLL_OUT</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchRollOut
   *
   */
  public static const TOUCH_ROLL_OUT:String = "touchRollOut";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_ROLL_OVER</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchRollOver
   *
   */
  public static const TOUCH_ROLL_OVER:String = "touchRollOver";
  /**
   * Defines the value of the <code>type</code> property of a <code>TOUCH_TAP</code> touch event object.
   * <p>The dispatched TouchEvent object has the following properties:</p>
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
   * <td>The current phase in the event flow.</td></tr>
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
   * <td><code>pressure</code></td>
   * <td>A value between <code>0.0</code> and <code>1.0</code> indicating force of the contact with the device. If the device does not support detecting the pressure, the value is <code>1.0</code>.</td></tr>
   * <tr>
   * <td><code>relatedObject</code></td>
   * <td>A reference to a display list object related to the event.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>sizeX</code></td>
   * <td>Width of the contact area.</td></tr>
   * <tr>
   * <td><code>sizeY</code></td>
   * <td>Height of the contact area.</td></tr>
   * <tr>
   * <td><code>stageX</code></td>
   * <td>The horizontal coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>stageY</code></td>
   * <td>The vertical coordinate at which the event occurred in global stage coordinates.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance under the touching device. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr>
   * <tr>
   * <td><code>touchPointID</code></td>
   * <td>A unique identification number (as an int) assigned to the touch point.</td></tr></table>
   * @see flash.display.InteractiveObject#event:touchTap
   *
   * @example The following example displays a message when the square drawn on mySprite is tapped on a touch-enabled screen:
   * <listing>
   * Multitouch.inputMode=MultitouchInputMode.TOUCH_POINT;
   *
   * var mySprite:Sprite = new Sprite();
   * var myTextField:TextField = new TextField();
   *
   * mySprite.graphics.beginFill(0x336699);
   * mySprite.graphics.drawRect(0,0,40,40);
   * addChild(mySprite);
   *
   * mySprite.addEventListener(TouchEvent.TOUCH_TAP, taphandler);
   *
   * function taphandler(e:TouchEvent): void {
   *     myTextField.text = "I've been tapped";
   *     myTextField.y = 50;
   *     addChild(myTextField);
   * }
   * </listing>
   */
  public static const TOUCH_TAP:String = "touchTap";
}
}
