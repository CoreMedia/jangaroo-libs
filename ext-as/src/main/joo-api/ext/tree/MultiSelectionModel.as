package ext.tree {
import ext.EventObjectClass;
import ext.data.Tree;
import ext.util.Observable;

/**
 * Multi selection for a TreePanel.
 */
public class MultiSelectionModel extends Observable {
    public native function init(tree : Tree) : void;
    public native function onNodeClick(node, e) : void;
    /**
     * Select a node.
     * @param node The node to select
     * @param e An event associated with the selection
     * @param keepExisting True to retain existing selections
     * @return The selected node
     */
    public native function select(node : TreeNode, e : EventObjectClass = undefined, keepExisting : Boolean = undefined) : TreeNode;
    /**
     * Deselect a node.
     * @param node The node to unselect
     */
    public native function unselect(node : TreeNode) : void;
    /**
     * Clear all selections
     */
    public native function clearSelections(suppressEvent) : void;
    /**
     * Returns true if the node is selected
     * @param node The node to check
     * @return 
     */
    public native function isSelected(node : TreeNode) : Boolean;
    /**
     * Returns an array of the selected nodes
     * @return 
     */
    public native function getSelectedNodes() : Array;
    public var onKeyDown ;
    public var selectNext ;
    public var selectPrevious ;
}}
