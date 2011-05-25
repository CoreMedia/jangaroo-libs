package ext.listview {

import ext.util.Observable;

/**
 * <p>Supporting Class for ext.ListView.</p>
*/
public class ColumnResizer extends Observable {
/**
 * @constructor
 * @param config
 */
public native function ColumnResizer(config:Object = null);
    /**
     * @cfg {Number} minPct The minimum percentage to allot for any column (defaults to <code>.05</code>)
     */
    public var minPct : Number;
    public native function constructor(config) : void;
    public native function init(listView) : void;
    public native function initEvents(view) : void;
    public native function handleHdMove(e, t) : void;
    public native function onBeforeStart(e) : void;
    public native function onStart(e) : void;
    public native function onDrag(e) : void;
    public native function onEnd(e) : void;
}}
