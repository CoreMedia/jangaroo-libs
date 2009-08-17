package ext.dd {
import ext.util.Observable;

public class DragTracker extends Observable {
/**
     * @cfg {Boolean} active
	 * Defaults to <tt>false</tt>.
	 */	
    public var active : Boolean;
    /**
     * @cfg {Number} tolerance
	 * Defaults to <tt>5</tt>.
	 */	
    public var tolerance : Number;
    /**
     * @cfg {Boolean/Number} autoStart
	 * Defaults to <tt>false</tt>. Specify <tt>true</tt> to defer trigger start by 1000 ms.
	 * Specify a Number for the number of milliseconds to defer trigger start.
	 */	
    public var autoStart : *;
    public native function initEl(el) : void;
    public native function destroy() : void;
    public native function onMouseDown(e, target) : void;
    public native function onMouseMove(e, target) : void;
    public native function onMouseUp(e) : void;
    public native function triggerStart(isTimer) : void;
    public native function clearStart() : void;
    public native function stopSelect(e) : void;
    public native function onBeforeStart(e) : void;
    public native function onStart(xy) : void;
    public native function onDrag(e) : void;
    public native function onEnd(e) : void;
    public native function getDragTarget() : void;
    public native function getDragCt() : void;
    public native function getXY(constrain) : void;
    public native function getOffset(constrain) : void;
    public var constrainModes;
}}
