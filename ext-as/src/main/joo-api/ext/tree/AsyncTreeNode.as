package ext.tree {
public class AsyncTreeNode extends TreeNode {
/**
 * @cfg {TreeLoader} loader A TreeLoader to be used by this node (defaults to the loader defined on the tree)
 * @constructor
 * @param attributes The attributes/config for the node or just a string with the text for the node 
 */
public function AsyncTreeNode(attributes : *) {
  super(attributes);
}
    /**
     * The loader used by this node (defaults to using the tree's defined loader)
     * @property loader
     */
    override public native function expand(deep : Boolean = undefined, anim : Boolean = undefined, callback : Function = undefined, scope : Object = undefined) : void;
    /**
     * Returns true if this node is currently loading
     * @return 
     */
    public native function isLoading() : Boolean;
    public native function loadComplete(deep, anim, callback, scope) : void;
    /**
     * Returns true if this node has been loaded
     * @return 
     */
    public native function isLoaded() : Boolean;
    override public native function hasChildNodes() : Boolean;
    /**
     * Trigger a reload for this node
     * @param callback
     * @param scope The scope in which to execute the callback.
     */
    public native function reload(callback : Function, scope : Object = undefined) : void;
}}
