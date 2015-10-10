package ext.tree {
import ext.Element;
import ext.Panel;
import ext.config.treepanel;

/**
 * Fires when a new child node is appended to a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
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
 * Fires before a new child is appended to a node in this tree, return false to cancel the append.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The child node to be appended
 *       </li>

 * </ul>
 */
[Event(name="beforeappend")]

/**
 * Fires right before the child nodes for a node are rendered
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 * </ul>
 */
[Event(name="beforechildrenrendered")]

/**
 * Fires before click processing on a node. Return false to cancel the default action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="beforeclick")]

/**
 * Fires before a node is collapsed, return false to cancel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>deep:Boolean</code>

 *       </li>

 *       <li>
 *           <code>anim:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="beforecollapsenode")]

/**
 * Fires before double click processing on a node. Return false to cancel the default action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="beforedblclick")]

/**
 * Fires before a node is expanded, return false to cancel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>deep:Boolean</code>

 *       </li>

 *       <li>
 *           <code>anim:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeexpandnode")]

/**
 * Fires before a new child is inserted in a node in this tree, return false to cancel the insert.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The child node to be inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.tree.TreeNode</code>
 The child node the node is being inserted before
 *       </li>

 * </ul>
 */
[Event(name="beforeinsert")]

/**
 * Fires before a node is loaded, return false to cancel
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node being loaded
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Fires before a node is moved to a new location in the tree. Return false to cancel the move.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node being moved
 *       </li>

 *       <li>
 *           <code>oldParent:ext.tree.TreeNode</code>
 The parent of the node
 *       </li>

 *       <li>
 *           <code>newParent:ext.tree.TreeNode</code>
 The new parent the node is moving to
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it is being moved to
 *       </li>

 * </ul>
 */
[Event(name="beforemovenode")]

/**
 * Fires when a DD object is dropped on a node in this tree for preprocessing. Return false to cancel the drop. The dropEvent passed to handlers has the following properties:<br/><ul style="padding:5px;padding-left:16px;"><li>tree - The TreePanel</li><li>target - The node being targeted for the drop</li><li>data - The drag data from the drag source</li><li>point - The point of the drop - append, above or below</li><li>source - The drag source</li><li>rawEvent - Raw mouse event</li><li>dropNode - Drop node(s) provided by the source <b>OR</b> you can supply node(s) to be inserted by setting them on this object.</li><li>cancel - Set this to true to cancel the drop.</li><li>dropStatus - If the default drop action is cancelled but the drop is valid, setting this to true will prevent the animated 'repair' from appearing.</li></ul>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>dropEvent:Object</code>

 *       </li>

 * </ul>
 */
[Event(name="beforenodedrop")]

/**
 * Fires before a child is removed from a node in this tree, return false to cancel the remove.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The child node to be removed
 *       </li>

 * </ul>
 */
[Event(name="beforeremove")]

/**
 * Fires when a node with a checkbox's checked property changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>checked:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="checkchange")]

/**
 * Fires when a node is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when a node is collapsed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 * </ul>
 */
[Event(name="collapsenode")]

/**
 * Fires when the tree container is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Tree</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="containerclick")]

/**
 * Fires when the tree container is right clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Tree</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="containercontextmenu")]

/**
 * Fires when the tree container is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.data.Tree</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="containerdblclick")]

/**
 * Fires when a node is right clicked. To display a context menu in response to this event, first create a Menu object (see <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> for details), then add a handler for this event:<pre><code>new Ext.tree.TreePanel({
 title: 'My TreePanel',
 root: new Ext.tree.AsyncTreeNode({
 text: 'The Root',
 children: [
 { text: 'Child node 1', leaf: true },
 { text: 'Child node 2', leaf: true }
 ]
 }),
 contextMenu: new Ext.menu.Menu({
 items: [{
 id: 'delete-node',
 text: 'Delete Node'
 }],
 listeners: {
 itemclick: function(item) {
 switch (item.id) {
 case 'delete-node':
 var n = item.parentMenu.contextNode;
 if (n.parentNode) {
 n.remove();
 }
 break;
 }
 }
 }
 }),
 listeners: {
 contextmenu: function(node, e) {
 //          Register the context node with the menu so that a Menu Item's handler function can access
 //          it via its <a href="output/Ext.menu.BaseItem.html#Ext.menu.BaseItem-parentMenu">parentMenu</a> property.
 node.select();
 var c = node.getOwnerTree().contextMenu;
 c.contextNode = node;
 c.showAt(e.getXY());
 }
 }
 });
 </code></pre>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires when a node is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when the disabled status of a node changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>disabled:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="disabledchange")]

/**
 * Fires when a dragged node is dropped on a valid DD target
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreePanel</code>

 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>

 *       </li>

 *       <li>
 *           <code>dd:ext.dd.DD</code>
 The dd it was dropped on
 *       </li>

 *       <li>
 *           <code>e:js.Event</code>
 The raw browser event
 *       </li>

 * </ul>
 */
[Event(name="dragdrop")]

/**
 * Fires when a drag operation is complete
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreePanel</code>

 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>

 *       </li>

 *       <li>
 *           <code>e:js.Event</code>
 The raw browser event
 *       </li>

 * </ul>
 */
[Event(name="enddrag")]

/**
 * Fires when a node is expanded
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 * </ul>
 */
[Event(name="expandnode")]

/**
 * Fires when a new child node is inserted in a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The child node inserted
 *       </li>

 *       <li>
 *           <code>refNode:ext.tree.TreeNode</code>
 The child node the node was inserted before
 *       </li>

 * </ul>
 */
[Event(name="insert")]

/**
 * Fires when a node is loaded
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node that was loaded
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * Fires when a node is moved to a new location in the tree
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node moved
 *       </li>

 *       <li>
 *           <code>oldParent:ext.tree.TreeNode</code>
 The old parent of this node
 *       </li>

 *       <li>
 *           <code>newParent:ext.tree.TreeNode</code>
 The new parent of this node
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index it was moved to
 *       </li>

 * </ul>
 */
[Event(name="movenode")]

/**
 * Fires when a tree node is being targeted for a drag drop, return false to signal drop not allowed. The dragOverEvent passed to handlers has the following properties:<br/><ul style="padding:5px;padding-left:16px;"><li>tree - The TreePanel</li><li>target - The node being targeted for the drop</li><li>data - The drag data from the drag source</li><li>point - The point of the drop - append, above or below</li><li>source - The drag source</li><li>rawEvent - Raw mouse event</li><li>dropNode - Drop node(s) provided by the source.</li><li>cancel - Set this to true to signal drop not allowed.</li></ul>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>dragOverEvent:Object</code>

 *       </li>

 * </ul>
 */
[Event(name="nodedragover")]

/**
 * Fires after a DD object is dropped on a node in this tree. The dropEvent passed to handlers has the following properties:<br/><ul style="padding:5px;padding-left:16px;"><li>tree - The TreePanel</li><li>target - The node being targeted for the drop</li><li>data - The drag data from the drag source</li><li>point - The point of the drop - append, above or below</li><li>source - The drag source</li><li>rawEvent - Raw mouse event</li><li>dropNode - Dropped node(s).</li></ul>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>dropEvent:Object</code>

 *       </li>

 * </ul>
 */
[Event(name="nodedrop")]

/**
 * Fires when a child node is removed from a node in this tree.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>tree:ext.data.Tree</code>
 The owner tree
 *       </li>

 *       <li>
 *           <code>parent:ext.tree.TreeNode</code>
 The parent node
 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The child node removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]

/**
 * Fires when a node starts being dragged
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreePanel</code>

 *       </li>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>

 *       </li>

 *       <li>
 *           <code>e:js.Event</code>
 The raw browser event
 *       </li>

 * </ul>
 */
[Event(name="startdrag")]

/**
 * Fires when the text for a node is changed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>node:ext.tree.TreeNode</code>
 The node
 *       </li>

 *       <li>
 *           <code>text:String</code>
 The new text
 *       </li>

 *       <li>
 *           <code>oldText:String</code>
 The old text
 *       </li>

 * </ul>
 */
[Event(name="textchange")]


/**
 * The TreePanel provides tree-structured UI representation of tree-structured data.
 <p><a href="Ext.tree.TreeNode.html">TreeNode</a>s added to the TreePanel may each contain metadata used by your application in their <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-attributes">attributes</a> property.</p><p><b>A TreePanel must have a <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-root">root</a> node before it is rendered.</b> This may either be specified using the <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-root">root</a> config option, or using the <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-setRootNode">setRootNode</a> method.</p><p>An example of tree rendered to an existing div:</p><pre><code>var tree = new Ext.tree.TreePanel({
 renderTo: 'tree-div',
 useArrows: true,
 autoScroll: true,
 animate: true,
 enableDD: true,
 containerScroll: true,
 border: false,
 // auto create TreeLoader
 dataUrl: 'get-nodes.php',

 root: {
 nodeType: 'async',
 text: 'Ext JS',
 draggable: false,
 id: 'source'
 }
 });

 tree.getRootNode().expand();
 </code></pre><p>The example above would work with a data packet similar to this:</p><pre><code>[{
 "text": "adapter",
 "id": "source\/adapter",
 "cls": "folder"
 }, {
 "text": "dd",
 "id": "source\/dd",
 "cls": "folder"
 }, {
 "text": "debug.js",
 "id": "source\/debug.js",
 "leaf": true,
 "cls": "file"
 }]
 </code></pre><p>An example of tree within a Viewport:</p><pre><code>new Ext.Viewport({
 layout: 'border',
 items: [{
 region: 'west',
 collapsible: true,
 title: 'Navigation',
 xtype: 'treepanel',
 width: 200,
 autoScroll: true,
 split: true,
 loader: new Ext.tree.TreeLoader(),
 root: new Ext.tree.AsyncTreeNode({
 expanded: true,
 children: [{
 text: 'Menu Option 1',
 leaf: true
 }, {
 text: 'Menu Option 2',
 leaf: true
 }, {
 text: 'Menu Option 3',
 leaf: true
 }]
 }),
 rootVisible: false,
 listeners: {
 click: function(n) {
 Ext.Msg.alert('Navigation Tree Click', 'You clicked: "' + n.attributes.text + '"');
 }
 }
 }, {
 region: 'center',
 xtype: 'tabpanel',
 // remaining code not shown ...
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'treepanel' / the EXML element &lt;treepanel>.</p>
 * @see ext.config.treepanel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel Sencha Docs Ext JS 3.4
 */
[Native]
public class TreePanel extends Panel {

  /**
   *
   *
   * @param config
   * @see ext.config.treepanel
   */
  public function TreePanel(config:treepanel = null) {
    super(null);
  }

  /**
   The dragZone used by this tree if drag is enabled (see <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-enableDD">enableDD</a> or <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-enableDrag">enableDrag</a>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-property-dragZone Sencha Docs Ext JS 3.4
   */
  public native function get dragZone():TreeDragZone;

  /**
   * @private
   */
  public native function set dragZone(value:TreeDragZone):void;

  /**
   The dropZone used by this tree if drop is enabled (see <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-enableDD">enableDD</a> or <a href="output/Ext.tree.TreePanel.html#Ext.tree.TreePanel-enableDrop">enableDrop</a>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-property-dropZone Sencha Docs Ext JS 3.4
   */
  public native function get dropZone():TreeDropZone;

  /**
   * @private
   */
  public native function set dropZone(value:TreeDropZone):void;

  /**
   The root node of this tree.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-property-root Sencha Docs Ext JS 3.4
   */
  public native function get root():TreeNode;

  /**
   * @private
   */
  public native function set root(value:TreeNode):void;

  /**
   <tt>true</tt> to enable animated expand/collapse (defaults to the value of <a href="output/Ext.html#Ext-enableFx">Ext.enableFx</a>)
   */
  public native function get animate():Boolean;

  /**
   <tt>true</tt> to register this container with ScrollManager
   */
  public native function get containerScroll():Boolean;

  /**
   <tt>true</tt> if the tree should only allow append drops (use for trees which are sorted)
   */
  public native function get ddAppendOnly():Boolean;

  /**
   The DD group this TreePanel belongs to
   */
  public native function get ddGroup():String;

  /**
   <tt>true</tt> to enable body scrolling
   */
  public native function get ddScroll():Boolean;

  /**
   Custom config to pass to the <a href="Ext.tree.TreeDragZone.html">Ext.tree.TreeDragZone</a> instance
   */
  public native function get dragConfig():Object;

  /**
   Custom config to pass to the <a href="Ext.tree.TreeDropZone.html">Ext.tree.TreeDropZone</a> instance
   */
  public native function get dropConfig():Object;

  /**
   <tt>true</tt> to enable drag and drop
   */
  public native function get enableDD():Boolean;

  /**
   <tt>true</tt> to enable just drag
   */
  public native function get enableDrag():Boolean;

  /**
   <tt>true</tt> to enable just drop
   */
  public native function get enableDrop():Boolean;

  /**
   The color of the node highlight (defaults to <tt>'C3DAF9'</tt>)
   */
  public native function get hlColor():String;

  /**
   <tt>false</tt> to disable node highlight on drop (defaults to the value of <a href="output/Ext.html#Ext-enableFx">Ext.enableFx</a>)
   */
  public native function get hlDrop():Boolean;

  /**
   <tt>false</tt> to disable tree lines (defaults to <tt>true</tt>)
   */
  public native function get lines():Boolean;

  /**
   The token used to separate sub-paths in path strings (defaults to <tt>'/'</tt>)
   */
  public native function get pathSeparator():String;

  /**
   The HTTP request method for loading data (defaults to the value of <a href="output/Ext.Ajax.html#Ext.Ajax-method">Ext.Ajax.method</a>).
   */
  public native function get requestMethod():String;

  /**
   <tt>false</tt> to hide the root node (defaults to <tt>true</tt>)
   */
  public native function get rootVisible():Boolean;

  /**
   A tree selection model to use with this TreePanel (defaults to an <a href="Ext.tree.DefaultSelectionModel.html">Ext.tree.DefaultSelectionModel</a>)
   */
  public native function get selModel():Object;

  /**
   <tt>true</tt> if only 1 node per branch may be expanded
   */
  public native function get singleExpand():Boolean;

  /**
   <tt>false</tt> to disable mouse over highlighting
   */
  public native function get trackMouseOver():Boolean;

  /**
   <tt>true</tt> to use Vista-style arrows in the tree (defaults to <tt>false</tt>)
   */
  public native function get useArrows():Boolean;

  /**
   * Collapse all nodes
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-collapseAll Sencha Docs Ext JS 3.4
   */
  public native function collapseAll():void;

  /**
   * Destroy the root node. Not included by itself because we need to pass the silent parameter.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-destroyRoot Sencha Docs Ext JS 3.4
   */
  public native function destroyRoot():void;

  /**
   * Expand all nodes
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-expandAll Sencha Docs Ext JS 3.4
   */
  public native function expandAll():void;

  /**
   * Expands a specified path in this TreePanel. A path can be retrieved from a node with <a href="output/Ext.data.Node.html#Ext.data.Node-getPath">Ext.data.Node.getPath</a>
   *
   * @param path
   * @param attr The attribute used in the path (see <a href="output/Ext.data.Node.html#Ext.data.Node-getPath">Ext.data.Node.getPath</a> for more info)
   * @param callback The callback to call when the expand is complete. The callback will be called with (bSuccess, oLastNode) where bSuccess is if the expand was successful and oLastNode is the last node that was expanded.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-expandPath Sencha Docs Ext JS 3.4
   */
  public native function expandPath(path:String, attr:String = null, callback:Function = null):void;

  /**
   * Retrieve an array of checked nodes, or an array of a specific attribute of checked nodes (e.g. 'id')
   *
   * @param attribute Defaults to null (return the actual nodes)
   * @param startNode The node to start from, defaults to the root
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getChecked Sencha Docs Ext JS 3.4
   */
  public native function getChecked(attribute:String = null, startNode:TreeNode = null):Array;

  /**
   * Returns the default <a href="Ext.tree.TreeLoader.html">Ext.tree.TreeLoader</a> for this TreePanel.
   *
   * @return The TreeLoader for this TreePanel.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getLoader Sencha Docs Ext JS 3.4
   */
  public native function getLoader():TreeLoader;

  /**
   * Gets a node in this tree by its id
   *
   * @param id
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getNodeById Sencha Docs Ext JS 3.4
   */
  public native function getNodeById(id:String):TreeNode;

  /**
   * Returns this root node for this tree
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getRootNode Sencha Docs Ext JS 3.4
   */
  public native function getRootNode():TreeNode;

  /**
   * Returns the selection model used by this TreePanel.
   *
   * @return The selection model used by this TreePanel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getSelectionModel Sencha Docs Ext JS 3.4
   */
  public native function getSelectionModel():DefaultSelectionModel;

  /**
   * Returns the underlying Element for this tree
   *
   * @return The Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-getTreeEl Sencha Docs Ext JS 3.4
   */
  public native function getTreeEl():Element;

  /**
   * Selects the node in this tree at the specified path. A path can be retrieved from a node with <a href="output/Ext.data.Node.html#Ext.data.Node-getPath">Ext.data.Node.getPath</a>
   *
   * @param path
   * @param attr The attribute used in the path (see <a href="output/Ext.data.Node.html#Ext.data.Node-getPath">Ext.data.Node.getPath</a> for more info)
   * @param callback The callback to call when the selection is complete. The callback will be called with (bSuccess, oSelNode) where bSuccess is if the selection was successful and oSelNode is the selected node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-selectPath Sencha Docs Ext JS 3.4
   */
  public native function selectPath(path:String, attr:String = null, callback:Function = null):void;

  /**
   * Sets the root node for this tree. If the TreePanel has already rendered a root node, the previous root node (and all of its descendants) are destroyed before the new root node is rendered.
   *
   * @param node
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreePanel-method-setRootNode Sencha Docs Ext JS 3.4
   */
  public native function setRootNode(node:TreeNode):TreeNode;

}
}
    