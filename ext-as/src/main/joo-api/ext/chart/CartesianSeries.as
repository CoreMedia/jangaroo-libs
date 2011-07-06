package ext.chart {


/**
 * CartesianSeries class for the charts widget.
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.CartesianSeries Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CartesianSeries-axis Ext JS source
   */
  public native function get axis():String;

  /**
   * @private
   */
  public native function set axis(value:String):void;

  /**
   False to not show this series in the legend. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CartesianSeries-showInLegend Ext JS source
   */
  public native function get showInLegend():Boolean;

  /**
   * @private
   */
  public native function set showInLegend(value:Boolean):void;

  /**
   The field used to access the x-axis value from the items from the data source.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CartesianSeries-xField Ext JS source
   */
  public native function get xField():String;

  /**
   * @private
   */
  public native function set xField(value:String):void;

  /**
   The field used to access the y-axis value from the items from the data source.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CartesianSeries-yField Ext JS source
   */
  public native function get yField():String;

  /**
   * @private
   */
  public native function set yField(value:String):void;

}
}
    