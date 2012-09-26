package flash.events {


/**
 * The Accelerometer class dispatches AccelerometerEvent objects when acceleration updates are obtained from the Accelerometer sensor installed on the device.
 * @see flash.sensors.Accelerometer
 *
 */
public class AccelerometerEvent extends Event {
  /**
   * Acceleration along the x-axis, measured in Gs. (1 G is roughly 9.8 m/sec/sec.) The x-axis runs from the left to the right of the device when it is in the upright position. The acceleration is positive if the device moves towards the right.
   */
  public function get accelerationX():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set accelerationX(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Acceleration along the y-axis, measured in Gs. (1 G is roughly 9.8 m/sec/sec.). The y-axis runs from the bottom to the top of the device when it is in the upright position. The acceleration is positive if the device moves up relative to this axis.
   */
  public function get accelerationY():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set accelerationY(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Acceleration along the z-axis, measured in Gs. (1 G is roughly 9.8 m/sec/sec.). The z-axis runs perpendicular to the face of the device. The acceleration is positive if you move the device so that the face moves higher.
   */
  public function get accelerationZ():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set accelerationZ(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The number of milliseconds at the time of the event since the runtime was initialized. For example, if the device captures accelerometer data 4 seconds after the application initializes, then the <code>timestamp</code> property of the event is set to 4000.
   */
  public function get timestamp():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set timestamp(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an AccelerometerEvent object that contains information about acceleration along three dimensional axis. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of update event: <code>AccelerometerEvent.UPDATE</code>.
   * @param bubbles Determines whether the Event object bubbles. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param timestamp The timestamp of the Accelerometer update.
   * @param accelerationX The acceleration value in Gs (9.8m/sec/sec) along the x-axis.
   * @param accelerationY The acceleration value in Gs (9.8m/sec/sec) along the y-axis.
   * @param accelerationZ The acceleration value in Gs (9.8m/sec/sec) along the z-axis.
   *
   */
  public function AccelerometerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, timestamp:Number = 0, accelerationX:Number = 0, accelerationY:Number = 0, accelerationZ:Number = 0) {
    super(type, bubbles, cancelable);
  }

  /**
   * Creates a copy of an AccelerometerEvent object and sets the value of each property to match that of the original.
   * @return A new AccelerometerEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that contains all the properties of the AccelerometerEvent object. The following format is used:
   * <p><code>[AccelerometerEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> timestamp=<i>value</i> accelerationX=<i>value</i> accelerationY=<i>value</i> accelerationZ=<i>value</i> ]</code></p>
   * @return A string that contains all the properties of the AccelerometerEvent object.
   *
   */
  override public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>AccelerometerEvent</code> event object.
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
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>timestamp</code></td>
   * <td>The timestamp of the Accelerometer update.</td></tr>
   * <tr>
   * <td><code>accelerationX</code></td>
   * <td>The acceleration value in Gs (9.8m/sec/sec) along the x-axis.</td></tr>
   * <tr>
   * <td><code>accelerationY</code></td>
   * <td>The acceleration value in Gs (9.8m/sec/sec) along the y-axis.</td></tr>
   * <tr>
   * <td><code>accelerationZ</code></td>
   * <td>The acceleration value in Gs (9.8m/sec/sec) along the z-axis.</td></tr></table>
   */
  public static const UPDATE:String = "update";
}
}
