package ext.tree {


/**
 * Fires before this node is loaded, return false to cancel
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.AsyncTreeNode</code>
 This node
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Fires when this node is loaded
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.AsyncTreeNode</code>
 This node
 *       </li>

 * </ul>
 */
[Event(name="load")]


/**
 *
 * @see ext.config.asynctreenode
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#cls-Ext.tree.AsyncTreeNode Ext JS source
 */
public class AsyncTreeNode extends TreeNode {

  /**
   *
   *
   * @param attributes The attributes/config for the node or just a string with the text for the node
   * @see ext.config.asynctreenode
   */
  public function AsyncTreeNode(attributes:*) {
    super(null);
  }

  /**
   The loader used by this node (defaults to using the tree's defined loader)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#prop-Ext.tree.AsyncTreeNode-loader Ext JS source
   */
  public native function get loader():TreeLoader;

  /**
   * @private
   */
  public native function set loader(value:TreeLoader):void;

  /**
   * Returns true if this node has been loaded
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#method-Ext.tree.AsyncTreeNode-isLoaded Ext JS source
   */
  public native function isLoaded():Boolean;

  /**
   * Returns true if this node is currently loading
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#method-Ext.tree.AsyncTreeNode-isLoading Ext JS source
   */
  public native function isLoading():Boolean;

  /**
   *
   *
   * @param deep
   * @param anim
   * @param callback
   * @param scope
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#method-Ext.tree.AsyncTreeNode-loadComplete Ext JS source
   */
  public native function loadComplete(deep:Boolean, anim:Boolean, callback:Function = null, scope:Object = null):void;

  /**
   * Trigger a reload for this node
   *
   * @param callback
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this Node.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AsyncTreeNode.html#method-Ext.tree.AsyncTreeNode-reload Ext JS source
   */
  public native function reload(callback:Function, scope:Object = null):void;

}
}
    