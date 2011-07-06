package ext.tree {

import ext.IEventObject;
import ext.util.Observable;

/**
 * Fires when the selected nodes change
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.MultiSelectionModel</code>

 *       </li>

 *       <li>
 *           <code>nodes:Array</code>
 Array of the selected nodes
 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * Multi selection for a TreePanel.
 * @see ext.config.multiselectionmodel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#cls-Ext.tree.MultiSelectionModel Ext JS source
 */
public class MultiSelectionModel extends Observable {

  /**
   *
   *
   * @see ext.config.multiselectionmodel
   */
  public function MultiSelectionModel() {
    super();
  }

  /**
   * Clear all selections
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.MultiSelectionModel-clearSelections Ext JS source
   */
  public native function clearSelections():void;

  /**
   * Returns an array of the selected nodes
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.MultiSelectionModel-getSelectedNodes Ext JS source
   */
  public native function getSelectedNodes():Array;

  /**
   * Returns true if the node is selected
   *
   * @param node The node to check
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.MultiSelectionModel-isSelected Ext JS source
   */
  public native function isSelected(node:TreeNode):Boolean;

  /**
   * Select a node.
   *
   * @param node The node to select
   * @param e An event associated with the selection
   * @param keepExisting True to retain existing selections
   * @return The selected node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.MultiSelectionModel-select Ext JS source
   */
  public native function select(node:TreeNode, e:IEventObject = null, keepExisting:Boolean = false):TreeNode;

  /**
   * Deselect a node.
   *
   * @param node The node to unselect
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSelectionModel.html#method-Ext.tree.MultiSelectionModel-unselect Ext JS source
   */
  public native function unselect(node:TreeNode):void;

}
}
    