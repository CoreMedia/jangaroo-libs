package ext.tree {


/**
 * Note this class is experimental and doesn't update the indent (lines) or expand collapse icons of the nodes
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeFilter.html#cls-Ext.tree.TreeFilter Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeFilter.html#method-Ext.tree.TreeFilter-clear Ext JS source
   */
  public native function clear():void;

  /**
   * Filter the data by a specific attribute.
   *
   * @param value Either string that the attribute value should start with or a RegExp to test against the attribute
   * @param attr The attribute passed in your node's attributes collection. Defaults to "text".
   * @param startNode The node to start the filter at.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeFilter.html#method-Ext.tree.TreeFilter-filter Ext JS source
   */
  public native function filter(value:*, attr:String = null, startNode:TreeNode = null):void;

  /**
   * Filter by a function. The passed function will be called with each node in the tree (or from the startNode). If the function returns true, the node is kept otherwise it is filtered. If a node is filtered, its children are also filtered.
   *
   * @param fn The filter function
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Node.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeFilter.html#method-Ext.tree.TreeFilter-filterBy Ext JS source
   */
  public native function filterBy(fn:Function, scope:Object = null):void;

}
}
    