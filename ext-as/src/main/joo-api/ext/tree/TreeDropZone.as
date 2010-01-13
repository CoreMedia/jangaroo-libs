package ext.tree {
import ext.EventObject;
import ext.dd.DragSource;
import ext.dd.DropZone;

public class TreeDropZone extends DropZone {
/**
 * @constructor
 * @param tree The <b class='link'>Ext.tree.TreePanel</b> for which to enable dropping
 * @param config
 */
public function TreeDropZone(tree : *, config : Object) {
  super(tree, config);
}
    /**
     * @cfg {Boolean} allowParentInsert
     * Allow inserting a dragged node between an expanded parent node and its first child that will become a
     * sibling of the parent when dropped (defaults to false)
     */
    /**
     * @cfg {String} allowContainerDrop
     * True if drops on the tree container (outside of a specific tree node) are allowed (defaults to false)
     */
    /**
     * @cfg {String} appendOnly
     * True if the tree should only allow append drops (use for trees which are sorted, defaults to false)
     */
    /**
    * The TreePanel for this drop zone
    * @property
    */
    /**
    * Arbitrary data that can be associated with this tree and will be included in the event object that gets
    * passed to any nodedragover event handler (defaults to {})
    * @property
    */
    /**
     * @cfg {String} ddGroup
     * A named drag drop group to which this object belongs.  If a group is specified, then this object will only
     * interact with other drag drop objects in the same group (defaults to 'TreeDD').
     */
    public var ddGroup  : String;
    /**
     * @cfg {String} expandDelay
     * The delay in milliseconds to wait before expanding a target tree node while dragging a droppable node
     * over the target (defaults to 1000)
     */
    public var expandDelay  : String;
    protected native function expandNode(node) : void;
    protected native function queueExpand(node) : void;
    protected native function cancelExpand() : void;
    protected native function isValidDropPoint(n, pt, dd, e, data) : void;
    protected native function getDropPoint(e, n, dd) : void;
  override public native function onNodeEnter(nodeData : Object, source : DragSource, e : EventObject, data : Object) : void;
  override public native function onContainerOver(source : DragSource, e : EventObject, data : Object) : String;
  override public native function onNodeOver(nodeData : Object, source : DragSource, e : EventObject, data : Object) : String;
  override public native function onNodeOut(nodeData : Object, source : DragSource, e : EventObject, data : Object) : void;
  override public native function onNodeDrop(nodeData : Object, source : DragSource, e : EventObject, data : Object) : Boolean;
  override public native function onContainerDrop(source : DragSource, e : EventObject, data : Object) : Boolean;
    protected native function processDrop(target, data, point, dd, e, dropNode) : void;
    protected native function completeDrop(de) : void;
    protected native function afterNodeMoved(dd, data, e, targetNode, dropNode) : void;
    protected native function getTree() : void;
    protected native function removeDropIndicators(n) : void;
    protected native function beforeDragDrop(target, e, id) : void;
    protected native function afterRepair(data) : void;
}}
