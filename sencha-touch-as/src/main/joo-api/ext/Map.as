package ext {

import ext.config.map;
import ext.util.GeoLocation;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Map</code>

 *       </li>

 *       <li>
 *           <code>map:google.maps.Map</code>
 The rendered google.map.Map instance
 *       </li>

 *       <li>
 *           <code>center:google.maps.LatLong</code>
 The current LatLng center of the map
 *       </li>

 * </ul>
 */
[Event(name="centerchange")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Map</code>

 *       </li>

 *       <li>
 *           <code>map:google.maps.Map</code>
 The rendered google.map.Map instance
 *       </li>

 * </ul>
 */
[Event(name="maprender")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Map</code>

 *       </li>

 *       <li>
 *           <code>map:google.maps.Map</code>
 The rendered google.map.Map instance
 *       </li>

 *       <li>
 *           <code>mapType:ext.form.Number</code>
 The current display type of the map
 *       </li>

 * </ul>
 */
[Event(name="typechange")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Map</code>

 *       </li>

 *       <li>
 *           <code>map:google.maps.Map</code>
 The rendered google.map.Map instance
 *       </li>

 *       <li>
 *           <code>zoomLevel:ext.form.Number</code>
 The current zoom level of the map
 *       </li>

 * </ul>
 */
[Event(name="zoomchange")]


/**
 * Wraps a Google Map in an Ext.Component.<br/>http://code.google.com/apis/maps/documentation/v3/introduction.html
 <p>To use this component you must include an additional JavaScript file from Google:</p><pre><code>&lt;script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"&gt;&lt;/script&gt;</code></pre><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Map/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var pnl = new Ext.Panel({
 fullscreen: true,
 items     : [
 {
 xtype             : 'map',
 useCurrentLocation: true
 }
 ]
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'map' / the EXML element &lt;map>.</p>
 * @see ext.config.map
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Map.html#cls-Ext.Map Ext JS source
 */
[Native]
public class Map extends Component {

  /**
   * Create a new Map.
   *
   * @param config The config object
   * @see ext.config.map
   */
  public function Map(config:map = null) {
    super(null);
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Map.html#prop-Ext.Map-geo Ext JS source
   */
  public native function get geo():GeoLocation;

  /**
   * @private
   */
  public native function set geo(value:GeoLocation):void;

  /**
   The wrapped map.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Map.html#prop-Ext.Map-map Ext JS source
   */
  public native function get map():google.maps.Map;

  /**
   * @private
   */
  public native function set map(value:google.maps.Map):void;

  /**
   MapOptions as specified by the Google Documentation: http://code.google.com/apis/maps/documentation/v3/reference.html
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get mapOptions():Object;

  /**
   Masks the map (Defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maskMap():Boolean;

  /**
   CSS class to add to the map when maskMap is set to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maskMapCls():Strng;

  /**
   Pass in true to center the map based on the geolocation coordinates.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useCurrentLocation():Boolean;

  /**
   * Moves the map center to the designated coordinates hash of the form: <pre><code> { latitude : 37.381592,
   longitude : -122.135672
   }</code></pre>or a google.maps.LatLng object representing to the target location.
   *
   * @param htmlOrData If this component has been configured with a template via the tpl config then it will use this argument as data to populate the template. If this component was not configured with a template, the components content area will be updated via Ext.Element update
   * @param loadScripts Only legitimate when using the html configuration. Defaults to false
   * @param callback Only legitimate when using the html configuration. Callback to execute when scripts have finished loading
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Map.html#method-Ext.Map-update Ext JS source
   */
  override public native function update(htmlOrData:*, loadScripts:Boolean = false, callback:Function = null):void;

}
}
    