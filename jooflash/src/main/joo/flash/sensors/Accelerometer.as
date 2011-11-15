package flash.sensors {
import flash.events.EventDispatcher;

/**
 * Dispatched when an accelerometer changes its status.
 * <p><b>Note:</b> On some devices, the accelerometer is always available. On such devices, an Accelerometer object never dispatches a <code>status</code> event.</p>
 * @eventType flash.events.StatusEvent.STATUS
 */
[Event(name="status", type="flash.events.StatusEvent")]
/**
 * The <code>update</code> event is dispatched in response to updates from the accelerometer sensor. The event is dispatched in the following circumstances:
 * <ul>
 * <li>When a new listener function is attached through <code>addEventListener()</code>, this event is delivered once to all the registered listeners for providing the current value of the accelerometer.</li>
 * <li>Whenever accelerometer updates are obtained from the platform at device determined intervals.</li>
 * <li>Whenever the application misses a change in the accelerometer (for example, the runtime is resuming after being idle).</li></ul>
 * @eventType flash.events.AccelerometerEvent.UPDATE
 */
[Event(name="update", type="flash.events.AccelerometerEvent")]

/**
 * The Accelerometer class dispatches events based on activity detected by the device's motion sensor. This data represents the device's location or movement along a 3-dimensional axis. When the device moves, the sensor detects this movement and returns acceleration data. The Accelerometer class provides methods to query whether or not accelerometer is supported, and also to set the rate at which acceleration events are dispatched.
 * <p><b>Note:</b> Use the <code>Accelerometer.isSupported</code> property to test the runtime environment for the ability to use this feature. While the Accelerometer class and its members are accessible to the Runtime Versions listed for each API entry, the current environment for the runtime determines the availability of this feature. For example, you can compile code using the Accelerometer class properties for Flash Player 10.1, but you need to use the <code>Accelerometer.isSupported</code> property to test for the availability of the Accelerometer feature in the current deployment environment for the Flash Player runtime. If <code>Accelerometer.isSupported</code> is <code>true</code> at runtime, then Accelerometer support currently exists.</p>
 * <p><i>AIR profile support:</i> This feature is supported only on mobile devices. It is not supported on desktop or AIR for TV devices. See <a href="http://help.adobe.com/en_US/air/build/WS144092a96ffef7cc16ddeea2126bb46b82f-8000.html">AIR Profile Support</a> for more information regarding API support across multiple profiles.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/sensors/Accelerometer.html#includeExamplesSummary">View the examples</a></p>
 * @see #isSupported
 * @see flash.events.AccelerometerEvent
 * @see http://www.riagora.com/2010/04/air-and-the-accelerometer/ Michael Chaize: AIR and the Accelerometer
 * @see http://www.riagora.com/2010/05/become-an-air-pilot/ Michael Chaize: Become an AIR Pilot
 *
 */
public class Accelerometer extends EventDispatcher {
  /**
   * The <code>isSupported</code> property is set to <code>true</code> if the accelerometer sensor is available on the device, otherwise it is set to <code>false</code>.
   * @example The following example uses the <code>Accelerometer.isSupported</code> property to test for Accelerometer support at runtime. If the current environment supports the Accelerometer feature, then an event listener is added to the Accelerometer object, and the associated handler populates the text field with the timestamp and acceleration values. Otherwise, the text field indicates that the feature is not supported in the current environment.
   * <listing>
   * var myTextField:TextField = new TextField();
   * myTextField.width = 200;
   * addChild(myTextField);
   * var acc1:Accelerometer = new Accelerometer();
   * var isSupported:Boolean = Accelerometer.isSupported;
   * checksupport();
   *
   * function checksupport():void {
   *     if (isSupported) {
   *         myTextField.text = "Accelerometer feature supported";
   *         acc1.addEventListener(AccelerometerEvent.UPDATE, updateHandler);
   *     } else {
   *         myTextField.text = "Accelerometer feature not supported";
   *     }
   * }
   *
   * function updateHandler(evt:AccelerometerEvent):void {
   *     myTextField.text = String("at: " + evt.timestamp + "\n" + "acceleration X: " + evt.accelerationX + "\n" + "acceleration Y: " + evt.accelerationY + "\n" + "acceleration Z: " + evt.accelerationZ);
   *
   * }
   * </listing>
   */
  public static function get isSupported():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether the user has denied access to the accelerometer (<code>true</code>) or allowed access (<code>false</code>). When this value changes, a <code>status</code> event is dispatched.
   * @see #event:status
   *
   */
  public function get muted():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new Accelerometer instance.
   */
  public function Accelerometer() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>setRequestedUpdateInterval</code> method is used to set the desired time interval for updates. The time interval is measured in milliseconds. The update interval is only used as a hint to conserve the battery power. The actual time between acceleration updates may be greater or lesser than this value. Any change in the update interval affects all registered listeners. You can use the Accelerometer class without calling the <code>setRequestedUpdateInterval()</code> method. In this case, the application receives updates based on the device's default interval.
   * @param interval The requested update interval. If <code>interval</code> is set to 0, then the minimum supported update interval is used.
   *
   * @throws ArgumentError The specified <code>interval</code> is less than zero.
   *
   */
  public function setRequestedUpdateInterval(interval:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
