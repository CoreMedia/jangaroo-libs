package ext.chart {


/**
 * A type of axis whose units are measured in numeric values.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "chart.NumericAxis")]
public class NumericAxis extends Axis {

  /**
   *
   *
   */
  public function NumericAxis() {
    super();
  }

  /**
   Indicates whether to extend maximum beyond data's maximum to the nearest majorUnit.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-adjustMaximumByMajorUnit Sencha Docs Ext JS 3.4
   */
  public native function get adjustMaximumByMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set adjustMaximumByMajorUnit(value:Boolean):void;

  /**
   Indicates whether to extend the minimum beyond data's minimum to the nearest majorUnit.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-adjustMinimumByMajorUnit Sencha Docs Ext JS 3.4
   */
  public native function get adjustMinimumByMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set adjustMinimumByMajorUnit(value:Boolean):void;

  /**
   If true, and the bounds are calculated automatically, either the minimum or maximum will be set to zero.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-alwaysShowZero Sencha Docs Ext JS 3.4
   */
  public native function get alwaysShowZero():Boolean;

  /**
   * @private
   */
  public native function set alwaysShowZero(value:Boolean):void;

  /**
   Indicates whether to factor in the size of the labels when calculating a major unit.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-calculateByLabelSize Sencha Docs Ext JS 3.4
   */
  public native function get calculateByLabelSize():Boolean;

  /**
   * @private
   */
  public native function set calculateByLabelSize(value:Boolean):void;

  /**
   The spacing between major intervals on this axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-majorUnit Sencha Docs Ext JS 3.4
   */
  public native function get majorUnit():Number;

  /**
   * @private
   */
  public native function set majorUnit(value:Number):void;

  /**
   The maximum value drawn by the axis. If not set explicitly, the axis maximum will be calculated automatically.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-maximum Sencha Docs Ext JS 3.4
   */
  public native function get maximum():Number;

  /**
   * @private
   */
  public native function set maximum(value:Number):void;

  /**
   The minimum value drawn by the axis. If not set explicitly, the axis minimum will be calculated automatically.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-minimum Sencha Docs Ext JS 3.4
   */
  public native function get minimum():Number;

  /**
   * @private
   */
  public native function set minimum(value:Number):void;

  /**
   The spacing between minor intervals on this axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-minorUnit Sencha Docs Ext JS 3.4
   */
  public native function get minorUnit():Number;

  /**
   * @private
   */
  public native function set minorUnit(value:Number):void;

  /**
   Indicates the position of the axis relative to the chart
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-position Sencha Docs Ext JS 3.4
   */
  public native function get position():String;

  /**
   * @private
   */
  public native function set position(value:String):void;

  /**
   Indicates whether to round the major unit.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-roundMajorUnit Sencha Docs Ext JS 3.4
   */
  public native function get roundMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set roundMajorUnit(value:Boolean):void;

  /**
   The scaling algorithm to use on this axis. May be "linear" or "logarithmic".
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-scale Sencha Docs Ext JS 3.4
   */
  public native function get scale():String;

  /**
   * @private
   */
  public native function set scale(value:String):void;

  /**
   If true, the labels, ticks, gridlines, and other objects will snap to the nearest major or minor unit. If false, their position will be based on the minimum value.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.NumericAxis-property-snapToUnits Sencha Docs Ext JS 3.4
   */
  public native function get snapToUnits():Boolean;

  /**
   * @private
   */
  public native function set snapToUnits(value:Boolean):void;

}
}
    