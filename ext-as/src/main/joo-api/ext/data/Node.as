package ext.data {
import ext.util.Observable;

public class Node extends Observable {
/**
 * @cfg {Boolean} leaf true if this node is a leaf and does not have children
 * @cfg {String} id The id for this node. If one is not specified, one is generated.
 * @constructor
 * @param attributes The attributes/config for the node
 */
public function Node(attributes : Object) {
  super();
  this.attributes = attributes;
}
    /**
     * The attributes supplied for the node. You can use this property to access any custom attributes you supplied.
     */
  public var attributes : Object;
  /**
   * All child nodes of this node.
   */
  public var childNodes  : Array;
  /**
   * The node id.
   */
  public var id  : String;
  /**
   * The first direct child node of this node, or null if this node has no child nodes.
   */
  public var firstChild  : Node;
  /**
   * The last direct child node of this node, or null if this node has no child nodes.
   */
  public var lastChild  : Node;
  /**
   * The node immediately following this node in the tree, or null if there is no sibling node.
   */
  public var nextSibling  : Node;
  /**
   * The parent node for this node.
   */
  public var parentNode  : Node;
  /**
   * The node immediately preceding this node in the tree, or null if there is no sibling node.
   */
  public var previousSibling  : Node;

  override public native function fireEvent(eventName : String, ...args) : Boolean;
    /**
     * Returns true if this node is a leaf
     * @return 
     */
    public native function isLeaf() : Boolean;
    protected native function setFirstChild(node) : void;
    protected native function setLastChild(node) : void;
    /**
     * Returns true if this node is the last child of its parent
     * @return 
     */
    public native function isLast() : Boolean;
    /**
     * Returns true if this node is the first child of its parent
     * @return 
     */
    public native function isFirst() : Boolean;
    /**
     * Returns true if this node has one or more child nodes, else false.
     * @return 
     */
    public native function hasChildNodes() : Boolean;
    /**
     * Returns true if this node has one or more child nodes, or if the <code>expandable</code>
     * node attribute is explicitly specified as true (see <b class='link' title='#attributes'>attributes</b>), otherwise returns false.
     * @return 
     */
    public native function isExpandable() : Boolean;
    /**
     * Insert node(s) as the last child node of this node.
     * @param node The node or Array of nodes to append
     * @return The appended node if single append, or null if an array was passed
     */
    public native function appendChild(node : *) : Node;
    /**
     * Removes a child node from this node.
     * @param node The node to remove
     * @return The removed node
     */
    public native function removeChild(node : Node) : Node;
    /**
     * Inserts the first node before the second node in this nodes childNodes collection.
     * @param node The node to insert
     * @param refNode The node to insert before (if null the node is appended)
     * @return The inserted node
     */
    public native function insertBefore(node : Node, refNode : Node) : Node;
    /**
     * Removes this node from its parent
     * @return this
     */
    public native function remove(destroy : Boolean) : Node;
    /**
     * Returns the child node at the specified index.
     * @param index
     * @return 
     */
    public native function item(index : Number) : Node;
    /**
     * Replaces one child node in this node with another.
     * @param newChild The replacement node
     * @param oldChild The node to replace
     * @return The replaced node
     */
    public native function replaceChild(newChild : Node, oldChild : Node) : Node;
    /**
     * Returns the index of a child node
     * @param node
     * @return The index of the node or -1 if it was not found
     */
    public native function indexOf(node : Node) : Number;
    /**
     * Returns the tree this node is in.
     * @return 
     */
    public native function getOwnerTree() : Tree;
    /**
     * Returns depth of this node (the root node has a depth of 0)
     * @return 
     */
    public native function getDepth() : Number;
    protected native function setOwnerTree(tree) : void;
    /**
     * Changes the id of this node.
     * @param id The new id for the node.
     */
    public native function setId(id : String) : void;
    protected native function onIdChange(id : String) : void;
    /**
     * Returns the path for this node. The path can be used to expand or select this node programmatically.
     * @param attr The attr to use for the path (defaults to the node's id)
     * @return The path
     */
    public native function getPath(attr : String = undefined) : String;
    /**
     * Bubbles up the tree from this node, calling the specified function with each node. The scope (<i>this</i>) of
     * function call will be the scope provided or the current node. The arguments to the function
     * will be the args provided or the current node. If the function returns false at any point,
     * the bubble is stopped.
     * @param fn The function to call
     * @param scope The scope of the function (defaults to current node)
     * @param args The args to call the function with (default to passing the current node)
     */
    public native function bubble(fn : Function, scope : Object = undefined, args : Array = undefined) : void;
    /**
     * Cascades down the tree from this node, calling the specified function with each node. The scope (<i>this</i>) of
     * function call will be the scope provided or the current node. The arguments to the function
     * will be the args provided or the current node. If the function returns false at any point,
     * the cascade is stopped on that branch.
     * @param fn The function to call
     * @param scope The scope of the function (defaults to current node)
     * @param args The args to call the function with (default to passing the current node)
     */
    public native function cascade(fn : Function, scope : Object = undefined, args : Array = undefined) : void;
    /**
     * Interates the child nodes of this node, calling the specified function with each node. The scope (<i>this</i>) of
     * function call will be the scope provided or the current node. The arguments to the function
     * will be the args provided or the current node. If the function returns false at any point,
     * the iteration stops.
     * @param fn The function to call
     * @param scope The scope of the function (defaults to current node)
     * @param args The args to call the function with (default to passing the current node)
     */
    public native function eachChild(fn : Function, scope : Object = undefined, args : Array = undefined) : void;
    /**
     * Finds the first child that has the attribute with the specified value.
     * @param attribute The attribute name
     * @param value The value to search for
     * @return The found child or null if none was found
     */
    public native function findChild(attribute : String, value : *) : Node;
    /**
     * Finds the first child by a custom function. The child matches if the function passed
     * returns true.
     * @param fn
     * @param scope
     * @return The found child or null if none was found
     */
    public native function findChildBy(fn : Function, scope : Object = undefined) : Node;
    /**
     * Sorts this nodes children using the supplied sort function
     * @param fn
     * @param scope
     */
    public native function sort(fn : Function, scope : Object = undefined) : void;
    /**
     * Returns true if this node is an ancestor (at any point) of the passed node.
     * @param node
     * @return 
     */
    public native function contains(node : Node) : Boolean;
    /**
     * Returns true if the passed node is an ancestor (at any point) of this node.
     * @param node
     * @return 
     */
    public native function isAncestor(node : Node) : Boolean;
    public native function toString() : void;
}}
