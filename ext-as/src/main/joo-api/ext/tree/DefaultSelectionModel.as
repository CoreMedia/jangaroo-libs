package ext.tree {

import ext.EventObjectClass;
import ext.util.Observable;

/**
 * The default single selection for a TreePanel.
 */
public class DefaultSelectionModel extends Observable {

    public native function init() : void;

    public native function onNodeClick(node : TreeNode, e : EventObjectClass) : void;
    /**
     * Select a node.
     * @param node The node to select
     * @return The selected node
     */
    public native function select(node : TreeNode) : TreeNode;
    /**
     * Deselect a node.
     * @param node The node to unselect
     */
    public native function unselect(node : TreeNode) : void;
    /**
     * Clear all selections
     */
    public native function clearSelections() : void;
    /**
     * Get the selected node
     * @return The selected node
     */
    public native function getSelectedNode() : TreeNode;
    /**
     * Returns true if the node is selected
     * @param node The node to check
     * @return 
     */
    public native function isSelected(node : TreeNode) : Boolean;
    /**
     * Selects the node above the selected node in the tree, intelligently walking the nodes
     * @return The new selection
     */
    public native function selectPrevious() : TreeNode;
    /**
     * Selects the node above the selected node in the tree, intelligently walking the nodes
     * @return The new selection
     */
    public native function selectNext() : TreeNode;
    public native function onKeyDown(e : EventObjectClass) : void;
}
}
