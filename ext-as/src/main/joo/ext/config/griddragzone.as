package ext.config {


/**
 * A customized implementation of a <a href="Ext.dd.DragZone.html">DragZone</a> which provides default implementations of two of the template methods of DragZone to enable dragging of the selected rows of a GridPanel.
 <p>A cooperating <a href="Ext.dd.DropZone.html">DropZone</a> must be created who's template method implementations of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> and <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a></p>are able to process the <a href="output/Ext.grid.GridDragZone.html#Ext.grid.GridDragZone-getDragData">data</a> which is provided.
 *
 * <p>This class serves as a
 * typed config object for constructor of class GridDragZone.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.GridDragZone
 */
[ExtConfig(target="ext.grid.GridDragZone")]
public class griddragzone extends dragzone {

  public function griddragzone(config:Object = null) {

    super(config);
  }


}
}
    