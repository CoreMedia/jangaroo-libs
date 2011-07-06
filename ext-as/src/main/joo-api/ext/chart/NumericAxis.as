package ext.chart {


/**
 * A type of axis whose units are measured in numeric values.
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.NumericAxis Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-adjustMaximumByMajorUnit Ext JS source
   */
  public native function get adjustMaximumByMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set adjustMaximumByMajorUnit(value:Boolean):void;

  /**
   Indicates whether to extend the minimum beyond data's minimum to the nearest majorUnit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-adjustMinimumByMajorUnit Ext JS source
   */
  public native function get adjustMinimumByMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set adjustMinimumByMajorUnit(value:Boolean):void;

  /**
   If true, and the bounds are calculated automatically, either the minimum or maximum will be set to zero.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-alwaysShowZero Ext JS source
   */
  public native function get alwaysShowZero():Boolean;

  /**
   * @private
   */
  public native function set alwaysShowZero(value:Boolean):void;

  /**
   Indicates whether to factor in the size of the labels when calculating a major unit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-calculateByLabelSize Ext JS source
   */
  public native function get calculateByLabelSize():Boolean;

  /**
   * @private
   */
  public native function set calculateByLabelSize(value:Boolean):void;

  /**
   The spacing between major intervals on this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-majorUnit Ext JS source
   */
  public native function get majorUnit():Number;

  /**
   * @private
   */
  public native function set majorUnit(value:Number):void;

  /**
   The maximum value drawn by the axis. If not set explicitly, the axis maximum will be calculated automatically.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-maximum Ext JS source
   */
  public native function get maximum():Number;

  /**
   * @private
   */
  public native function set maximum(value:Number):void;

  /**
   The minimum value drawn by the axis. If not set explicitly, the axis minimum will be calculated automatically.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-minimum Ext JS source
   */
  public native function get minimum():Number;

  /**
   * @private
   */
  public native function set minimum(value:Number):void;

  /**
   The spacing between minor intervals on this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-minorUnit Ext JS source
   */
  public native function get minorUnit():Number;

  /**
   * @private
   */
  public native function set minorUnit(value:Number):void;

  /**
   Indicates the position of the axis relative to the chart
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-position Ext JS source
   */
  public native function get position():String;

  /**
   * @private
   */
  public native function set position(value:String):void;

  /**
   Indicates whether to round the major unit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-roundMajorUnit Ext JS source
   */
  public native function get roundMajorUnit():Boolean;

  /**
   * @private
   */
  public native function set roundMajorUnit(value:Boolean):void;

  /**
   The scaling algorithm to use on this axis. May be "linear" or "logarithmic".
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-scale Ext JS source
   */
  public native function get scale():String;

  /**
   * @private
   */
  public native function set scale(value:String):void;

  /**
   If true, the labels, ticks, gridlines, and other objects will snap to the nearest major or minor unit. If false, their position will be based on the minimum value.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.NumericAxis-snapToUnits Ext JS source
   */
  public native function get snapToUnits():Boolean;

  /**
   * @private
   */
  public native function set snapToUnits(value:Boolean):void;

}
}
    