package ext.tree {
import js.HTMLElement;
import js.Node;

/**
 * This class provides the default UI implementation for Ext TreeNodes.
 * The TreeNode UI implementation is separate from the
 * tree implementation, and allows customizing of the appearance of
 * tree nodes.<br>
 * <p>
 * If you are customizing the Tree's user interface, you
 * may need to extend this class, but you should never need to instantiate this class.<br>
 * <p>
 * This class provides access to the user interface components of an Ext TreeNode, through
 * <b class='link'>Ext.tree.TreeNode#getUI</b>
 */
public class TreeNodeUI {
    protected native function removeChild(node) : void;
    protected native function beforeLoad() : void;
    protected native function afterLoad() : void;
    protected native function onTextChange(node, text, oldText) : void;
    protected native function onDisableChange(node, state) : void;
    protected native function onSelectedChange(state) : void;
    protected native function onMove(tree, node, oldParent, newParent, index, refNode) : void;
/**
 * Adds one or more CSS classes to the node's UI element.
 * Duplicate classes are automatically filtered out.
 * @param className The CSS class to add, or an array of classes
 */
    public native function addClass(className : *) : void;
/**
 * Removes one or more CSS classes from the node's UI element.
 * @param className The CSS class to remove, or an array of classes
 */
    public native function removeClass(className : *) : void;
    protected native function remove() : void;
    protected native function fireEvent() : void;
    protected native function initEvents() : void;
    protected native function getDDHandles() : void;
/**
 * Hides this node.
 */
    public native function hide() : void;
/**
 * Shows this node.
 */
    public native function show() : void;
    protected native function onContextMenu(e) : void;
    protected native function onClick(e) : void;
    protected native function onDblClick(e) : void;
    public native function onOver(e) : void;
    public native function onOut(e) : void;
    protected native function onCheckChange() : void;
    protected native function ecClick(e) : void;
    protected native function startDrop() : void;
    public native function endDrop() : void;
    protected native function expand() : void;
    protected native function focus() : void;
/**
 * Sets the checked status of the tree node to the passed value, or, if no value was passed,
 * toggles the checked status. If the node was rendered with no checkbox, this has no effect.
 * @param value The new checked status.
 */
    public native function toggleCheck(value : Boolean = undefined) : void;
    protected native function blur() : void;
    protected native function animExpand(callback) : void;
    protected native function highlight() : void;
    protected native function collapse() : void;
    protected native function animCollapse(callback) : void;
    protected native function getContainer() : void;
    protected native function getEl() : void;
    protected native function appendDDGhost(ghostNode) : void;
    protected native function getDDRepairXY() : void;
    protected native function onRender() : void;
    protected native function render(bulkRender) : void;
    protected native function renderElements(n, a, targetNode, bulkRender) : void;
/**
 * Returns the &lt;a> element that provides focus for the node's UI.
 * @return The DOM anchor element.
 */
    public native function getAnchor() : HTMLElement;
/**
 * Returns the text node.
 * @return The DOM text node.
 */
    public native function getTextEl() : Node;
/**
 * Returns the icon &lt;img> element.
 * @return The DOM image element.
 */
    public native function getIconEl() : HTMLElement;
/**
 * Returns the checked status of the node. If the node was rendered with no
 * checkbox, it returns false.
 * @return The checked flag.
 */
    public native function isChecked() : Boolean;
    protected native function updateExpandIcon() : void;
    protected native function onIdChange(id) : void;
    protected native function getChildIndent() : void;
    protected native function renderIndent() : void;
    public native function destroy() : void;
/**
*/
}}
