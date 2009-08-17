package ext.grid {
import ext.EventObject;
import ext.dd.DragDrop;
import ext.dd.DragZone;

/**
 * <p>A customized implementation of a <b class='link' title='Ext.dd.DragZone'>DragZone</b> which provides default implementations of two of the
 * template methods of DragZone to enable dragging of the selected rows of a GridPanel.</p>
 * <p>A cooperating <b class='link' title='Ext.dd.DropZone'>DropZone</b> must be created who's template method implementations of
 * <b class='link' title='Ext.dd.DropZone#onNodeEnter'>onNodeEnter</b>, <b class='link' title='Ext.dd.DropZone#onNodeOver'>onNodeOver</b>,
 * <b class='link' title='Ext.dd.DropZone#onNodeOut'>onNodeOut</b> and <b class='link' title='Ext.dd.DropZone#onNodeDrop'>onNodeDrop</b></p> are able
 * to process the <b class='link' title='#getDragData'>data</b> which is provided.
 */
public class GridDragZone extends DragZone {
  public function GridDragZone(el : *, config : Object) {
    super(el, config);
  }
  public var ddGroup ;
  /**
   * <p>The provided implementation of the getDragData method which collects the data to be dragged from the GridPanel on mousedown.</p>
   * <p>This data is available for processing in the <b class='link' title='Ext.dd.DropZone#onNodeEnter'>onNodeEnter</b>, <b class='link' title='Ext.dd.DropZone#onNodeOver'>onNodeOver</b>,
   * <b class='link' title='Ext.dd.DropZone#onNodeOut'>onNodeOut</b> and <b class='link' title='Ext.dd.DropZone#onNodeDrop'>onNodeDrop</b> methods of a cooperating <b class='link' title='Ext.dd.DropZone'>DropZone</b>.</p>
   * <p>The data object contains the following properties:<ul>
   * <li><b>grid</b> : ext.Grid.GridPanel<div class="sub-desc">The GridPanel from which the data is being dragged.</div></li>
   * <li><b>ddel</b> : htmlElement<div class="sub-desc">An htmlElement which provides the "picture" of the data being dragged.</div></li>
   * <li><b>rowIndex</b> : Number<div class="sub-desc">The index of the row which receieved the mousedown gesture which triggered the drag.</div></li>
   * <li><b>selections</b> : Array<div class="sub-desc">An Array of the selected Records which are being dragged from the GridPanel.</div></li>
   * </ul></p>
   */
    override public native function getDragData(e : EventObject) : Object;
    /**
     * <p>The provided implementation of the onInitDrag method. Sets the <tt>innerHTML</tt> of the drag proxy which provides the "picture"
     * of the data being dragged.</p>
     * <p>The <tt>innerHTML</tt> data is found by calling the owning GridPanel's <b class='link' title='Ext.grid.GridPanel#getDragDropText'>getDragDropText</b>.</p>
     */
    override protected native function onInitDrag(x : Number, y : Number) : Boolean;
    /**
     * An empty immplementation. Implement this to provide behaviour after a repair of an invalid drop. An implementation might highlight
     * the selected rows to show that they have not been dragged.
     */
  override protected native function afterRepair(e : EventObject, id : String) : void;
    /**
     * <p>An empty implementation. Implement this to provide coordinates for the drag proxy to slide back to after an invalid drop.</p>
     * <p>Called before a repair of an invalid drop to get the XY to animate to.</p>
     * @param e The mouse up event
     * @return The xy location (e.g. [100, 200])
     */
  override protected native function getRepairXY(target : Object, e : EventObject, id : String) : void;
  override protected native function onEndDrag(data, e : EventObject) : void;
    override protected native function onValidDrop(dd, e, id) : void;
  override public native function beforeInvalidDrop(target : DragDrop, e : EventObject, id : String) : Boolean;

}}
