package ext.tree {

import ext.util.Observable;

/**
 * Fires before the selected node changes, return false to cancel the change
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.DefaultSelectionModel</code>

 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 the new selection
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 the old selection
 *       </li>

 * </ul>
 */
[Event(name="beforeselect")]

/**
 * Fires when the selected node changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.DefaultSelectionModel</code>

 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 the new selection
 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * The default single selection for a TreePanel.
 * @see ext.config.defaultselectionmodel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#cls-Ext.tree.DefaultSelectionModel Ext JS source
 */
public class DefaultSelectionModel extends Observable {

  /**
   *
   *
   * @see ext.config.defaultselectionmodel
   */
  public function DefaultSelectionModel() {
    super();
  }

  /**
   * Clear all selections
   *
   * @param silent True to stop the selectionchange event from firing.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-clearSelections Ext JS source
   */
  public native function clearSelections(silent:Boolean = false):void;

  /**
   * Get the selected node
   *
   * @return The selected node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-getSelectedNode Ext JS source
   */
  public native function getSelectedNode():TreeNode;

  /**
   * Returns true if the node is selected
   *
   * @param node The node to check
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-isSelected Ext JS source
   */
  public native function isSelected(node:TreeNode):Boolean;

  /**
   * Select a node.
   *
   * @param node The node to select
   * @return The selected node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-select Ext JS source
   */
  public native function select(node:TreeNode):TreeNode;

  /**
   * Selects the node above the selected node in the tree, intelligently walking the nodes
   *
   * @return The new selection
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-selectNext Ext JS source
   */
  public native function selectNext():TreeNode;

  /**
   * Selects the node above the selected node in the tree, intelligently walking the nodes
   *
   * @return The new selection
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-selectPrevious Ext JS source
   */
  public native function selectPrevious():TreeNode;

  /**
   * Deselect a node.
   *
   * @param node The node to unselect
   * @param silent True to stop the selectionchange event from firing.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.DefaultSelectionModel-unselect Ext JS source
   */
  public native function unselect(node:TreeNode, silent:Boolean):void;

}
}
    