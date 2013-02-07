package ext.chart {


/**
 * Series class for the charts widget.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Series Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.chart.Series")]
public class Series
 {

  /**
   *
   *
   */
  public function Series() {
    super();
  }

  /**
   The human-readable name of the series.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Series-property-displayName Sencha Docs Ext JS 3.4
   */
  public native function get displayName():String;

  /**
   * @private
   */
  public native function set displayName(value:String):void;

  /**
   The type of series.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Series-property-type Sencha Docs Ext JS 3.4
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;

}
}
    