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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.multiselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.tree.MultiSelectionModel")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel-method-clearSelections Sencha Docs Ext JS 3.4
   */
  public native function clearSelections():void;

  /**
   * Returns an array of the selected nodes
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel-method-getSelectedNodes Sencha Docs Ext JS 3.4
   */
  public native function getSelectedNodes():Array;

  /**
   * Returns true if the node is selected
   *
   * @param node The node to check
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel-method-isSelected Sencha Docs Ext JS 3.4
   */
  public native function isSelected(node:TreeNode):Boolean;

  /**
   * Select a node.
   *
   * @param node The node to select
   * @param e An event associated with the selection
   * @param keepExisting True to retain existing selections
   * @return The selected node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel-method-select Sencha Docs Ext JS 3.4
   */
  public native function select(node:TreeNode, e:IEventObject = null, keepExisting:Boolean = false):TreeNode;

  /**
   * Deselect a node.
   *
   * @param node The node to unselect
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.MultiSelectionModel-method-unselect Sencha Docs Ext JS 3.4
   */
  public native function unselect(node:TreeNode):void;

}
}
    