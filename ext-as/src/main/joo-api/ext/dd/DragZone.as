package ext.dd {
import ext.IEventObject;
import ext.config.dragzone;

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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.dragzone
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#cls-Ext.dd.DragZone Ext JS source
 */
public class DragZone extends DragSource {

  /**
   *
   *
   * @param el The container element
   * @param config
   * @see ext.config.dragzone
   */
  public function DragZone(el:*, config:dragzone) {
    super(null, null);
  }

  /**
   This property contains the data representing the dragged object. This data is set up by the implementation of the <a href="output/Ext.dd.DragZone.html#Ext.dd.DragZone-getDragData">getDragData</a> method. It must contain a <tt>ddel</tt> property, but can contain any other data according to the application's needs.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#prop-Ext.dd.DragZone-dragData Ext JS source
   */
  public native function get dragData():Object;

  /**
   * @private
   */
  public native function set dragData(value:Object):void;

  /**
   True to register this container with the Scrollmanager for auto scrolling during drag operations.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get containerScroll():Boolean;

  /**
   The color to use when visually highlighting the drag source in the afterRepair method after a failed drop (defaults to "c3daf9" - light blue)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hlColor():String;

  /**
   * Called after a repair of an invalid drop. By default, highlights this.dragData.ddel
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#method-Ext.dd.DragZone-afterRepair Ext JS source
   */
  public native function afterRepair():void;

  /**
   * Called when a mousedown occurs in this container. Looks in <a href="Ext.dd.Registry.html">Ext.dd.Registry</a> for a valid target to drag based on the mouse down. Override this method to provide your own lookup logic (e.g. finding a child by class name). Make sure your returned object has a "ddel" attribute (with an HTML Element) for other functions to work.
   *
   * @param e The mouse down event
   * @return The dragData
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#method-Ext.dd.DragZone-getDragData Ext JS source
   */
  override public native function getDragData(e:IEventObject):Object;

  /**
   * Called before a repair of an invalid drop to get the XY to animate to. By default returns the XY of this.dragData.ddel
   *
   * @param e The mouse up event
   * @return The xy location (e.g. [100, 200])
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#method-Ext.dd.DragZone-getRepairXY Ext JS source
   */
  public native function getRepairXY(e:IEventObject):Array;

  /**
   * Called once drag threshold has been reached to initialize the proxy element. By default, it clones the this.dragData.ddel
   *
   * @param x The x position of the click on the dragged object
   * @param y The y position of the click on the dragged object
   * @return true to continue the drag, false to cancel
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragZone.html#method-Ext.dd.DragZone-onInitDrag Ext JS source
   */
  public native function onInitDrag(x:Number, y:Number):Boolean;

}
}
    