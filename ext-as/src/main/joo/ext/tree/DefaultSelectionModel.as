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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.defaultselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel Sencha Docs Ext JS 3.4
 */
[Native]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-clearSelections Sencha Docs Ext JS 3.4
   */
  public native function clearSelections(silent:Boolean = false):void;

  /**
   * Get the selected node
   *
   * @return The selected node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-getSelectedNode Sencha Docs Ext JS 3.4
   */
  public native function getSelectedNode():TreeNode;

  /**
   * Returns true if the node is selected
   *
   * @param node The node to check
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-isSelected Sencha Docs Ext JS 3.4
   */
  public native function isSelected(node:TreeNode):Boolean;

  /**
   * Select a node.
   *
   * @param node The node to select
   * @return The selected node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-select Sencha Docs Ext JS 3.4
   */
  public native function select(node:TreeNode):TreeNode;

  /**
   * Selects the node above the selected node in the tree, intelligently walking the nodes
   *
   * @return The new selection
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-selectNext Sencha Docs Ext JS 3.4
   */
  public native function selectNext():TreeNode;

  /**
   * Selects the node above the selected node in the tree, intelligently walking the nodes
   *
   * @return The new selection
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-selectPrevious Sencha Docs Ext JS 3.4
   */
  public native function selectPrevious():TreeNode;

  /**
   * Deselect a node.
   *
   * @param node The node to unselect
   * @param silent True to stop the selectionchange event from firing.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.DefaultSelectionModel-method-unselect Sencha Docs Ext JS 3.4
   */
  public native function unselect(node:TreeNode, silent:Boolean):void;

}
}
    