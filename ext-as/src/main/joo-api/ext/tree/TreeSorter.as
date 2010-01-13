package ext.tree {
/**
 * Provides sorting of nodes in a <b class='link'>Ext.tree.TreePanel</b>.  The TreeSorter automatically monitors events on the 
 * associated TreePanel that might affect the tree's sort order (beforechildrenrendered, append, insert and textchange).
 * Example usage:<br />
 * <pre><code>
new Ext.tree.TreeSorter(myTree, {
    folderSort&#58; true,
    dir&#58; "desc",
    sortType&#58; function(node) {
        &#47;/ sort by a custom, typed attribute:
        return parseInt(node.id, 10);
    }
});
</code></pre>
*/
public class TreeSorter {
/**
 * @constructor
 * @param tree
 * @param config
 */
public function TreeSorter(tree : TreePanel, config : Object) {
  super(tree, config);
}
    /**
     * @cfg {Boolean} folderSort True to sort leaf nodes under non-leaf nodes (defaults to false)
     */
    /** 
     * @cfg {String} property The named attribute on the node to sort by (defaults to "text").  Note that this 
     * property is only used if no <b class='link' title='#sortType'>sortType</b> function is specified, otherwise it is ignored.
     */
    /** 
     * @cfg {String} dir The direction to sort ("asc" or "desc," case-insensitive, defaults to "asc")
     */
    /** 
     * @cfg {String} leafAttr The attribute used to determine leaf nodes when <b class='link' title='#folderSort'>folderSort</b> = true (defaults to "leaf")
     */
    /** 
     * @cfg {Boolean} caseSensitive true for case-sensitive sort (defaults to false)
     */
    /** 
     * @cfg {Function} sortType A custom "casting" function used to convert node values before sorting.  The function
     * will be called with a single parameter (the <b class='link'>Ext.tree.TreeNode</b> being evaluated) and is expected to return
     * the node's sort value cast to the specific data type required for sorting.  This could be used, for example, when
     * a node's text (or other attribute) should be sorted as a date or numeric value.  See the class description for 
     * example usage.  Note that if a sortType is specified, any <b class='link' title='#property'>property</b> config will be ignored.
     */
    public native function doSort(node) : void;
    public native function compareNodes(n1, n2) : void;
    public native function updateSort(tree, node) : void;
    public native function updateSortParent(node) : void;
}}
