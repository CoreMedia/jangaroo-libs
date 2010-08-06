package ext.dd {

import ext.EventObjectClass;

/**
 * A simple class that provides the basic implementation needed to make any element a drop target that can have
 * draggable items dropped onto it.  The drop has no effect until an implementation of notifyDrop is provided.
*/
public class DropTarget extends DDTarget {
/**
 * @constructor
 * @param el The container element
 * @param config
 */
public function DropTarget(el : *, config : Object) {
  super(null, null, config);
  el++;
}
    /**
     * @cfg {String} ddGroup
     * A named drag drop group to which this object belongs.  If a group is specified, then this object will only
     * interact with other drag drop objects in the same group (defaults to undefined).
     */
    /**
     * @cfg {String} overClass
     * The CSS class applied to the drop target element while the drag source is over it (defaults to "").
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
    protected var isNotifyTarget ;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop target that the source is now over the
     * target.  This default implementation adds the CSS class specified by overClass (if any) to the drop element
     * and returns the dropAllowed config value.  This method should be overridden if drop validation is required.
     * @param source The drag source that was dragged over this drop target
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    public native function notifyEnter(source : DragSource, e : EventObjectClass, data : Object) : String;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls continuously while it is being dragged over the target.
     * This method will be called on every mouse movement while the drag source is over the drop target.
     * This default implementation simply returns the dropAllowed config value.
     * @param source The drag source that was dragged over this drop target
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    public native function notifyOver(source : DragSource, e : EventObjectClass, data : Object) : String;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop target that the source has been dragged
     * out of the target without dropping.  This default implementation simply removes the CSS class specified by
     * overClass (if any) from the drop element.
     * @param source The drag source that was dragged over this drop target
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     */
    public native function notifyOut(source : DragSource, e : EventObjectClass, data : Object) : void;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop target that the dragged item has
     * been dropped on it.  This method has no default implementation and returns false, so you must provide an
     * implementation that does something to process the drop event and returns true so that the drag source's
     * repair action does not run.
     * @param source The drag source that was dragged over this drop target
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return True if the drop was valid, else false
     */
    public native function notifyDrop(source : DragSource, e : EventObjectClass, data : Object) : Boolean;
}}
