package ext.config {

import ext.Ext;

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
 * <p>This class serves as a typed config object for constructor of class TreeSorter.</p>
 *
 * @see ext.tree.TreeSorter
 */
[ExtConfig(target="ext.tree.TreeSorter")]
public class treesorter {

  public function treesorter(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   true for case-sensitive sort (defaults to false)
   */
  public native function get caseSensitive():Boolean;

  /**
   * @private
   */
  public native function set caseSensitive(value:Boolean):void;

  /**
   The direction to sort ("asc" or "desc," case-insensitive, defaults to "asc")
   */
  public native function get dir():String;

  /**
   * @private
   */
  public native function set dir(value:String):void;

  /**
   True to sort leaf nodes under non-leaf nodes (defaults to false)
   */
  public native function get folderSort():Boolean;

  /**
   * @private
   */
  public native function set folderSort(value:Boolean):void;

  /**
   The attribute used to determine leaf nodes when <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-folderSort">folderSort</a> = true (defaults to "leaf")
   */
  public native function get leafAttr():String;

  /**
   * @private
   */
  public native function set leafAttr(value:String):void;

  /**
   The named attribute on the node to sort by (defaults to "text"). Note that this property is only used if no <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-sortType">sortType</a> function is specified, otherwise it is ignored.
   */
  public native function get property():String;

  /**
   * @private
   */
  public native function set property(value:String):void;

  /**
   A custom "casting" function used to convert node values before sorting. The function will be called with a single parameter (the <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a> being evaluated) and is expected to return the node's sort value cast to the specific data type required for sorting. This could be used, for example, when a node's text (or other attribute) should be sorted as a date or numeric value. See the class description for example usage. Note that if a sortType is specified, any <a href="output/Ext.tree.TreeSorter.html#Ext.tree.TreeSorter-property">property</a> config will be ignored.
   */
  public native function get sortType():Function;

  /**
   * @private
   */
  public native function set sortType(value:Function):void;


}
}
    