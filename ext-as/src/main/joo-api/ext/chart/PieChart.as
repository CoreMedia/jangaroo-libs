package ext.chart {
/**
*/
public class PieChart extends Chart {
/**
 * @constructor
 * @xtype piechart
 */
    public var type;
    override protected native function onSwfReady(isReset : Boolean) : void;
    public native function setDataField(field) : void;
    public native function setCategoryField(field) : void;
/**
*/
}}
