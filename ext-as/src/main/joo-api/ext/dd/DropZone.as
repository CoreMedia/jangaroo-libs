package ext.dd {

import ext.EventObject;

/**
 * <p>This class provides a container DD instance that allows dropping on multiple child target nodes.</p>
 * <p>By default, this class requires that child nodes accepting drop are registered with <b class='link'>Ext.dd.Registry</b>.
 * However a simpler way to allow a DropZone to manage any number of target elements is to configure the
 * DropZone with an implementation of <b class='link'>#getTargetFromEvent</b> which interrogates the passed
 * mouse event to see if it has taken place within an element, or class of elements. This is easily done
 * by using the event's <b class='link' title='ext.EventObject#getTarget'>getTarget</b> method to identify a node based on a
 * <b class='link'>ext.DomQuery</b> selector.</p>
 * <p>Once the DropZone has detected through calling getTargetFromEvent, that the mouse is over
 * a drop target, that target is passed as the first parameter to <b class='link'>#onNodeEnter</b>, <b class='link'>#onNodeOver</b>,
 * <b class='link'>#onNodeOut</b>, <b class='link'>#onNodeDrop</b>. You may configure the instance of DropZone with implementations
 * of these methods to provide application-specific behaviour for these events to update both
 * application state, and UI state.</p>
 * <p>For example to make a GridPanel a cooperating target with the example illustrated in
 * <b class='link' title='Ext.dd.DragZone'>DragZone</b>, the following technique might be used:</p><pre><code>
myGridPanel.on('render', function() {
    myGridPanel.dropZone = new Ext.dd.DropZone(myGridPanel.getView().scroller, {

//      If the mouse is over a grid row, return that node. This is
//      provided as the "target" parameter in all "onNodeXXXX" node event handling functions
        getTargetFromEvent: function(e) {
            return e.getTarget(myGridPanel.getView().rowSelector);
        },

//      On entry into a target node, highlight that node.
        onNodeEnter : function(target, dd, e, data){ 
            Ext.fly(target).addClass('my-row-highlight-class');
        },

//      On exit from a target node, unhighlight that node.
        onNodeOut : function(target, dd, e, data){ 
            Ext.fly(target).removeClass('my-row-highlight-class');
        },

//      While over a target node, return the default drop allowed class which
//      places a "tick" icon into the drag proxy.
        onNodeOver : function(target, dd, e, data){ 
            return Ext.dd.DropZone.prototype.dropAllowed;
        },

//      On node drop we can interrogate the target to find the underlying
//      application object that is the real target of the dragged data.
//      In this case, it is a Record in the GridPanel's Store.
//      We can use the data set up by the DragZone's getDragData method to read
//      any data we decided to attach in the DragZone's getDragData method.
        onNodeDrop : function(target, dd, e, data){
            var rowIndex = myGridPanel.getView().findRowIndex(target);
            var r = myGridPanel.getStore().getAt(rowIndex);
            ext.Msg.alert('Drop gesture', 'Dropped Record id ' + data.draggedRecord.id +
                ' on Record id ' + r.id);
            return true;
        }
    });
}
</code></pre>
 * See the <b class='link' title='Ext.dd.DragZone'>DragZone</b> documentation for details about building a DragZone which
 * cooperates with this DropZone.
*/
public class DropZone extends DropTarget {
/**
 * @constructor
 * @param el The container element
 * @param config
 */
public function DropZone(el : *, config : Object) {
  super(el, config);
}
    /**
     * Returns a custom data object associated with the DOM node that is the target of the event.  By default
     * this looks up the event target in the <b class='link'>Ext.dd.Registry</b>, although you can override this method to
     * provide your own custom lookup.
     * @param e The event
     * @return data The custom data
     */
    public native function getTargetFromEvent(e : EventObject) : Object;
    /**
     * Called when the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> has entered a drop node
     * that has either been registered or detected by a configured implementation of <b class='link'>#getTargetFromEvent</b>.
     * This method has no default implementation and should be overridden to provide
     * node-specific processing if necessary.
     * @param nodeData The custom data associated with the drop node (this is the same value returned from 
     * <b class='link'>#getTargetFromEvent</b> for this node)
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     */
    public native function onNodeEnter(nodeData : Object, source : DragSource, e : EventObject, data : Object) : void;
    /**
     * Called while the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> is over a drop node
     * that has either been registered or detected by a configured implementation of <b class='link'>#getTargetFromEvent</b>.
     * The default implementation returns this.dropNotAllowed, so it should be
     * overridden to provide the proper feedback.
     * @param nodeData The custom data associated with the drop node (this is the same value returned from
     * <b class='link'>#getTargetFromEvent</b> for this node)
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    public native function onNodeOver(nodeData : Object, source : DragSource, e : EventObject, data : Object) : String;
    /**
     * Called when the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> has been dragged out of
     * the drop node without dropping.  This method has no default implementation and should be overridden to provide
     * node-specific processing if necessary.
     * @param nodeData The custom data associated with the drop node (this is the same value returned from
     * <b class='link'>#getTargetFromEvent</b> for this node)
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     */
    public native function onNodeOut(nodeData : Object, source : DragSource, e : EventObject, data : Object) : void;
    /**
     * Called when the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> has been dropped onto
     * the drop node.  The default implementation returns false, so it should be overridden to provide the
     * appropriate processing of the drop event and return true so that the drag source's repair action does not run.
     * @param nodeData The custom data associated with the drop node (this is the same value returned from
     * <b class='link'>#getTargetFromEvent</b> for this node)
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return True if the drop was valid, else false
     */
    public native function onNodeDrop(nodeData : Object, source : DragSource, e : EventObject, data : Object) : Boolean;
    /**
     * Called while the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> is being dragged over it,
     * but not over any of its registered drop nodes.  The default implementation returns this.dropNotAllowed, so
     * it should be overridden to provide the proper feedback if necessary.
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    public native function onContainerOver(source : DragSource, e : EventObject, data : Object) : String;
    /**
     * Called when the DropZone determines that a <b class='link'>Ext.dd.DragSource</b> has been dropped on it,
     * but not on any of its registered drop nodes.  The default implementation returns false, so it should be
     * overridden to provide the appropriate processing of the drop event if you need the drop zone itself to
     * be able to accept drops.  It should return true when valid so that the drag source's repair action does not run.
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return True if the drop was valid, else false
     */
    public native function onContainerDrop(source : DragSource, e : EventObject, data : Object) : Boolean;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop zone that the source is now over
     * the zone.  The default implementation returns this.dropNotAllowed and expects that only registered drop
     * nodes can process drag drop operations, so if you need the drop zone itself to be able to process drops
     * you should override this method and provide a custom implementation.
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    override public native function notifyEnter(source : DragSource, e : EventObject, data : Object) : String;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls continuously while it is being dragged over the drop zone.
     * This method will be called on every mouse movement while the drag source is over the drop zone.
     * It will call <b class='link'>#onNodeOver</b> while the drag source is over a registered node, and will also automatically
     * delegate to the appropriate node-specific methods as necessary when the drag source enters and exits
     * registered nodes (<b class='link'>#onNodeEnter</b>, <b class='link'>#onNodeOut</b>). If the drag source is not currently over a
     * registered node, it will call <b class='link'>#onContainerOver</b>.
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return status The CSS class that communicates the drop status back to the source so that the
     * underlying <b class='link'>Ext.dd.StatusProxy</b> can be updated
     */
    override public native function notifyOver(source : DragSource, e : EventObject, data : Object) : String;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop zone that the source has been dragged
     * out of the zone without dropping.  If the drag source is currently over a registered node, the notification
     * will be delegated to <b class='link'>#onNodeOut</b> for node-specific handling, otherwise it will be ignored.
     * @param source The drag source that was dragged over this drop target
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag zone
     */
    override public native function notifyOut(source : DragSource, e : EventObject, data : Object) : void;
    /**
     * The function a <b class='link'>Ext.dd.DragSource</b> calls once to notify this drop zone that the dragged item has
     * been dropped on it.  The drag zone will look up the target node based on the event passed in, and if there
     * is a node registered for that event, it will delegate to <b class='link'>#onNodeDrop</b> for node-specific handling,
     * otherwise it will call <b class='link'>#onContainerDrop</b>.
     * @param source The drag source that was dragged over this drop zone
     * @param e The event
     * @param data An object containing arbitrary data supplied by the drag source
     * @return True if the drop was valid, else false
     */
    override public native function notifyDrop(source : DragSource, e : EventObject, data : Object) : Boolean;
    protected native function triggerCacheRefresh() : void;
}}
