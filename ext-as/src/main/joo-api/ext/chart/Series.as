package ext.chart {


/**
 * Series class for the charts widget.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.Series Ext JS source
 */
public class Series {

  /**
   *
   *
   */
  public function Series() {
    super();
  }

  /**
   The human-readable name of the series.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Series-displayName Ext JS source
   */
  public native function get displayName():String;

  /**
   * @private
   */
  public native function set displayName(value:String):void;

  /**
   The type of series.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Series-type Ext JS source
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;

}
}
    