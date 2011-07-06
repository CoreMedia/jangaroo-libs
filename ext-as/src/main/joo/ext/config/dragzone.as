package ext.config {


/**
 * This class provides a container DD instance that allows dragging of multiple child source nodes.
 <p>This class does not move the drag target nodes, but a proxy element which may contain any DOM structure you wish. The DOM element to show in the proxy is provided by either a provided implementation of <a href="output/Ext.dd.DragZone.html#Ext.dd.DragZone-getDragData">getDragData</a>, or by registered draggables registered with <a href="Ext.dd.Registry.html">Ext.dd.Registry</a></p><p>If you wish to provide draggability for an arbitrary number of DOM nodes, each of which represent some application object (For example nodes in a <a href="Ext.DataView.html">DataView</a>) then use of this class is the most efficient way to "activate" those nodes.</p><p>By default, this class requires that draggable child nodes are registered with <a href="Ext.dd.Registry.html">Ext.dd.Registry</a>. However a simpler way to allow a DragZone to manage any number of draggable elements is to configure the DragZone with an implementation of the <a href="output/Ext.dd.DragZone.html#Ext.dd.DragZone-getDragData">getDragData</a> method which interrogates the passed mouse event to see if it has taken place within an element, or class of elements. This is easily done by using the event's <a href="output/Ext.EventObject.html#Ext.EventObject-getTarget">getTarget</a> method to identify a node based on a <a href="Ext.DomQuery.html">Ext.DomQuery</a> selector. For example, to make the nodes of a DataView draggable, use the following technique. Knowledge of the use of the DataView is required:</p><pre><code>myDataView.on('render', function(v) {
 myDataView.dragZone = new Ext.dd.DragZone(v.getEl(), {

 //      On receipt of a mousedown event, see if it is within a DataView node.
 //      Return a drag data object if so.
 getDragData: function(e) {

 //          Use the DataView's own itemSelector (a mandatory property) to
 //          test if the mousedown is within one of the DataView's nodes.
 var sourceEl = e.getTarget(v.itemSelector, 10);

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
 sourceStore: v.store,
 draggedRecord: v.<a href="output/Ext.DataView.html#Ext.DataView-getRecord">getRecord</a>(sourceEl)
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
 });</code></pre>See the <a href="Ext.dd.DropZone.html">DropZone</a> documentation for details about building a DropZone which cooperates with this DragZone.
 * <p>This class serves as a typed config object for constructor of class DragZone.</p>
 *
 * @see ext.dd.DragZone
 */
[ExtConfig(target="ext.dd.DragZone")]
public class dragzone extends dragsource {

  public function dragzone(config:Object = null) {

    super(config);
  }


  /**
   True to register this container with the Scrollmanager for auto scrolling during drag operations.
   */
  public native function get containerScroll():Boolean;

  /**
   * @private
   */
  public native function set containerScroll(value:Boolean):void;

  /**
   The color to use when visually highlighting the drag source in the afterRepair method after a failed drop (defaults to "c3daf9" - light blue)
   */
  public native function get hlColor():String;

  /**
   * @private
   */
  public native function set hlColor(value:String):void;


}
}
    