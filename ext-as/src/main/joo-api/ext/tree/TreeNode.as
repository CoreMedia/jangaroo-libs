package ext.tree {
import ext.data.Node;

public class TreeNode extends Node {
/**
 * @cfg {String} text The text for this node
 * @cfg {Boolean} expanded true to start the node expanded
 * @cfg {Boolean} allowDrag False to make this node undraggable if <b class='link' title='#draggable'>draggable</b> = true (defaults to true)
 * @cfg {Boolean} allowDrop False if this node cannot have child nodes dropped on it (defaults to true)
 * @cfg {Boolean} disabled true to start the node disabled
 * @cfg {String} icon The path to an icon for the node. The preferred way to do this
 * is to use the cls or iconCls attributes and add the icon via a CSS background image.
 * @cfg {String} cls A css class to be added to the node
 * @cfg {String} iconCls A css class to be added to the nodes icon element for applying css background images
 * @cfg {String} href URL of the link used for the node (defaults to #)
 * @cfg {String} hrefTarget target frame for the link
 * @cfg {Boolean} hidden True to render hidden. (Defaults to false).
 * @cfg {String} qtip An Ext QuickTip for the node
 * @cfg {Boolean} expandable If set to true, the node will always show a plus/minus icon, even when empty
 * @cfg {String} qtipCfg An Ext QuickTip config for the node (used instead of qtip)
 * @cfg {Boolean} singleClickExpand True for single click expand on this node
 * @cfg {Function} uiProvider A UI <b>class</b> to use for this node (defaults to Ext.tree.TreeNodeUI)
 * @cfg {Boolean} checked True to render a checked checkbox for this node, false to render an unchecked checkbox
 * (defaults to undefined with no checkbox rendered)
 * @cfg {Boolean} draggable True to make this node draggable (defaults to false)
 * @cfg {Boolean} isTarget False to not allow this node to act as a drop target (defaults to true)
 * @cfg {Boolean} allowChildren False to not allow this node to have child nodes (defaults to true)
 * @cfg {Boolean} editable False to not allow this node to be edited by an <b class='link'>ext.tree.TreeEditor</b> (defaults to true)
 * @constructor
 * @param attributes The attributes/config for the node or just a string with the text for the node
 */
public function TreeNode(attributes : *) {
  super(attributes);
}
    /**
     * Read-only. The text for this node. To change it use setText().
     */
    /**
     * True if this node is disabled.
     */
    /**
     * True if this node is hidden.
     */
    /**
     * Read-only. The UI for this node
     */
    public var preventHScroll : TreeNodeUI;
    /**
     * Returns true if this node is expanded
     * @return 
     */
    public native function isExpanded() : Boolean;
/**
 * Returns the UI object for this node.
 * @return The object which is providing the user interface for this tree
 * node. Unless otherwise specified in the <b class='link' title='#uiProvider'>uiProvider</b>, this will be an instance
 * of <b class='link'>Ext.tree.TreeNodeUI</b>
 */
    public native function getUI() : TreeNodeUI;
    public native function getLoader() : void;
    override protected native function setFirstChild(node) : void;
    override protected native function setLastChild(node) : void;
    override public native function appendChild(n : *) : Node;
    override public native function removeChild(node : Node) : Node;
    override public native function insertBefore(node : Node, refNode : Node) : Node;
    /**
     * Sets the text for this node
     * @param text
     */
    public native function setText(text : String) : void;
    /**
     * Triggers selection of this node
     */
    public native function select() : void;
    /**
     * Triggers deselection of this node
     */
    public native function unselect() : void;
    /**
     * Returns true if this node is selected
     * @return 
     */
    public native function isSelected() : Boolean;
    /**
     * Expand this node.
     * @param deep True to expand all children as well
     * @param anim false to cancel the default animation
     * @param callback A callback to be called when
     * expanding this node completes (does not wait for deep expand to complete).
     * Called with 1 parameter, this node.
     * @param scope The scope in which to execute the callback.
     */
    public native function expand(deep : Boolean = undefined, anim : Boolean = undefined, callback : Function = undefined, scope : Object = undefined) : void;
    public native function runCallback(cb, scope, args) : void;
    public native function isHiddenRoot() : void;
    /**
     * Collapse this node.
     * @param deep True to collapse all children as well
     * @param anim false to cancel the default animation
     * @param callback A callback to be called when
     * expanding this node completes (does not wait for deep expand to complete).
     * Called with 1 parameter, this node.
     * @param scope The scope in which to execute the callback.
     */
    public native function collapse(deep : Boolean = undefined, anim : Boolean = undefined, callback : Function = undefined, scope : Object = undefined) : void;
    protected native function delayedExpand(delay) : void;
    protected native function cancelExpand() : void;
    /**
     * Toggles expanded/collapsed state of the node
     */
    public native function toggle() : void;
    /**
     * Ensures all parent nodes are expanded, and if necessary, scrolls
     * the node into view.
     * @param callback A function to call when the node has been made visible.
     * @param scope The scope in which to execute the callback.
     */
    public native function ensureVisible(callback : Function = undefined, scope : Object = undefined) : void;
    /**
     * Expand all child nodes
     * @param deep true if the child nodes should also expand their child nodes
     */
    public native function expandChildNodes(deep : Boolean = undefined) : void;
    /**
     * Collapse all child nodes
     * @param deep true if the child nodes should also collapse their child nodes
     */
    public native function collapseChildNodes(deep : Boolean = undefined) : void;
    /**
     * Disables this node
     */
    public native function disable() : void;
    /**
     * Enables this node
     */
    public native function enable() : void;
    protected native function renderChildren(suppressEvent) : void;
    override public native function sort(fn : Function, scope : Object = undefined) : void;
    protected native function render(bulkRender) : void;
    protected native function renderIndent(deep, refresh) : void;
    public native function beginUpdate() : void;
    public native function endUpdate() : void;
    public native function destroy() : void;
    override protected native function onIdChange(id : String) : void;
}}
