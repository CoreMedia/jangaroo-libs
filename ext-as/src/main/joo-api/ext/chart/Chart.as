package ext.chart {
import ext.FlashComponent;
import ext.data.Store;

/**
 * The Ext.chart package provides the capability to visualize data with flash based charting.
 * Each chart binds directly to an ext.data.Store enabling automatic updates of the chart.
*/
public class Chart extends FlashComponent {

  public var refreshBuffer;

/**
 * @constructor
 * @xtype chart
 */
public function Chart() {
  super();
}
    /**
     * @cfg {Object} chartStyle
     * Sets styles for this chart. Contains a number of default values. Modifying this property will override
     * the base styles on the chart.
     */
    public var chartStyle : Object;
    /**
     * @cfg {String} url
     * The url to load the chart from. This defaults to ext.chart.Chart.CHART_URL, which should
     * be modified to point to the local charts resource.
     */
    /**
     * @cfg {Object} extraStyle
     * Contains extra styles that will be added or overwritten to the default chartStyle. Defaults to <code>null</code>.
     */
    public var extraStyle : Object;
    /**
     * @cfg {Boolean} disableCaching
     * True to add a "cache buster" to the end of the chart url. Defaults to true for Opera and IE.
     */
    public var disableCaching : Boolean;
    public var disableCacheParam;
    override protected native function initComponent() : void;
    /**
     * Sets a single style value on the Chart instance.
     *
     * @param name {String} Name of the Chart style value to change.
     * @param value {Object} New value to pass to the Chart style.
     */
     public native function setStyle(name, value) : void;
    /**
     * Resets all styles on the Chart instance.
     *
     * @param styles {Object} Initializer for all Chart styles.
     */
    public native function setStyles(styles) : void;
    /**
     * Sets the styles on all series in the Chart.
     *
     * @param styles {Array} Initializer for all Chart series styles.
     */
    public native function setSeriesStyles(styles) : void;
    public native function setCategoryNames(names) : void;
    public native function setTipRenderer(fn) : void;
    public native function setSeries(series) : void;
    /**
     * Changes the data store bound to this chart and refreshes it.
     * @param store The store to bind to this chart
     */
    public native function bindStore(store : Store, initial) : void;
    override protected native function onSwfReady(isReset : Boolean) : void;
    public native function delayRefresh() : void;
    public native function refresh() : void;
    public native function createFnProxy(fn, old) : void;
    override protected native function onDestroy() : void;
public static var PROXY_FN_ID = 0;
/**
 * Sets the url to load the chart from. This should be set to a local resource.
 * @static
 */
public static var CHART_URL  : String = 'http:/' + '/yui.yahooapis.com/2.7.0/build/charts/assets/charts.swf';
}}
