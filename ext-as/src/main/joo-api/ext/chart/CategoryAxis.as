package ext.chart {


/**
 * A type of axis that displays items in categories.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.CategoryAxis Ext JS source
 */
public class CategoryAxis extends Axis {

  /**
   *
   *
   */
  public function CategoryAxis() {
    super();
  }

  /**
   Indicates whether or not to calculate the number of categories (ticks and labels) when there is not enough room to display all labels on the axis. If set to true, the axis will determine the number of categories to plot. If not, all categories will be plotted.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CategoryAxis-calculateCategoryCount Ext JS source
   */
  public native function get calculateCategoryCount():Boolean;

  /**
   * @private
   */
  public native function set calculateCategoryCount(value:Boolean):void;

  /**
   A list of category names to display along this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.CategoryAxis-categoryNames Ext JS source
   */
  public native function get categoryNames():Array;

  /**
   * @private
   */
  public native function set categoryNames(value:Array):void;

}
}
    