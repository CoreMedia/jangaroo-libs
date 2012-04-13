package ext.tree {
import ext.config.treesorter;

/**
 * Provides sorting of nodes in a <a href="Ext.tree.TreePanel.html">Ext.tree.TreePanel</a>. The TreeSorter automatically monitors events on the associated TreePanel that might affect the tree's sort order (beforechildrenrendered, append, insert and textchange). Example usage:<br/><pre><code>new Ext.tree.TreeSorter(myTree, {
 folderSort: true,
 dir: "desc",
 sortType: function(node) {
 // sort by a custom, typed attribute:
 return parseInt(node.id, 10);
 }
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.treesorter
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeSorter Sencha Docs Ext JS 3.4
 */
public class TreeSorter {

  /**
   *
   *
   * @param tree
   * @param config
   * @see ext.config.treesorter
   */
  public function TreeSorter(tree:TreePanel, config:treesorter) {
    super();
  }

  /**
   true for case-sensitive sort (defaults to false)
   */
  public native function get caseSensitive():Boolean;

  /**
   The direction to sort ("asc" or "desc," case-insensitive, defaults to "asc")
   */
  public native function get dir():String;

  /**
   True to sort leaf nodes under non-leaf nodes (defaults to false)
   */
  public native function get folderSort():Boolean;

  /**
   The attribute used to determine leaf nodes when <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-folderSort">folderSort</a> = true (defaults to "leaf")
   */
  public native function get leafAttr():String;

  /**
   The named attribute on the node to sort by (defaults to "text"). Note that this property is only used if no <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-sortType">sortType</a> function is specified, otherwise it is ignored.
   */
  public native function get property():String;

}
}
    