package ext.tree {
public class TreeFilter {
/**
 * Note this class is experimental and doesn't update the indent (lines) or expand collapse icons of the nodes
 * @param tree
 * @param config
 */
  public function TreeFilter(tree : TreePanel, config : Object = null) {
    config = tree + config;
  }

  public var clearBlank;
    public var reverse;
    public var autoClear;
    public var remove;
     /**
     * Filter the data by a specific attribute.
     * @param value Either string that the attribute value
     * should start with or a RegExp to test against the attribute
     * @param attr The attribute passed in your node's attributes collection. Defaults to "text".
     * @param startNode The node to start the filter at.
     */
    public native function filter(value : *, attr : String = undefined, startNode : TreeNode = undefined) : void;
    /**
     * Filter by a function. The passed function will be called with each
     * node in the tree (or from the startNode). If the function returns true, the node is kept
     * otherwise it is filtered. If a node is filtered, its children are also filtered.
     * @param fn The filter function
     * @param scope The scope of the function (defaults to the current node)
     */
    public native function filterBy(fn : Function, scope : Object = undefined, startNode = undefined) : void;
    /**
     * Clears the current filter. Note: with the "remove" option
     * set a filter cannot be cleared.
     */
    public native function clear() : void;
}}
