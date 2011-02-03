package flash.events {

/**
 * A KeyboardEvent object id dispatched in response to user input through a keyboard. There are two types of keyboard events: <code>KeyboardEvent.KEY_DOWN</code> and <code>KeyboardEvent.KEY_UP</code>
 * <p>Because mappings between keys and specific characters vary by device and operating system, use the TextEvent event type for processing character input.</p>
 * <p>To listen globally for key events, listen on the Stage for the capture and target or bubble phase.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/KeyboardEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see #KEY_DOWN
 * @see #KEY_UP
 * @see flash.ui.KeyLocation
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingSDK/WS2db454920e96a9e51e63e3d11c0bf64a29-7fdb.html About keyboard events
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingSDK/WS2db454920e96a9e51e63e3d11c0bf64a29-7fef.html Handling keyboard events
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingSDK/WS2db454920e96a9e51e63e3d11c0bf64a29-7fed.html Understanding the keyCode and charCode properties
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingSDK/WS2db454920e96a9e51e63e3d11c0bf64a29-7fe8.html Understanding KeyboardEvent precedence
 *
 */
public class KeyboardEvent extends Event {
  /**
   * Indicates whether the Alt key is active (<code>true</code>) or inactive (<code>false</code>) on Windows; indicates whether the Option key is active on Mac OS.
   */
  public function get altKey():Boolean {
    return _altKey;
  }

  /**
   * @private
   */
  public function set altKey(value:Boolean):void {
    _altKey = value;
  }

  /**
   * Contains the character code value of the key pressed or released. The character code values are English keyboard values. For example, if you press Shift+3, <code>charCode</code> is # on a Japanese keyboard, just as it is on an English keyboard.
   * <p><b>Note:</b> When an input method editor (IME) is running, <code>charCode</code> does not report accurate character codes.</p>
   * @see flash.system.IME
   *
   */
  public function get charCode():uint {
    return _charCode;
  }

  /**
   * @private
   */
  public function set charCode(value:uint):void {
    _charCode = value;
  }

  /**
   * On Windows and Linux, indicates whether the Ctrl key is active (<code>true</code>) or inactive (<code>false</code>); On Mac OS, indicates whether either the Ctrl key or the Command key is active.
   */
  public function get ctrlKey():Boolean {
    return _ctrlKey;
  }

  /**
   * @private
   */
  public function set ctrlKey(value:Boolean):void {
    _ctrlKey = value;
  }

  /**
   * The key code value of the key pressed or released.
   * <p><b>Note:</b> When an input method editor (IME) is running, <code>keyCode</code> does not report accurate key codes.</p>
   * @see flash.system.IME
   *
   */
  public function get keyCode():uint {
    return _keyCode;
  }

  /**
   * @private
   */
  public function set keyCode(value:uint):void {
    _keyCode = value;
  }

  /**
   * Indicates the location of the key on the keyboard. This is useful for differentiating keys that appear more than once on a keyboard. For example, you can differentiate between the left and right Shift keys by the value of this property: <code>KeyLocation.LEFT</code> for the left and <code>KeyLocation.RIGHT</code> for the right. Another example is differentiating between number keys pressed on the standard keyboard (<code>KeyLocation.STANDARD</code>) versus the numeric keypad (<code>KeyLocation.NUM_PAD</code>).
   */
  public function get keyLocation():uint {
    return _keyLocation;
  }

  /**
   * @private
   */
  public function set keyLocation(value:uint):void {
    _keyLocation = value;
  }

  /**
   * Indicates whether the Shift key modifier is active (<code>true</code>) or inactive (<code>false</code>).
   */
  public function get shiftKey():Boolean {
    return _shiftKey;
  }

  /**
   * @private
   */
  public function set shiftKey(value:Boolean):void {
    _shiftKey = value;
  }

  /**
   * Creates an Event object that contains specific information about keyboard events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Possible values are: <code>KeyboardEvent.KEY_DOWN</code> and <code>KeyboardEvent.KEY_UP</code>
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow.
   * @param cancelable Determines whether the Event object can be canceled.
   * @param charCodeValue The character code value of the key pressed or released. The character code values returned are English keyboard values. For example, if you press Shift+3, the <code>Keyboard.charCode()</code> property returns # on a Japanese keyboard, just as it does on an English keyboard.
   * @param keyCodeValue The key code value of the key pressed or released.
   * @param keyLocationValue The location of the key on the keyboard.
   * @param ctrlKeyValue On Windows, indicates whether the Ctrl key is activated. On Mac, indicates whether either the Ctrl key or the Command key is activated.
   * @param altKeyValue Indicates whether the Alt key modifier is activated (Windows only).
   * @param shiftKeyValue Indicates whether the Shift key modifier is activated.
   * @param controlKeyValue Indicates whether the Control key is activated on Mac, and whether the Control or Ctrl keys are activated on WIndows and Linux.
   * @param commandKeyValue Indicates whether the Command key is activated (Mac only).
   *
   * @see #KEY_DOWN
   * @see #KEY_UP
   * @see #charCode
   *
   */
  public function KeyboardEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, charCodeValue:uint = 0, keyCodeValue:uint = 0, keyLocationValue:uint = 0, ctrlKeyValue:Boolean = false, altKeyValue:Boolean = false, shiftKeyValue:Boolean = false, controlKeyValue:Boolean = false, commandKeyValue:Boolean = false) {
    super(type, bubbles, cancelable);
    _charCode = charCodeValue;
    _keyCode = keyCodeValue;
    _keyLocation = keyLocationValue;
    _ctrlKey = ctrlKeyValue;
    _altKey = altKeyValue;
    _shiftKey = shiftKeyValue;
    _controlKey = controlKeyValue;
    _commandKey = commandKeyValue;
  }

  /**
   * Creates a copy of the KeyboardEvent object and sets the value of each property to match that of the original.
   * @return A new KeyboardEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    return new KeyboardEvent(type, bubbles, cancelable, _charCode, _keyCode, _keyLocation, _ctrlKey, _altKey,
      _shiftKey, _controlKey, _commandKey);
  }

  /**
   * Returns a string that contains all the properties of the KeyboardEvent object. The string is in the following format:
   * <p><code>[KeyboardEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... shiftKey=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the KeyboardEvent object.
   *
   */
  override public function toString():String {
    return formatToString("KeyboardEvent", "type", "bubbles", "cancelable",
      "charCode", "keyCode", "keyLocation", "ctrlKey", "altKey", "shiftKey", "controlKey", "commandKey");
  }

  /**
   * Indicates that the display should be rendered after processing of this event completes, if the display list has been modified
   */
  public function updateAfterEvent():void {
    // TODO: implement!
  }

  /**
   * The <code>KeyboardEvent.KEY_DOWN</code> constant defines the value of the <code>type</code> property of a <code>keyDown</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>true</code> in AIR, <code>false</code> in Flash Player; in AIR, canceling this event prevents the character from being entered into a text field.</td></tr>
   * <tr>
   * <td><code>charCode</code></td>
   * <td>The character code value of the key pressed or released.</td></tr>
   * <tr>
   * <td><code>commandKey</code></td>
   * <td><code>true</code> on Mac if the Command key is active. Otherwise, <code>false</code></td></tr>
   * <tr>
   * <td><code>controlKey</code></td>
   * <td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Control key is active. Otherwise, <code>false</code></td></tr>
   * <tr>
   * <td><code>ctrlKey</code></td>
   * <td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Ctrl key or the Command key is active. Otherwise, <code>false</code>.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>keyCode</code></td>
   * <td>The key code value of the key pressed or released.</td></tr>
   * <tr>
   * <td><code>keyLocation</code></td>
   * <td>The location of the key on the keyboard.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance with focus. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:keyDown
   *
   */
  public static const KEY_DOWN:String = "keyDown";
  /**
   * The <code>KeyboardEvent.KEY_UP</code> constant defines the value of the <code>type</code> property of a <code>keyUp</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>charCode</code></td>
   * <td>Contains the character code value of the key pressed or released.</td></tr>
   * <tr>
   * <td><code>commandKey</code></td>
   * <td><code>true</code> on Mac if the Command key is active. Otherwise, <code>false</code></td></tr>
   * <tr>
   * <td><code>controlKey</code></td>
   * <td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Control key is active. Otherwise, <code>false</code></td></tr>
   * <tr>
   * <td><code>ctrlKey</code></td>
   * <td><code>true</code> on Windows if the Ctrl key is active. <code>true</code> on Mac if either the Ctrl key or the Command key is active. Otherwise, <code>false</code>.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>keyCode</code></td>
   * <td>The key code value of the key pressed or released.</td></tr>
   * <tr>
   * <td><code>keyLocation</code></td>
   * <td>The location of the key on the keyboard.</td></tr>
   * <tr>
   * <td><code>shiftKey</code></td>
   * <td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The InteractiveObject instance with focus. The <code>target</code> is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.display.InteractiveObject#event:keyUp
   *
   */
  public static const KEY_UP:String = "keyUp";

  private var _altKey:Boolean;
  private var _charCode:uint;
  private var _commandKey:Boolean;
  private var _controlKey:Boolean;
  private var _ctrlKey:Boolean;
  private var _keyCode:uint;
  private var _keyLocation:uint;
  private var _shiftKey:Boolean;

}
}