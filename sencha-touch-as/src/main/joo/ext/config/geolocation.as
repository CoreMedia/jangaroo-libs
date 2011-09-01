package ext.config {

import ext.form.Number;

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
 * <p>This class serves as a
 * typed config object for constructor of class GeoLocation.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.GeoLocation
 */
[ExtConfig(target="ext.util.GeoLocation")]
public class geolocation extends observable {

  public function geolocation(config:Object = null) {

    super(config);
  }


  /**
   Defaults to false.<br/>When set to true, provide a hint that the application would like to receive the best possible results. This may result in slower response times or increased power consumption. The user might also deny this capability, or the device might not be able to provide more accurate results than if this option was set to false.
   */
  public native function get allowHighAccuracy():Boolean;

  /**
   * @private
   */
  public native function set allowHighAccuracy(value:Boolean):void;

  /**
   Defaults to true.<br/>When set to true, continually monitor the location of the device (beginning immediately) and fire <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a>/<a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> events.<br/><br/>When using google gears, if the user denies access or another error occurs, this will be reset to false.
   */
  public native function get autoUpdate():Boolean;

  /**
   * @private
   */
  public native function set autoUpdate(value:Boolean):void;

  /**
   Defaults to 0.<br/>This option indicates that the application is willing to accept cached location information whose age is no greater than the specified time in milliseconds. If maximumAge is set to 0, an attempt to retrieve new location information is made immediately.<br/>Setting the maximumAge to Infinity returns a cached position regardless of its age.<br/>If the device does not have cached location information available whose age is no greater than the specified maximumAge, then it must acquire new location information.<br/>For example, if location information no older than 10 minutes is required, set this property to 600000.
   */
  public native function get maximumAge():ext.form.Number;

  /**
   * @private
   */
  public native function set maximumAge(value:ext.form.Number):void;

  /**
   Defaults to Infinity.<br/>The maximum number of milliseconds allowed to elapse between a location update operation and the corresponding <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationupdate">locationupdate</a> event being raised. If a location was not successfully acquired before the given timeout elapses (and no other internal errors have occurred in this interval), then a <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event will be raised indicating a timeout as the cause.<br/>Note that the time that is spent obtaining the user permission is <b>not</b> included in the period covered by the timeout. The timeout attribute only applies to the location acquisition operation.<br/>In the case of calling updateLocation, the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event will be raised only once.<br/>If <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> is set to true, the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-locationerror">locationerror</a> event could be raised repeatedly. The first timeout is relative to the moment <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> was set to true (or this <a href="Ext.util.GeoLocation.html">Ext.util.GeoLocation</a> was initialized with the <a href="output/Ext.util.GeoLocation.html#Ext.util.GeoLocation-autoUpdate">autoUpdate</a> config option set to true). Subsequent timeouts are relative to the moment when the device determines that it's position has changed.
   */
  public native function get timeout():ext.form.Number;

  /**
   * @private
   */
  public native function set timeout(value:ext.form.Number):void;


}
}
    