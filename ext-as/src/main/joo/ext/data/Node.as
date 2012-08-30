package ext.data {
import ext.util.Observable;

/**
 * Fires when a new child node is appended
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The newly appended node
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the newly appended node
 *       </li>

 * </ul>
 */
[Event(name="append")]

/**
 * Fires before a new child is appended, return false to cancel the append.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be appended
 *       </li>

 * </ul>
 */
[Event(name="beforeappend")]

/**
 * Fires before a new child is inserted, return false to cancel the insert.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.data.Node</code>
 The child node the node is being inserted before
 *       </li>

 * </ul>
 */
[Event(name="beforeinsert")]

/**
 * Fires before this node is moved to a new location in the tree. Return false to cancel the move.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>oldParent:ext.data.Node</code>
 The parent of this node
 *       </li>

 *       <li>
 *           <code>newParent:ext.data.Node</code>
 The new parent this node is moving to
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it is being moved to
 *       </li>

 * </ul>
 */
[Event(name="beforemove")]

/**
 * Fires before a child is removed, return false to cancel the remove.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node to be removed
 *       </li>

 * </ul>
 */
[Event(name="beforeremove")]

/**
 * Fires when a new child node is inserted.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The child node inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.data.Node</code>
 The child node the node was inserted before
 *       </li>

 * </ul>
 */
[Event(name="insert")]

/**
 * Fires when this node is moved to a new location in the tree
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>oldParent:ext.data.Node</code>
 The old parent of this node
 *       </li>

 *       <li>
 *           <code>newParent:ext.data.Node</code>
 The new parent of this node
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it was moved to
 *       </li>

 * </ul>
 */
[Event(name="move")]

/**
 * Fires when a child node is removed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>this_:ext.data.Node</code>
 This node
 *       </li>

 *       <li>
 *           <code>node:ext.data.Node</code>
 The removed node
 *       </li>

 * </ul>
 */
[Event(name="remove")]


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.node
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node Sencha Docs Ext JS 3.4
 */
[Native]
public class Node extends Observable {

  /**
   *
   *
   * @param attributes The attributes/config for the node
   * @see ext.config.node
   */
  public function Node(attributes:Object) {
    super();
  }

  /**
   The attributes supplied for the node. You can use this property to access any custom attributes you supplied.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-attributes Sencha Docs Ext JS 3.4
   */
  public native function get attributes():Object;

  /**
   * @private
   */
  public native function set attributes(value:Object):void;

  /**
   All child nodes of this node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-childNodes Sencha Docs Ext JS 3.4
   */
  public native function get childNodes():Array;

  /**
   * @private
   */
  public native function set childNodes(value:Array):void;

  /**
   The first direct child node of this node, or null if this node has no child nodes.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-firstChild Sencha Docs Ext JS 3.4
   */
  public native function get firstChild():Node;

  /**
   * @private
   */
  public native function set firstChild(value:Node):void;

  /**
   The node id.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-id Sencha Docs Ext JS 3.4
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   The last direct child node of this node, or null if this node has no child nodes.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-lastChild Sencha Docs Ext JS 3.4
   */
  public native function get lastChild():Node;

  /**
   * @private
   */
  public native function set lastChild(value:Node):void;

  /**
   The node immediately following this node in the tree, or null if there is no sibling node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-nextSibling Sencha Docs Ext JS 3.4
   */
  public native function get nextSibling():Node;

  /**
   * @private
   */
  public native function set nextSibling(value:Node):void;

  /**
   The parent node for this node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-parentNode Sencha Docs Ext JS 3.4
   */
  public native function get parentNode():Node;

  /**
   * @private
   */
  public native function set parentNode(value:Node):void;

  /**
   The node immediately preceding this node in the tree, or null if there is no sibling node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-property-previousSibling Sencha Docs Ext JS 3.4
   */
  public native function get previousSibling():Node;

  /**
   * @private
   */
  public native function set previousSibling(value:Node):void;

  /**
   true if this node is a leaf and does not have children
   */
  public native function get leaf():Boolean;

  /**
   * Insert node(s) as the last child node of this node.
   *
   * @param node The node or Array of nodes to append
   * @return The appended node if single append, or null if an array was passed
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-appendChild Sencha Docs Ext JS 3.4
   */
  public native function appendChild(node:*):Node;

  /**
   * Bubbles up the tree from this node, calling the specified function with each node. The arguments to the function will be the args provided or the current node. If the function returns false at any point, the bubble is stopped.
   *
   * @param fn The function to call
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Node.
   * @param args The args to call the function with (default to passing the current Node)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-bubble Sencha Docs Ext JS 3.4
   */
  public native function bubble(fn:Function, scope:Object = null, args:Array = null):void;

  /**
   * Cascades down the tree from this node, calling the specified function with each node. The arguments to the function will be the args provided or the current node. If the function returns false at any point, the cascade is stopped on that branch.
   *
   * @param fn The function to call
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Node.
   * @param args The args to call the function with (default to passing the current Node)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-cascade Sencha Docs Ext JS 3.4
   */
  public native function cascade(fn:Function, scope:Object = null, args:Array = null):void;

  /**
   * Returns true if this node is an ancestor (at any point) of the passed node.
   *
   * @param node
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-contains Sencha Docs Ext JS 3.4
   */
  public native function contains(node:Node):Boolean;

  /**
   * Destroys the node.
   *
   * @param silent internal / undocumented
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy(silent:Boolean = false):void;

  /**
   * Iterates the child nodes of this node, calling the specified function with each node. The arguments to the function will be the args provided or the current node. If the function returns false at any point, the iteration stops.
   *
   * @param fn The function to call
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current Node in the iteration.
   * @param args The args to call the function with (default to passing the current Node)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-eachChild Sencha Docs Ext JS 3.4
   */
  public native function eachChild(fn:Function, scope:Object = null, args:Array = null):void;

  /**
   * Finds the first child that has the attribute with the specified value.
   *
   * @param attribute The attribute name
   * @param value The value to search for
   * @param deep True to search through nodes deeper than the immediate children
   * @return The found child or null if none was found
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-findChild Sencha Docs Ext JS 3.4
   */
  public native function findChild(attribute:String, value:*, deep:Boolean = false):Node;

  /**
   * Finds the first child by a custom function. The child matches if the function passed returns <code>true</code>.
   *
   * @param fn A function which must return <code>true</code> if the passed Node is the required Node.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Node being tested.
   * @param deep True to search through nodes deeper than the immediate children
   * @return The found child or null if none was found
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-findChildBy Sencha Docs Ext JS 3.4
   */
  public native function findChildBy(fn:Function, scope:Object = null, deep:Boolean = false):Node;

  /**
   * Returns depth of this node (the root node has a depth of 0)
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-getDepth Sencha Docs Ext JS 3.4
   */
  public native function getDepth():Number;

  /**
   * Returns the tree this node is in.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-getOwnerTree Sencha Docs Ext JS 3.4
   */
  public native function getOwnerTree():Tree;

  /**
   * Returns the path for this node. The path can be used to expand or select this node programmatically.
   *
   * @param attr The attr to use for the path (defaults to the node's id)
   * @return The path
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-getPath Sencha Docs Ext JS 3.4
   */
  public native function getPath(attr:String = null):String;

  /**
   * Returns true if this node has one or more child nodes, else false.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-hasChildNodes Sencha Docs Ext JS 3.4
   */
  public native function hasChildNodes():Boolean;

  /**
   * Returns the index of a child node
   *
   * @param node
   * @return The index of the node or -1 if it was not found
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-indexOf Sencha Docs Ext JS 3.4
   */
  public native function indexOf(node:Node):Number;

  /**
   * Inserts the first node before the second node in this nodes childNodes collection.
   *
   * @param node The node to insert
   * @param refNode The node to insert before (if null the node is appended)
   * @return The inserted node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-insertBefore Sencha Docs Ext JS 3.4
   */
  public native function insertBefore(node:Node, refNode:Node):Node;

  /**
   * Returns true if the passed node is an ancestor (at any point) of this node.
   *
   * @param node
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-isAncestor Sencha Docs Ext JS 3.4
   */
  public native function isAncestor(node:Node):Boolean;

  /**
   * Returns true if this node has one or more child nodes, or if the <tt>expandable</tt> node attribute is explicitly specified as true (see <a href="output/Ext.data.Node.html#Ext.data.Node-attributes">attributes</a>), otherwise returns false.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-isExpandable Sencha Docs Ext JS 3.4
   */
  public native function isExpandable():Boolean;

  /**
   * Returns true if this node is the first child of its parent
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-isFirst Sencha Docs Ext JS 3.4
   */
  public native function isFirst():Boolean;

  /**
   * Returns true if this node is the last child of its parent
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-isLast Sencha Docs Ext JS 3.4
   */
  public native function isLast():Boolean;

  /**
   * Returns true if this node is a leaf
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-isLeaf Sencha Docs Ext JS 3.4
   */
  public native function isLeaf():Boolean;

  /**
   * Returns the child node at the specified index.
   *
   * @param index
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-item Sencha Docs Ext JS 3.4
   */
  public native function item(index:Number):Node;

  /**
   * Removes this node from its parent
   *
   * @param destroy <tt>true</tt> to destroy the node upon removal. Defaults to <tt>false</tt>.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-remove Sencha Docs Ext JS 3.4
   */
  public native function remove(destroy:Boolean):Node;

  /**
   * Removes all child nodes from this node.
   *
   * @param destroy <tt>true</tt> to destroy the node upon removal. Defaults to <tt>false</tt>.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-removeAll Sencha Docs Ext JS 3.4
   */
  public native function removeAll(destroy:Boolean):Node;

  /**
   * Removes a child node from this node.
   *
   * @param node The node to remove
   * @param destroy <tt>true</tt> to destroy the node upon removal. Defaults to <tt>false</tt>.
   * @return The removed node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-removeChild Sencha Docs Ext JS 3.4
   */
  public native function removeChild(node:Node, destroy:Boolean):Node;

  /**
   * Replaces one child node in this node with another.
   *
   * @param newChild The replacement node
   * @param oldChild The node to replace
   * @return The replaced node
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-replaceChild Sencha Docs Ext JS 3.4
   */
  public native function replaceChild(newChild:Node, oldChild:Node):Node;

  /**
   * Changes the id of this node.
   *
   * @param id The new id for the node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-setId Sencha Docs Ext JS 3.4
   */
  public native function setId(id:String):void;

  /**
   * Sorts this nodes children using the supplied sort function.
   *
   * @param fn A function which, when passed two Nodes, returns -1, 0 or 1 depending upon required sort order.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the browser window.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Node-method-sort Sencha Docs Ext JS 3.4
   */
  public native function sort(fn:Function, scope:Object = null):void;

}
}
    