package flash.events {

/**
 * A KeyboardEvent object id dispatched in response to user input through a keyboard.
 * There are two types of keyboard events: <code>KeyboardEvent.KEY_DOWN</code> and
 * <code>KeyboardEvent.KEY_UP</code>
 * <p>Because mappings between keys and specific characters vary by device
 * and operating system, use the TextEvent event type for processing character input.</p>
 *
 * <p>To listen globally for key events, listen on the Stage for the capture and target
 * or bubble phase.</p>
 *
 * @example
 * The following example uses the <code>KeyboardEventExample</code> class to show
 * keyboard events and their listener functions. The example carries out the following tasks:
 * <ul>
 * <li>It creates a new Sprite instance named <code>child</code>.</li>
 * <li>It declares properties for later use in setting a square's background color and size.</li>
 * <li>Using methods of Sprite, it draws a light-blue square that it displays on the Stage at default coordinates
 *  (0,0) by calling the <code>addChild()</code> method.</li>
 * <li>It adds one mouse event and two keyboard type event listeners:
 *   <ul>
 *   <li><code>click</code>/<code>clickHandler</code> which is dispatched when you click on the square to set focus on
 *     the <code>child</code> sprite so it can listen for keyboard events.</li>
 *   <li><code>keyDown</code>/<code>keyDownHandler</code> which is dispatched whenever any key  is pressed. The
 *     subscriber method prints information about the event using the <code>trace()</code> statement.</li>
 *   <li><code>keyUp</code>/<code>keyUpHandler</code> which is dispatched when a key is released.</li>
 *   </ul>
 * </li>
 * </ul>
 *
 * When you test this example, you need to click the square first for the keyboard events to work.
 *
 * <pre>
 * package {
 *     import flash.display.Sprite;
 *     import flash.display.DisplayObject;
 *     import flash.events.*;
 *
 *     public class KeyboardEventExample extends Sprite {
 *         private var child:Sprite = new Sprite();
 *         private var bgColor:uint = 0x00CCFF;
 *         private var size:uint = 80;
 *
 *         public function KeyboardEventExample() {
 *             child.graphics.beginFill(bgColor);
 *             child.graphics.drawRect(0, 0, size, size);
 *             child.graphics.endFill();
 *             addChild(child);
 *             child.addEventListener(MouseEvent.CLICK, clickHandler);
 *             child.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
 *             child.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler);
 *
 *         }
 *
 *         private function clickHandler(event:MouseEvent):void {
 *             stage.focus = child;
 *         }
 *
 *         private function keyDownHandler(event:KeyboardEvent):void {
 *             trace("keyDownHandler: " + event.keyCode);
 *             trace("ctrlKey: " + event.ctrlKey);
 *             trace("keyLocation: " + event.keyLocation);
 *             trace("shiftKey: " + event.shiftKey);
 *             trace("altKey: " + event.altKey);
 *
 *         }
 *
 *         private function keyUpHandler(event:KeyboardEvent):void {
 *             trace("keyUpHandler: " + event.keyCode);
 *         }
 *
 *
 *     }
 * }
 * </pre>
 *
 * @see #KEY_DOWN
 * @see #KEY_UP
 * @see KeyLocation
 * @see http://livedocs.adobe.com/flex/3/html/events_11.html About keyboard events
 */
public class KeyboardEvent extends Event {

  /**
   * Indicates whether the Alt key is active (<code>true</code>) or inactive (<code>false</code>) on Windows;
   * indicates whether the Option key is active on Mac OS.
   */
  public var altKey:Boolean;

  /**
   * Contains the character code value of the key pressed or released.
   * The character code values are English keyboard values. For example,
   * if you press Shift+3, <code>charCode</code> is # on a Japanese keyboard,
   * just as it is on an English keyboard.
   * <p><b>Note: </b>When an input method editor (IME) is running,
   * <code>charCode</code> does not report accurate character codes.</p>
   * @see flash.system.IME
   */
  public var charCode:uint;

  /**
   * Indicates whether the Command key is active (<code>true</code>) or inactive (<code>false</code>).
   * Supported for Mac OS only. On Mac OS, the <code>commandKey</code> property has the same
   * value as the <code>ctrlKey</code> property.
   */
  public var commandKey:Boolean;

  /**
   * Indicates whether the Control key is active (<code>true</code>) or inactive (<code>false</code>).
   * On Windows and Linux, this is also true when the Ctrl key is active.
   */
  public var controlKey:Boolean;

  /**
   * On Windows and Linux, indicates whether the Ctrl key is active (<code>true</code>) or inactive (<code>false</code>);
   * On Mac OS, indicates whether either the Ctrl key or the Command key is active.
   */
  public var ctrlKey:Boolean;

  /**
   * The key code value of the key pressed or released.
   * <p><b>Note: </b>When an input method editor (IME) is running,
   * <code>keyCode</code> does not report accurate key codes.</p>
   * @see flash.system.IME
   */
  public var keyCode:uint;

  /**
   * Indicates the location of the key on the keyboard. This is useful for differentiating keys
   * that appear more than once on a keyboard. For example, you can differentiate between the
   * left and right Shift keys by the value of this property: <code>KeyLocation.LEFT</code>
   * for the left and <code>KeyLocation.RIGHT</code> for the right. Another example is
   * differentiating between number keys pressed on the standard keyboard
   * (<code>KeyLocation.STANDARD</code>) versus the numeric keypad (<code>KeyLocation.NUM_PAD</code>).
   */
  public var keyLocation:uint;

  /**
   * Indicates whether the Shift key modifier is active (<code>true</code>) or inactive
   * (<code>false</code>).
   */
  public var shiftKey:Boolean;

  /**
   * Creates an Event object that contains specific information about keyboard events.
   * Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Possible values are:
   * <code>KeyboardEvent.KEY_DOWN</code> and <code>KeyboardEvent.KEY_UP</code>
   *
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
   */
  public function KeyboardEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, charCodeValue:uint = 0,
                                keyCodeValue:uint = 0, keyLocationValue:uint = 0, ctrlKeyValue:Boolean = false,
                                altKeyValue:Boolean = false, shiftKeyValue:Boolean = false,
                                controlKeyValue:Boolean = false, commandKeyValue:Boolean = false) {
    super(type, bubbles, cancelable);
    charCode = charCodeValue;
    keyCode = keyCodeValue;
    keyLocation = keyLocationValue;
    ctrlKey = ctrlKeyValue;
    altKey = altKeyValue;
    shiftKey = shiftKeyValue;
    controlKey = controlKeyValue;
    commandKey = commandKeyValue;
  }

  /**
   * Creates a copy of the KeyboardEvent object and sets the value of each property to match that of the original.
   * @return EventA new KeyboardEvent object with property values that match those of the original.
   */
  override public function clone():Event {
    return null;
  }

  /**
   *  Returns a string that contains all the properties of the KeyboardEvent object. The string
   * is in the following format:
   * <p><code>[KeyboardEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... shiftKey=<i>value</i>]</code></p>
   *
   * @return String A string that contains all the properties of the KeyboardEvent object.
   */
  override public function toString():String {
    return null;
  }
  /**
   * Indicates that the display should be rendered after processing of this event completes, if the display
   * list has been modified.
   */
  public function updateAfterEvent():void {
  }

  /**
   * The <code>KeyboardEvent.KEY_DOWN</code> constant defines the value of the <code>type</code> property of a <code>keyDown</code> event object.
   *  <p>This event has the following properties:</p>
   * <table><tr><th>Property</th><th>Value</th></tr><tr><td><code>bubbles</code></td><td><code>true</code></td></tr><tr><td><code>cancelable</code></td><td><code>true</code> in AIR, <code>false</code> in Flash Player;
   *   in AIR, canceling this event prevents the character from being entered into a text field.</td></tr><tr><td><code>charCode</code></td><td>The character code value of the key pressed or released.</td></tr><tr><td><code>commandKey</code></td><td><code>true</code> on Mac if the Command key is active. Otherwise, <code>false</code></td></tr><tr><td><code>controlKey</code></td><td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Control key is active. Otherwise, <code>false</code></td></tr><tr><td><code>ctrlKey</code></td><td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Ctrl key or the Command key is active. Otherwise, <code>false</code>.</td></tr><tr><td><code>currentTarget</code></td><td>The object that is actively processing the Event
   * object with an event listener.</td></tr><tr><td><code>keyCode</code></td><td>The key code value of the key pressed or released.</td></tr><tr><td><code>keyLocation</code></td><td>The location of the key on the keyboard.</td></tr><tr><td><code>shiftKey</code></td><td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr><tr><td><code>target</code></td><td>The InteractiveObject instance with focus.
   * The <code>target</code> is not always the object in the display list
   * that registered the event listener. Use the <code>currentTarget</code>
   * property to access the object in the display list that is currently processing the event.</td></tr></table>
   *
   *
   * @see flash.display.InteractiveObject#keyDown
   */
  public static const KEY_DOWN : String = "keyDown";

   /**
   * The <code>KeyboardEvent.KEY_UP</code> constant defines the value of the <code>type</code> property of a <code>keyDown</code> event object.
   *  <p>This event has the following properties:</p>
   *
   * <table><tr><th>Property</th><th>Value</th></tr><tr><td><code>bubbles</code></td><td><code>true</code></td></tr><tr><td><code>cancelable</code></td><td><code>false</code>; there is no default behavior to cancel.</td></tr><tr><td><code>charCode</code></td><td>Contains the character code value of the key pressed or released.</td></tr><tr><td><code>commandKey</code></td><td><code>true</code> on Mac if the Command key is active. Otherwise, <code>false</code></td></tr><tr><td><code>controlKey</code></td><td><code>true</code> on Windows and Linux if the Ctrl key is active. <code>true</code> on Mac if either the Control key is active. Otherwise, <code>false</code></td></tr><tr><td><code>ctrlKey</code></td><td><code>true</code> on Windows if the Ctrl key is active. <code>true</code> on Mac if either the Ctrl key or the Command key is active. Otherwise, <code>false</code>.</td></tr><tr><td><code>currentTarget</code></td><td>The object that is actively processing the Event
   * object with an event listener.</td></tr><tr><td><code>keyCode</code></td><td>The key code value of the key pressed or released.</td></tr><tr><td><code>keyLocation</code></td><td>The location of the key on the keyboard.</td></tr><tr><td><code>shiftKey</code></td><td><code>true</code> if the Shift key is active; <code>false</code> if it is inactive.</td></tr><tr><td><code>target</code></td><td>The InteractiveObject instance with focus.
   * The <code>target</code> is not always the object in the display list
   * that registered the event listener. Use the <code>currentTarget</code>
   * property to access the object in the display list that is currently processing the event.</td></tr></table>
   *
   *
   * @see flash.display.InteractiveObject#keyUp
   */
  public static const KEY_UP : String = "keyUp";

}
}