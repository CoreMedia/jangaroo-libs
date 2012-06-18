package ext.chart {


/**
 * CartesianSeries class for the charts widget.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CartesianSeries Sencha Docs Ext JS 3.4
 */
[Native]
public class CartesianSeries extends Series {

  /**
   *
   *
   */
  public function CartesianSeries() {
    super();
  }

  /**
   Indicates which axis the series will bind to
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CartesianSeries-property-axis Sencha Docs Ext JS 3.4
   */
  public native function get axis():String;

  /**
   * @private
   */
  public native function set axis(value:String):void;

  /**
   False to not show this series in the legend. Defaults to <tt>true</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CartesianSeries-property-showInLegend Sencha Docs Ext JS 3.4
   */
  public native function get showInLegend():Boolean;

  /**
   * @private
   */
  public native function set showInLegend(value:Boolean):void;

  /**
   The field used to access the x-axis value from the items from the data source.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CartesianSeries-property-xField Sencha Docs Ext JS 3.4
   */
  public native function get xField():String;

  /**
   * @private
   */
  public native function set xField(value:String):void;

  /**
   The field used to access the y-axis value from the items from the data source.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CartesianSeries-property-yField Sencha Docs Ext JS 3.4
   */
  public native function get yField():String;

  /**
   * @private
   */
  public native function set yField(value:String):void;

}
}
    