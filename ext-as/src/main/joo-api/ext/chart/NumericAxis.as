package ext.chart {
/**
 * A type of axis whose units are measured in numeric values.
*/
public class NumericAxis extends Axis {
/**
 * @constructor
 */
public function NumericAxis() {
  super();
}
//  public var type;
    /**
     * The minimum value drawn by the axis. If not set explicitly, the axis minimum
     * will be calculated automatically.
     *
     * @property minimum
     */
    public var minimum : Number;
    /**
     * The maximum value drawn by the axis. If not set explicitly, the axis maximum
     * will be calculated automatically.
     *
     * @property maximum
     */
    public var maximum : Number;
    /**
     * The spacing between major intervals on this axis.
     *
     * @property majorUnit
     */
    public var majorUnit : Number;
    /**
     * The spacing between minor intervals on this axis.
     *
     * @property minorUnit
     */
    public var minorUnit : Number;
    /**
     * If true, the labels, ticks, gridlines, and other objects will snap to
     * the nearest major or minor unit. If false, their position will be based
     * on the minimum value.
     *
     * @property snapToUnits
     */
    public var snapToUnits : Boolean;
    /**
     * If true, and the bounds are calculated automatically, either the minimum or
     * maximum will be set to zero.
     *
     * @property alwaysShowZero
     */
    public var alwaysShowZero : Boolean;
    /**
     * The scaling algorithm to use on this axis. May be "linear" or "logarithmic".
     *
     * @property scale
     */
    public var scale : String;
/**
*/
}}
