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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.asynctreenode
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "tree.AsyncTreeNode")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode-property-loader Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode-method-isLoaded Sencha Docs Ext JS 3.4
   */
  public native function isLoaded():Boolean;

  /**
   * Returns true if this node is currently loading
   *
   * @return
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode-method-isLoading Sencha Docs Ext JS 3.4
   */
  public native function isLoading():Boolean;

  /**
   *
   *
   * @param deep
   * @param anim
   * @param callback
   * @param scope
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode-method-loadComplete Sencha Docs Ext JS 3.4
   */
  public native function loadComplete(deep:Boolean, anim:Boolean, callback:Function = null, scope:Object = null):void;

  /**
   * Trigger a reload for this node
   *
   * @param callback
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this Node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.AsyncTreeNode-method-reload Sencha Docs Ext JS 3.4
   */
  public native function reload(callback:Function, scope:Object = null):void;

}
}
    