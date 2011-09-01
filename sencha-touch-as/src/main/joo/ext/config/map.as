package ext.config {


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
 * <p>This class represents the xtype 'map' and serves as a
 * typed config object for constructor of class Map.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Map
 */
[ExtConfig(target="ext.Map", xtype="map")]
public class map extends component {

  public function map(config:Object = null) {

    super(config);
  }


  /**
   The base CSS class to apply to the Maps's element (defaults to <code>'x-map'</code>).
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   MapOptions as specified by the Google Documentation: http://code.google.com/apis/maps/documentation/v3/reference.html
   */
  public native function get mapOptions():Object;

  /**
   * @private
   */
  public native function set mapOptions(value:Object):void;

  /**
   Masks the map (Defaults to false)
   */
  public native function get maskMap():Boolean;

  /**
   * @private
   */
  public native function set maskMap(value:Boolean):void;

  /**
   CSS class to add to the map when maskMap is set to true.
   */
  public native function get maskMapCls():Strng;

  /**
   * @private
   */
  public native function set maskMapCls(value:Strng):void;

  /**
   Pass in true to center the map based on the geolocation coordinates.
   */
  public native function get useCurrentLocation():Boolean;

  /**
   * @private
   */
  public native function set useCurrentLocation(value:Boolean):void;


}
}
    