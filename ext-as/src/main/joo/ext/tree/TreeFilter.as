package ext.tree {


/**
 * Note this class is experimental and doesn't update the indent (lines) or expand collapse icons of the nodes
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeFilter Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.tree.TreeFilter")]
public class TreeFilter {

  /**
   *
   *
   */
  public function TreeFilter() {
    super();
  }

  /**
   * Clears the current filter. Note: with the "remove" option set a filter cannot be cleared.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeFilter-method-clear Sencha Docs Ext JS 3.4
   */
  public native function clear():void;

  /**
   * Filter the data by a specific attribute.
   *
   * @param value Either string that the attribute value should start with or a RegExp to test against the attribute
   * @param attr The attribute passed in your node's attributes collection. Defaults to "text".
   * @param startNode The node to start the filter at.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeFilter-method-filter Sencha Docs Ext JS 3.4
   */
  public native function filter(value:*, attr:String = null, startNode:TreeNode = null):void;

  /**
   * Filter by a function. The passed function will be called with each node in the tree (or from the startNode). If the function returns true, the node is kept otherwise it is filtered. If a node is filtered, its children are also filtered.
   *
   * @param fn The filter function
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeFilter-method-filterBy Sencha Docs Ext JS 3.4
   */
  public native function filterBy(fn:Function, scope:Object = null):void;

}
}
    