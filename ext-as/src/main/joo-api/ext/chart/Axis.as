package ext.chart {


/**
 * Defines a CartesianChart's vertical or horizontal axis.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.Axis Ext JS source
 */
public class Axis {

  /**
   *
   *
   */
  public function Axis() {
    super();
  }

  /**
   If true, labels that overlap previously drawn labels on the axis will be hidden.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-hideOverlappingLabels Ext JS source
   */
  public native function get hideOverlappingLabels():Boolean;

  /**
   * @private
   */
  public native function set hideOverlappingLabels(value:Boolean):void;

  /**
   A string reference to the globally-accessible function that may be called to determine each of the label values for this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-labelFunction Ext JS source
   */
  public native function get labelFunction():String;

  /**
   * @private
   */
  public native function set labelFunction(value:String):void;

  /**
   The space, in pixels, between labels on an axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-labelSpacing Ext JS source
   */
  public native function get labelSpacing():Number;

  /**
   * @private
   */
  public native function set labelSpacing(value:Number):void;

  /**
   The direction in which the axis is drawn. May be "horizontal" or "vertical".
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-orientation Ext JS source
   */
  public native function get orientation():String;

  /**
   * @private
   */
  public native function set orientation(value:String):void;

  /**
   If true, the items on the axis will be drawn in opposite direction.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-reverse Ext JS source
   */
  public native function get reverse():Boolean;

  /**
   * @private
   */
  public native function set reverse(value:Boolean):void;

  /**
   The type of axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Axis-type Ext JS source
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;

}
}
    