package ext.chart {
public class CartesianChart extends Chart {
/**
 * @constructor
 * @xtype cartesianchart
 */
    override protected native function onSwfReady(isReset : Boolean) : void;
    public native function setXField(value) : void;
    public native function setYField(value) : void;
    public native function setXAxis(value) : void;
    public native function setYAxis(value) : void;
    public native function createAxis(axis, value) : void;
}}
