package ext.data {
import ext.util.Observable;

/**
 * Fires when a new child node is appended to a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The newly appended node
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the newly appended node
 *       </li>

 * </ul>
 */
[Event(name="append")]

/**
 * Fires before a new child is appended to a node in this tree, return false to cancel the append.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be appended
 *       </li>

 * </ul>
 */
[Event(name="beforeappend")]

/**
 * Fires before a new child is inserted in a node in this tree, return false to cancel the insert.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.data.Node</code>
 The child node the node is being inserted before
 *       </li>

 * </ul>
 */
[Event(name="beforeinsert")]

/**
 * Fires before a node is moved to a new location in the tree. Return false to cancel the move.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The node being moved
 *       </li>

 *       <li>
 *           <code>oldParent:ext.data.Node</code>
 The parent of the node
 *       </li>

 *       <li>
 *           <code>newParent:ext.data.Node</code>
 The new parent the node is moving to
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it is being moved to
 *       </li>

 * </ul>
 */
[Event(name="beforemove")]

/**
 * Fires before a child is removed from a node in this tree, return false to cancel the remove.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be removed
 *       </li>

 * </ul>
 */
[Event(name="beforeremove")]

/**
 * Fires when a new child node is inserted in a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.data.Node</code>
 The child node the node was inserted before
 *       </li>

 * </ul>
 */
[Event(name="insert")]

/**
 * Fires when a node is moved to a new location in the tree
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The node moved
 *       </li>

 *       <li>
 *           <code>oldParent:ext.data.Node</code>
 The old parent of this node
 *       </li>

 *       <li>
 *           <code>newParent:ext.data.Node</code>
 The new parent of this node
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it was moved to
 *       </li>

 * </ul>
 */
[Event(name="move")]

/**
 * Fires when a child node is removed from a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.data.Node</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]


/**
 * Represents a tree data structure and bubbles all the events for its nodes. The nodes in the tree have most standard DOM functionality.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.tree
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Tree Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.data.Tree")]
public class Tree extends Observable {

  /**
   *
   *
   * @param root The root node
   * @see ext.config.tree
   */
  public function Tree(root:Node = null) {
    super();
  }

  /**
   The root node for this tree
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Tree-property-root Sencha Docs Ext JS 3.4
   */
  public native function get root():Node;

  /**
   * @private
   */
  public native function set root(value:Node):void;

  /**
   The token used to separate paths in node ids (defaults to '/').
   */
  public native function get pathSeparator():String;

  /**
   * Gets a node in this tree by its id.
   *
   * @param id
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Tree-method-getNodeById Sencha Docs Ext JS 3.4
   */
  public native function getNodeById(id:String):Node;

  /**
   * Returns the root node for this tree.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Tree-method-getRootNode Sencha Docs Ext JS 3.4
   */
  public native function getRootNode():Node;

  /**
   * Sets the root node for this tree.
   *
   * @param node
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Tree-method-setRootNode Sencha Docs Ext JS 3.4
   */
  public native function setRootNode(node:Node):Node;

}
}
    