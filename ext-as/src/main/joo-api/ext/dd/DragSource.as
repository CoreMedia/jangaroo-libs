package ext.dd {
import ext.EventObjectClass;

import js.HTMLElement;

/**
 * A simple class that provides the basic implementation needed to make any element draggable.
*/
public class DragSource extends DDProxy {
/**
 * @constructor
 * @param el The container element
 * @param config
 */
public function DragSource(el : *, config : Object) {
  super(el, null, config);
}
    /**
     * @cfg {String} ddGroup
     * A named drag drop group to which this object belongs.  If a group is specified, then this object will only
     * interact with other drag drop objects in the same group (defaults to undefined).
     */
    /**
     * @cfg {String} dropAllowed
     * The CSS class returned to the drag source when drop is allowed (defaults to "x-dd-drop-ok").
     */
    public var dropAllowed  : String;
    /**
     * @cfg {String} dropNotAllowed
     * The CSS class returned to the drag source when drop is not allowed (defaults to "x-dd-drop-nodrop").
     */
    public var dropNotAllowed  : String;
    /**
     * Returns the data object associated with this drag source
     * @return data An object containing arbitrary data
     */
    public native function getDragData(e : EventObjectClass) : Object;
    override public native function onDragEnter(e:EventObjectClass, id:Object) : void;
                /**
                 * An empty function by default, but provided so that you can perform a custom action
                 * when the dragged item enters the drop target by providing an implementation.
                 * @param target The drop target
                 * @param e The event object
                 * @param id The id of the dragged element
                 * @method afterDragEnter
                 */
    /**
     * An empty function by default, but provided so that you can perform a custom action
     * before the dragged item enters the drop target and optionally cancel the onDragEnter.
     * @param target The drop target
     * @param e The event object
     * @param id The id of the dragged element
     * @return isValid True if the drag event is valid, else false to cancel
     */
    public native function beforeDragEnter(target : DragDrop, e : EventObjectClass, id : String) : Boolean;
  override public native function alignElWithMouse(el : HTMLElement, iPageX : int, iPageY : int) : void;
    override public native function onDragOver(e:EventObjectClass, id:Object) : void;
                /**
                 * An empty function by default, but provided so that you can perform a custom action
                 * while the dragged item is over the drop target by providing an implementation.
                 * @param target The drop target
                 * @param e The event object
                 * @param id The id of the dragged element
                 * @method afterDragOver
                 */
    /**
     * An empty function by default, but provided so that you can perform a custom action
     * while the dragged item is over the drop target and optionally cancel the onDragOver.
     * @param target The drop target
     * @param e The event object
     * @param id The id of the dragged element
     * @return isValid True if the drag event is valid, else false to cancel
     */
    public native function beforeDragOver(target : DragDrop, e : EventObjectClass, id : String) : Boolean;
    override public native function onDragOut(e:EventObjectClass, id:Object) : void;
                /**
                 * An empty function by default, but provided so that you can perform a custom action
                 * after the dragged item is dragged out of the target without dropping.
                 * @param target The drop target
                 * @param e The event object
                 * @param id The id of the dragged element
                 * @method afterDragOut
                 */
    /**
     * An empty function by default, but provided so that you can perform a custom action before the dragged
     * item is dragged out of the target without dropping, and optionally cancel the onDragOut.
     * @param target The drop target
     * @param e The event object
     * @param id The id of the dragged element
     * @return isValid True if the drag event is valid, else false to cancel
     */
    public native function beforeDragOut(target : DragDrop, e : EventObjectClass, id : String) : Boolean;
    override public native function onDragDrop(e:EventObjectClass, id:Object) : void;
                /**
                 * An empty function by default, but provided so that you can perform a custom action
                 * after a valid drag drop has occurred by providing an implementation.
                 * @param target The drop target
                 * @param e The event object
                 * @param id The id of the dropped element
                 * @method afterDragDrop
                 */
    /**
     * An empty function by default, but provided so that you can perform a custom action before the dragged
     * item is dropped onto the target and optionally cancel the onDragDrop.
     * @param target The drop target
     * @param e The event object
     * @param id The id of the dragged element
     * @return isValid True if the drag drop event is valid, else false to cancel
     */
    public native function beforeDragDrop(target : DragDrop, e : EventObjectClass, id : String) : Boolean;
    protected native function onValidDrop(target, e, id) : void;
            /**
             * An empty function by default, but provided so that you can perform a custom action
             * after a valid drop has occurred by providing an implementation.
             * @param target The target DD 
             * @param e The event object
             * @param id The id of the dropped element
             * @method afterInvalidDrop
             */
    protected native function getRepairXY(target : Object, e : EventObjectClass, id : String) : void;
    override public native function onInvalidDrop(e:EventObjectClass) : void;
            /**
             * An empty function by default, but provided so that you can perform a custom action
             * after an invalid drop has occurred by providing an implementation.
             * @param e The event object
             * @param id The id of the dropped element
             * @method afterInvalidDrop
             */
    protected native function afterRepair(e : EventObjectClass, id : String) : void;
    /**
     * An empty function by default, but provided so that you can perform a custom action after an invalid
     * drop has occurred.
     * @param target The drop target
     * @param e The event object
     * @param id The id of the dragged element
     * @return isValid True if the invalid drop should proceed, else false to cancel
     */
    public native function beforeInvalidDrop(target : DragDrop, e : EventObjectClass, id : String) : Boolean;
    override protected native function handleMouseDown(e:EventObjectClass, oDD:DragDrop) : void;
    /**
     * An empty function by default, but provided so that you can perform a custom action before the initial
     * drag event begins and optionally cancel it.
     * @param data An object containing arbitrary data to be shared with drop targets
     * @param e The event object
     * @return isValid True if the drag event is valid, else false to cancel
     */
    public native function onBeforeDrag(data : Object, e : EventObjectClass) : Boolean;
    /**
     * An empty function by default, but provided so that you can perform a custom action once the initial
     * drag event has begun.  The drag cannot be canceled from this function.
     * @param x The x position of the click on the dragged object
     * @param y The y position of the click on the dragged object
     */
    public native function onStartDrag(x : Number, y : Number) : void;
    override public native function startDrag(x : Number, y : Number) : void;
    protected native function onInitDrag(x : Number, y : Number) : Boolean;
    /**
     * Returns the drag source's underlying <b class='link'>Ext.dd.StatusProxy</b>
     * @return proxy The StatusProxy
     */
    public native function getProxy() : StatusProxy;
    /**
     * Hides the drag source's <b class='link'>Ext.dd.StatusProxy</b>
     */
    public native function hideProxy() : void;
    protected native function triggerCacheRefresh() : void;
    override protected native function b4EndDrag(e:EventObjectClass) : void;
    override public native function endDrag(e:EventObjectClass) : void;
    protected native function onEndDrag(data, e : EventObjectClass) : void;
    override public native function autoOffset(iPageX : int, iPageY : int) : void;

    public var proxy : PanelProxy;
}}
