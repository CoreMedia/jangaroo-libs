package flash.events {

/**
 * An object dispatches a StatusEvent object when a device, such as a camera or microphone, or an object such as a LocalConnection object reports its status. There is only one type of status event: <code>StatusEvent.STATUS</code>.
 * @see flash.media.Camera
 * @see flash.media.Microphone
 * @see flash.net.LocalConnection
 * @see flash.sensors.Accelerometer
 * @see flash.sensors.Geolocation
 * @see air.net.ServiceMonitor
 *
 */
public class StatusEvent extends Event {
  /**
   * A description of the object's status.
   * @see flash.media.Camera
   * @see flash.media.Microphone
   * @see flash.net.LocalConnection
   *
   */
  public function get code():String {
    return _code;
  }

  /**
   * @private
   */
  public function set code(value:String):void {
    _code = value;
  }

  /**
   * The category of the message, such as <code>"status"</code>, <code>"warning"</code> or <code>"error"</code>.
   * @see flash.media.Camera
   * @see flash.media.Microphone
   * @see flash.net.LocalConnection
   *
   */
  public function get level():String {
    return _level;
  }

  /**
   * @private
   */
  public function set level(value:String):void {
    _level = value;
  }

  /**
   * Creates an Event object that contains information about status events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of status event: <code>StatusEvent.STATUS</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param code A description of the object's status. Event listeners can access this information through the <code>code</code> property.
   * @param level The category of the message, such as <code>"status"</code>, <code>"warning"</code> or <code>"error"</code>. Event listeners can access this information through the <code>level</code> property.
   *
   * @see #STATUS
   *
   */
  public function StatusEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, code:String = "", level:String = "") {
    super(type, bubbles, cancelable);
    _code = code;
    _level = level;
  }

  /**
   * Creates a copy of the StatusEvent object and sets the value of each property to match that of the original.
   * @return A new StatusEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    return new StatusEvent(type, bubbles, cancelable, _code, _level);
  }

  /**
   * Returns a string that contains all the properties of the StatusEvent object. The string is in the following format:
   * <p><code>[StatusEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> code=<i>value</i> level=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the StatusEvent object.
   *
   */
  override public function toString():String {
    return this.formatToString("StatusEvent", "type", "bubbles", "cancelable", "code", "level");
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>status</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>code</code></td>
   * <td>A description of the object's status.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>level</code></td>
   * <td>The category of the message, such as <code>"status"</code>, <code>"warning"</code> or <code>"error"</code>.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The object reporting its status.</td></tr></table>
   * @see flash.media.Camera#event:status
   * @see flash.media.Microphone#event:status
   * @see flash.net.LocalConnection#event:status
   * @see flash.net.NetStream#event:status
   * @see flash.sensors.Geolocation#event:status
   * @see flash.sensors.Accelerometer#event:status
   *
   */
  public static const STATUS:String = "status";

  private var _code:String;
  private var _level:String;
}
}
