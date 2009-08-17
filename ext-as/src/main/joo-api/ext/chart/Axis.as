package ext.chart {
/**
 * Defines a CartesianChart's vertical or horizontal axis.
*/
public class Axis extends CartesianChart {
/**
 * @constructor
 */
public function Axis() {
  super();
}
    /**
     * The type of axis.
     *
     * @property type
     */
    public var type : String;
    /**
     * The direction in which the axis is drawn. May be "horizontal" or "vertical".
     *
     * @property orientation
     */
    public var orientation : String;
    /**
     * If true, the items on the axis will be drawn in opposite direction.
     *
     * @property reverse
     */
    public var reverse : Boolean;
    /**
     * A string reference to the globally-accessible function that may be called to
     * determine each of the label values for this axis.
     *
     * @property labelFunction
     */
    public var labelFunction : String;
    /**
     * If true, labels that overlap previously drawn labels on the axis will be hidden.
     *
     * @property hideOverlappingLabels
     */
    public var hideOverlappingLabels : Boolean;
/**
*/
}}
