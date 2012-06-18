package ext.util {

import ext.form.Number;

/**
 * Raised when a location retrieval operation failed.<br/>In the case of calling updateLocation, this event will be raised only once.<br/>If <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> is set to true, this event could be raised repeatedly. The first error is relative to the moment <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> was set to true (or this <a href="Ext.util.GeoLocation.html">Ext.util.GeoLocation</a> was initialized with the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> config option set to true). Subsequent errors are relative to the moment when the device determines that it's position has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.GeoLocation</code>

 *       </li>

 *       <li>
 *           <code>timeout:Boolean</code>
 Boolean indicating a timeout occurred
 *       </li>

 *       <li>
 *           <code>permissionDenied:Boolean</code>
 Boolean indicating the user denied the location request
 *       </li>

 *       <li>
 *           <code>locationUnavailable:Boolean</code>
 Boolean indicating that the location of the device could not be determined.<br/>For instance, one or more of the location providers used in the location acquisition process reported an internal error that caused the process to fail entirely.
 *       </li>

 *       <li>
 *           <code>message:String</code>
 An error message describing the details of the error encountered.<br/>This attribute is primarily intended for debugging and should not be used directly in an application user interface.
 *       </li>

 * </ul>
 */
[Event(name="locationerror")]

/**
 * Raised when a location retrieval operation has been completed successfully.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.GeoLocation</code>
 Retrieve the current location information from the GeoLocation object by using the read-only properties latitude, longitude, accuracy, altitude, altitudeAccuracy, heading, and speed.
 *       </li>

 * </ul>
 */
[Event(name="locationupdate")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>coords:&#42;</code>
 Will return false if geolocation fails (disabled, denied access, timed out).
 *       </li>

 *       <li>
 *           <code>this_:ext.util.GeoLocation</code>

 *       </li>

 * </ul>
 */
[Event(name="update")]


/**
 * Provides a cross browser class for retrieving location information.<br/><br/>Based on the <a href="http://dev.w3.org/geo/api/spec-source.html">Geolocation API Specification</a>.<br/>If the browser does not implement that specification (Internet Explorer 6-8), it can fallback on Google Gears as long as the browser has it installed, and the following javascript file from google is included on the page: <pre><code>&lt;script type="text/javascript" src="http://code.google.com/apis/gears/gears_init.js"&gt;&lt;/script&gt;</code></pre><br/>Note: Location implementations are only required to return timestamp, longitude, latitude, and accuracy.<br/>Other properties (altitude, altitudeAccuracy, heading, speed) can be null or sporadically returned.<br/><br/>When instantiated, by default this class immediately begins tracking location information, firing a <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a> event when new location information is available. To disable this location tracking (which may be battery intensive on mobile devices), set <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> to false.<br/>When this is done, only calls to <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-updateLocation">updateLocation</a> will trigger a location retrieval.<br/><br/>A <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event is raised when an error occurs retrieving the location, either due to a user denying the application access to it, or the browser not supporting it.<br/><br/>The below code shows a GeoLocation making a single retrieval of location information. <pre><code>var geo = new Ext.util.GeoLocation({
 autoUpdate: false,
 listeners: {
 locationupdate: function (geo) {
 alert('New latitude: ' + geo.latitude);
 },
 locationerror: function (   geo,
 bTimeout,
 bPermissionDenied,
 bLocationUnavailable,
 message) {
 if(bTimeout){
 alert('Timeout occurred.');
 }
 else{
 alert('Error occurred.');
 }
 }
 }
 });
 geo.updateLocation();</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.geolocation
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#cls-Ext.util.GeoLocation Ext JS source
 */
[Native]
public class GeoLocation extends Observable {

  /**
   *
   *
   * @see ext.config.geolocation
   */
  public function GeoLocation() {
    super();
  }

  /**
   Read-only property representing the last retrieved accuracy level of the latitude and longitude coordinates, specified in meters.<br/>This will always be a non-negative number.<br/>This corresponds to a 95% confidence level.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-accuracy Ext JS source
   */
  public native function get accuracy():ext.form.Number;

  /**
   * @private
   */
  public native function set accuracy(value:ext.form.Number):void;

  /**
   Read-only property representing the last retrieved height of the position, specified in meters above the ellipsoid <a href="http://dev.w3.org/geo/api/spec-source.html#ref-wgs">[WGS84]</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-altitude Ext JS source
   */
  public native function get altitude():*;

  /**
   * @private
   */
  public native function set altitude(value:*):void;

  /**
   Read-only property representing the last retrieved accuracy level of the altitude coordinate, specified in meters.<br/>If altitude is not null then this will be a non-negative number. Otherwise this returns null.<br/>This corresponds to a 95% confidence level.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-altitudeAccuracy Ext JS source
   */
  public native function get altitudeAccuracy():*;

  /**
   * @private
   */
  public native function set altitudeAccuracy(value:*):void;

  /**
   Read-only property representing the last retrieved direction of travel of the hosting device, specified in non-negative degrees between 0 and 359, counting clockwise relative to the true north.<br/>If speed is 0 (device is stationary), then this returns NaN
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-heading Ext JS source
   */
  public native function get heading():*;

  /**
   * @private
   */
  public native function set heading(value:*):void;

  /**
   Read-only property representing the last retrieved geographical coordinate specified in degrees.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-latitude Ext JS source
   */
  public native function get latitude():ext.form.Number;

  /**
   * @private
   */
  public native function set latitude(value:ext.form.Number):void;

  /**
   Read-only property representing the last retrieved geographical coordinate specified in degrees.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-longitude Ext JS source
   */
  public native function get longitude():ext.form.Number;

  /**
   * @private
   */
  public native function set longitude(value:ext.form.Number):void;

  /**
   Read-only property representing the last retrieved current ground speed of the device, specified in meters per second.<br/>If this feature is unsupported by the device, this returns null.<br/>If the device is stationary, this returns 0, otherwise it returns a non-negative number.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-speed Ext JS source
   */
  public native function get speed():*;

  /**
   * @private
   */
  public native function set speed(value:*):void;

  /**
   Read-only property representing when the last retrieved positioning information was acquired by the device.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#prop-Ext.util.GeoLocation-timestamp Ext JS source
   */
  public native function get timestamp():Date;

  /**
   * @private
   */
  public native function set timestamp(value:Date):void;

  /**
   Defaults to false.<br/>When set to true, provide a hint that the application would like to receive the best possible results. This may result in slower response times or increased power consumption. The user might also deny this capability, or the device might not be able to provide more accurate results than if this option was set to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowHighAccuracy():Boolean;

  /**
   Defaults to true.<br/>When set to true, continually monitor the location of the device (beginning immediately) and fire <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a>/<a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> events.<br/><br/>When using google gears, if the user denies access or another error occurs, this will be reset to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoUpdate():Boolean;

  /**
   Defaults to 0.<br/>This option indicates that the application is willing to accept cached location information whose age is no greater than the specified time in milliseconds. If maximumAge is set to 0, an attempt to retrieve new location information is made immediately.<br/>Setting the maximumAge to Infinity returns a cached position regardless of its age.<br/>If the device does not have cached location information available whose age is no greater than the specified maximumAge, then it must acquire new location information.<br/>For example, if location information no older than 10 minutes is required, set this property to 600000.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maximumAge():ext.form.Number;

  /**
   Defaults to Infinity.<br/>The maximum number of milliseconds allowed to elapse between a location update operation and the corresponding <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a> event being raised. If a location was not successfully acquired before the given timeout elapses (and no other internal errors have occurred in this interval), then a <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event will be raised indicating a timeout as the cause.<br/>Note that the time that is spent obtaining the user permission is <b>not</b> included in the period covered by the timeout. The timeout attribute only applies to the location acquisition operation.<br/>In the case of calling updateLocation, the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event will be raised only once.<br/>If <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> is set to true, the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event could be raised repeatedly. The first timeout is relative to the moment <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> was set to true (or this <a href="Ext.util.GeoLocation.html">Ext.util.GeoLocation</a> was initialized with the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> config option set to true). Subsequent timeouts are relative to the moment when the device determines that it's position has changed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get timeout():ext.form.Number;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-getLocation Ext JS source
   */
  public native function getLocation():void;

  /**
   * Changes the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-allowHighAccuracy">allowHighAccuracy</a> option and restarts any active location monitoring with the updated setting.
   *
   * @param allowHighAccuracy The value to set the allowHighAccuracy option to.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-setAllowHighAccuracy Ext JS source
   */
  public native function setAllowHighAccuracy(allowHighAccuracy:ext.form.Number):void;

  /**
   * Enabled/disables the auto-retrieval of the location information.<br/>If called with autoUpdate=true, it will execute an immediate location update and continue monitoring for location updates.<br/>If autoUpdate=false, any current location change monitoring will be disabled.
   *
   * @param autoUpdate Whether to start/stop location monitoring.
   * @return If enabling autoUpdate, returns false if the location tracking cannot begin due to an error supporting geolocation. A locationerror event is also fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-setAutoUpdate Ext JS source
   */
  public native function setAutoUpdate(autoUpdate:Boolean):Boolean;

  /**
   * Changes the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-maximumAge">maximumAge</a> option and restarts any active location monitoring with the updated setting.
   *
   * @param maximumAge The value to set the maximumAge option to.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-setMaximumAge Ext JS source
   */
  public native function setMaximumAge(maximumAge:ext.form.Number):void;

  /**
   * Changes the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-timeout">timeout</a> option and restarts any active location monitoring with the updated setting.
   *
   * @param timeout The value to set the timeout option to.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-setTimeout Ext JS source
   */
  public native function setTimeout(timeout:ext.form.Number):void;

  /**
   * Executes a onetime location update operation, raising either a <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a> or <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event.<br/>Does not interfere with or restart ongoing location monitoring.
   *
   * @param callback A callback method to be called when the location retrieval has been completed.<br/>Will be called on both success and failure.<br/>The method will be passed one parameter, <a href="Ext.GeoLocation.html">Ext.GeoLocation</a> (<b>this</b> reference), set to null on failure. <pre><code>geo.updateLocation(function (geo) {
   alert('Latitude: ' + (geo != null ? geo.latitude : 'failed'));
   });
   </code></pre>
   * @param scope (optional) The scope (<b>this</b> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b> <!--positonOptions undocumented param, see W3C spec-->
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GeoLocation.html#method-Ext.util.GeoLocation-updateLocation Ext JS source
   */
  public native function updateLocation(callback:Function, scope:Object = null):void;

}
}
    