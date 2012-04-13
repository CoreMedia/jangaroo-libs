package ext.chart {


/**
 * A type of axis that displays items in categories.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CategoryAxis Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CategoryAxis-property-calculateCategoryCount Sencha Docs Ext JS 3.4
   */
  public native function get calculateCategoryCount():Boolean;

  /**
   * @private
   */
  public native function set calculateCategoryCount(value:Boolean):void;

  /**
   A list of category names to display along this axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.CategoryAxis-property-categoryNames Sencha Docs Ext JS 3.4
   */
  public native function get categoryNames():Array;

  /**
   * @private
   */
  public native function set categoryNames(value:Array):void;

}
}
    