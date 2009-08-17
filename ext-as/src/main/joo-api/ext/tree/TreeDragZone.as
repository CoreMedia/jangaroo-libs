package ext.tree {
import ext.dd.DragZone;

/**
*/
public class TreeDragZone extends DragZone {
/**
 * @constructor
 * @param tree The <b class='link'>Ext.tree.TreePanel</b> for which to enable dragging
 * @param config
 */
public function TreeDragZone(tree : *, config : Object) {
  super(tree, config);
}
    /**
    * The TreePanel for this drag zone
    * @property
    */
    /**
     * @cfg {String} ddGroup
     * A named drag drop group to which this object belongs.  If a group is specified, then this object will only
     * interact with other drag drop objects in the same group (defaults to 'TreeDD').
     */
    public var ddGroup  : String;
    //override protected native function onBeforeDrag(data, e) : void;
    //override protected native function onInitDrag(e) : void;
    //override protected native function getRepairXY(e, data) : void;
    //override protected native function onEndDrag(data, e) : void;
    //override protected native function onValidDrop(dd, e, id) : void;
    //override protected native function beforeInvalidDrop(e, id) : void;
    //override protected native function afterRepair() : void;
}}
