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
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeSorter.html#cls-Ext.tree.TreeSorter Ext JS source
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get caseSensitive():Boolean;

  /**
   The direction to sort ("asc" or "desc," case-insensitive, defaults to "asc")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dir():String;

  /**
   True to sort leaf nodes under non-leaf nodes (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get folderSort():Boolean;

  /**
   The attribute used to determine leaf nodes when <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-folderSort">folderSort</a> = true (defaults to "leaf")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get leafAttr():String;

  /**
   The named attribute on the node to sort by (defaults to "text"). Note that this property is only used if no <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-sortType">sortType</a> function is specified, otherwise it is ignored.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get property():String;

}
}
    