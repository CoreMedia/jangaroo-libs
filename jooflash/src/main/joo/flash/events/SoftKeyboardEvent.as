package flash.events {
import flash.display.InteractiveObject;

/**
 * A SoftKeyboardEvent object is dispatched when a software-driven keyboard is activated or de-activated on a device or operating system. A SoftKeyboardEvent object is dispatched by a TextField or InteractiveObject that has the <code>needsSoftKeyboard</code>property set to <code>true</code>.
 * @see flash.display.InteractiveObject#needsSoftKeyboard
 *
 */
public class SoftKeyboardEvent extends Event {
  /**
   * A reference to a display list object that is related to the event.
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
   * Indicates whether the change in keyboard status has been triggered by an application (such as programmatic use of <code>requestSoftKeyboard()</code>) or by the user (such as selecting a text field).
   * @see SoftKeyboardTrigger
   *
   */
  public function get triggerType():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an event object that contains information about soft keyboard activation and de-activation events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event as a constant value (such as <code>SOFT_KEYBOARD_ACTIVATE</code>). Event listeners can access this information through the inherited <code>type</code> property.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param relatedObjectVal A reference to a display list object that is related to the event.
   * @param triggerTypeVal Indicates whether the keyboard event was triggered by an application or user.
   *
   */
  public function SoftKeyboardEvent(type:String, bubbles:Boolean, cancelable:Boolean, relatedObjectVal:InteractiveObject, triggerTypeVal:String) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a copy of a SoftKeyboardEvent object and sets the value of each property to match that of the original.
   * @return A new SoftKeyboardEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the SoftKeyboardEvent object. The following format is used:
   * <p><code>[SoftKeyboardEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> relatedObjectVal=<i>value</i> triggerTypeVal=<i>value</i> activating=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the SoftKeyboardEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>SoftKeyboardEvent.SOFT_KEYBOARD_ACTIVATE</code> constant defines the value of the <code>type</code> property SoftKeyboardEvent object when a soft keyboard is displayed. For this event, <code>cancellable = false</code>.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>type</code></td>
   * <td><code>SOFT_KEYBOARD_ACTIVATE</code></td></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>relatedObjectVal</code></td>
   * <td>A reference to a display list object that is related to the event.</td></tr>
   * <tr>
   * <td><code>triggerTypeVal</code></td>
   * <td>Indicates whether the keyboard event was triggered by an application or user.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr></table>
   */
  public static const SOFT_KEYBOARD_ACTIVATE:String = "softKeyboardActivate";
  /**
   * The <code>SoftKeyboardEvent.SOFT_KEYBOARD_ACTIVATING</code> constant defines the value of the <code>type</code> property SoftKeyboardEvent object immediately before a soft keyboard is displayed. For this event, <code>cancellable = true</code>.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>type</code></td>
   * <td><code>SOFT_KEYBOARD_ACTIVATING</code></td></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>true</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>relatedObjectVal</code></td>
   * <td>A reference to a display list object that is related to the event.</td></tr>
   * <tr>
   * <td><code>triggerTypeVal</code></td>
   * <td>Indicates whether the keyboard event was triggered by an application or user.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr></table>
   */
  public static const SOFT_KEYBOARD_ACTIVATING:String = "softKeyboardActivating";
  /**
   * The <code>SoftKeyboardEvent.SOFT_KEYBOARD_DEACTIVATE</code> constant defines the value of the <code>type</code> property SoftKeyboardEvent object when a soft keyboard is lowered or hidden. For this event, <code>cancellable = false</code>.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>type</code></td>
   * <td><code>SOFT_KEYBOARD_DEACTIVATE</code></td></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>true</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>relatedObjectVal</code></td>
   * <td>A reference to a display list object that is related to the event.</td></tr>
   * <tr>
   * <td><code>triggerTypeVal</code></td>
   * <td>Indicates whether the keyboard event was triggered by an application or user.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr></table>
   */
  public static const SOFT_KEYBOARD_DEACTIVATE:String = "softKeyboardDeactivate";
}
}
