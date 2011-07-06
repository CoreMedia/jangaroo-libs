package ext.chart {


/**
 * A type of axis whose units are measured in time-based values.
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.TimeAxis Ext JS source
 */
public class TimeAxis extends Axis {

  /**
   *
   *
   */
  public function TimeAxis() {
    super();
  }

  /**
   Indicates whether to factor in the size of the labels when calculating a major unit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-calculateByLabelSize Ext JS source
   */
  public native function get calculateByLabelSize():Boolean;

  /**
   * @private
   */
  public native function set calculateByLabelSize(value:Boolean):void;

  /**
   The time unit used by the majorUnit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-majorTimeUnit Ext JS source
   */
  public native function get majorTimeUnit():String;

  /**
   * @private
   */
  public native function set majorTimeUnit(value:String):void;

  /**
   The spacing between major intervals on this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-majorUnit Ext JS source
   */
  public native function get majorUnit():Number;

  /**
   * @private
   */
  public native function set majorUnit(value:Number):void;

  /**
   The maximum value drawn by the axis. If not set explicitly, the axis maximum will be calculated automatically.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-maximum Ext JS source
   */
  public native function get maximum():Number;

  /**
   * @private
   */
  public native function set maximum(value:Number):void;

  /**
   The minimum value drawn by the axis. If not set explicitly, the axis minimum will be calculated automatically.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-minimum Ext JS source
   */
  public native function get minimum():Date;

  /**
   * @private
   */
  public native function set minimum(value:Date):void;

  /**
   The time unit used by the minorUnit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-minorTimeUnit Ext JS source
   */
  public native function get minorTimeUnit():String;

  /**
   * @private
   */
  public native function set minorTimeUnit(value:String):void;

  /**
   The spacing between minor intervals on this axis.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-minorUnit Ext JS source
   */
  public native function get minorUnit():Number;

  /**
   * @private
   */
  public native function set minorUnit(value:Number):void;

  /**
   If true, the labels, ticks, gridlines, and other objects will snap to the nearest major or minor unit. If false, their position will be based on the minimum value.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-snapToUnits Ext JS source
   */
  public native function get snapToUnits():Boolean;

  /**
   * @private
   */
  public native function set snapToUnits(value:Boolean):void;

  /**
   Series that are stackable will only stack when this value is set to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.TimeAxis-stackingEnabled Ext JS source
   */
  public native function get stackingEnabled():Boolean;

  /**
   * @private
   */
  public native function set stackingEnabled(value:Boolean):void;

}
}
    