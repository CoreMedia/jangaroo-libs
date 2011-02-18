package ext.dd {
import ext.EventObjectClass;

/**
 * <p>This class provides a container DD instance that allows dragging of multiple child source nodes.</p>
 * <p>This class does not move the drag target nodes, but a proxy element which may contain
 * any DOM structure you wish. The DOM element to show in the proxy is provided by either a
 * provided implementation of <b class='link' title='#getDragData'>getDragData</b>, or by registered draggables registered with <b class='link'>Ext.dd.Registry</b></p>
 * <p>If you wish to provide draggability for an arbitrary number of DOM nodes, each of which represent some
 * application object (For example nodes in a <b class='link' title='ext.DataView'>DataView</b>) then use of this class
 * is the most efficient way to "activate" those nodes.</p>
 * <p>By default, this class requires that draggable child nodes are registered with <b class='link'>Ext.dd.Registry</b>.
 * However a simpler way to allow a DragZone to manage any number of draggable elements is to configure
 * the DragZone with  an implementation of the <b class='link' title='#getDragData'>getDragData</b> method which interrogates the passed
 * mouse event to see if it has taken place within an element, or class of elements. This is easily done
 * by using the event's <b class='link' title='ext.EventObjectClass#getTarget'>getTarget</b> method to identify a node based on a
 * <b class='link'>ext.DomQuery</b> selector. For example, to make the nodes of a DataView draggable, use the following
 * technique. Knowledge of the use of the DataView is required:</p><pre><code>
myDataView.on('render', function() {
    myDataView.dragZone = new Ext.dd.DragZone(myDataView.getEl(), {

//      On receipt of a mousedown event, see if it is within a DataView node.
//      Return a drag data object if so.
        getDragData: function(e) {

//          Use the DataView's own itemSelector (a mandatory property) to
//          test if the mousedown is within one of the DataView's nodes.
            var sourceEl = e.getTarget(myDataView.itemSelector, 10);

//          If the mousedown is within a DataView node, clone the node to produce
//          a ddel element for use by the drag proxy. Also add application data
//          to the returned data object.
            if (sourceEl) {
                d = sourceEl.cloneNode(true);
                d.id = Ext.id();
                return {
                    ddel: d,
                    sourceEl: sourceEl,
                    repairXY: Ext.fly(sourceEl).getXY(),
                    sourceStore: myDataView.store,
                    draggedRecord: v.getRecord(sourceEl)
                }
            }
        },

//      Provide coordinates for the proxy to slide back to on failed drag.
//      This is the original XY coordinates of the draggable element captured
//      in the getDragData method.
        getRepairXY: function() {
            return this.dragData.repairXY;
        }
    });
});</code></pre>
 * See the <b class='link' title='Ext.dd.DropZone'>DropZone</b> documentation for details about building a DropZone which
 * cooperates with this DragZone.
*/
public class DragZone extends DragSource {
/**
 * @constructor
 * @param el The container element
 * @param config
 */
public function DragZone(el : *, config : Object) {
  super(el, config);
}
    /**
     * This property contains the data representing the dragged object. This data is set up by the implementation
     * of the <b class='link' title='#getDragData'>getDragData</b> method. It must contain a <code>ddel</code> property, but can contain
     * any other data according to the application's needs.
     * @property dragData
     */
    /**
     * @cfg {Boolean} containerScroll True to register this container with the Scrollmanager
     * for auto scrolling during drag operations.
     */
    /**
     * @cfg {String} hlColor The color to use when visually highlighting the drag source in the afterRepair
     * method after a failed drop (defaults to "c3daf9" - light blue)
     */
    /**
     * Called when a mousedown occurs in this container. Looks in <b class='link'>Ext.dd.Registry</b>
     * for a valid target to drag based on the mouse down. Override this method
     * to provide your own lookup logic (e.g. finding a child by class name). Make sure your returned
     * object has a "ddel" attribute (with an HTML Element) for other functions to work.
     * @param e The mouse down event
     * @return The dragData
     */
    override public native function getDragData(e : EventObjectClass) : Object;
    /**
     * Called once drag threshold has been reached to initialize the proxy element. By default, it clones the
     * this.dragData.ddel
     * @param x The x position of the click on the dragged object
     * @param y The y position of the click on the dragged object
     * @return true to continue the drag, false to cancel
     */
    override protected native function onInitDrag(x : Number, y : Number) : Boolean;
    /**
     * Called after a repair of an invalid drop. By default, highlights this.dragData.ddel 
     */
    override protected native function afterRepair(e : EventObjectClass, id : String) : void;
    /**
     * Called before a repair of an invalid drop to get the XY to animate to. By default returns
     * the XY of this.dragData.ddel
     * @param e The mouse up event
     * @return The xy location (e.g. [100, 200])
     */
     override protected native function getRepairXY(target : Object, e : EventObjectClass, id : String) : Array;
}}
