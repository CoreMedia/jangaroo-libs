package ext.grid {

import ext.IEventObject;
import ext.dd.DragZone;

/**
 * A customized implementation of a <a href="Ext.dd.DragZone.html">DragZone</a> which provides default implementations of two of the template methods of DragZone to enable dragging of the selected rows of a GridPanel.
 <p>A cooperating <a href="Ext.dd.DropZone.html">DropZone</a> must be created who's template method implementations of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> and <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a></p>are able to process the <a href="output/Ext.grid.GridDragZone.html#Ext.grid.GridDragZone-getDragData">data</a> which is provided.
 * @see ext.config.griddragzone
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GridDD.html#cls-Ext.grid.GridDragZone Ext JS source
 */
public class GridDragZone extends DragZone {

  /**
   *
   *
   * @see ext.config.griddragzone
   */
  public function GridDragZone() {
    super(null, null);
  }

  /**
   * An empty immplementation. Implement this to provide behaviour after a repair of an invalid drop. An implementation might highlight the selected rows to show that they have not been dragged.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GridDD.html#method-Ext.grid.GridDragZone-afterRepair Ext JS source
   */
  override public native function afterRepair():void;

  /**
   * The provided implementation of the getDragData method which collects the data to be dragged from the GridPanel on mousedown.
   <p>This data is available for processing in the <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> and <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a> methods of a cooperating <a href="Ext.dd.DropZone.html">DropZone</a>.</p><p>The data object contains the following properties:</p><ul><li><b>grid</b> : Ext.Grid.GridPanel<div class="sub-desc">The GridPanel from which the data is being dragged.</div></li><li><b>ddel</b> : htmlElement<div class="sub-desc">An htmlElement which provides the "picture" of the data being dragged.</div></li><li><b>rowIndex</b> : Number<div class="sub-desc">The index of the row which receieved the mousedown gesture which triggered the drag.</div></li><li><b>selections</b> : Array<div class="sub-desc">An Array of the selected Records which are being dragged from the GridPanel.</div></li></ul><br/><br/>
   *
   * @param e The mouse down event
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GridDD.html#method-Ext.grid.GridDragZone-getDragData Ext JS source
   */
  override public native function getDragData(e:IEventObject):Object;

  /**
   * An empty implementation. Implement this to provide coordinates for the drag proxy to slide back to after an invalid drop.
   <p>Called before a repair of an invalid drop to get the XY to animate to.</p>
   *
   * @param e The mouse up event
   * @return The xy location (e.g. [100, 200])
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GridDD.html#method-Ext.grid.GridDragZone-getRepairXY Ext JS source
   */
  override public native function getRepairXY(e:IEventObject):Array;

  /**
   * The provided implementation of the onInitDrag method. Sets the <tt>innerHTML</tt> of the drag proxy which provides the "picture" of the data being dragged.
   <p>The <tt>innerHTML</tt> data is found by calling the owning GridPanel's <a href="output/Ext.grid.GridPanel.html#Ext.grid.GridPanel-getDragDropText">getDragDropText</a>.</p>
   *
   * @param x The x position of the click on the dragged object
   * @param y The y position of the click on the dragged object
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/GridDD.html#method-Ext.grid.GridDragZone-onInitDrag Ext JS source
   */
  override public native function onInitDrag(x:Number, y:Number):Boolean;

}
}
    