package ext.chart {
import ext.util.DateUtil;

/**
 * A type of axis whose units are measured in time-based values.
*/
public class TimeAxis extends Axis {
/**
 * @constructor
 */
public function TimeAxis() {
  super();
}
  //public var type;
    /**
     * The minimum value drawn by the axis. If not set explicitly, the axis minimum
     * will be calculated automatically.
     *
     * @property minimum
     */
    public var minimum : Date;
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
     * The time unit used by the majorUnit.
     *
     * @property majorTimeUnit
     */
    public var majorTimeUnit : String;
    /**
     * The spacing between minor intervals on this axis.
     *
     * @property majorUnit
     */
    public var minorUnit : Number;
    /**
     * The time unit used by the minorUnit.
     *
     * @property majorTimeUnit
     */
    public var minorTimeUnit : String;
    /**
     * If true, the labels, ticks, gridlines, and other objects will snap to
     * the nearest major or minor unit. If false, their position will be based
     * on the minimum value.
     *
     * @property snapToUnits
     */
    public var snapToUnits : Boolean;
}}
