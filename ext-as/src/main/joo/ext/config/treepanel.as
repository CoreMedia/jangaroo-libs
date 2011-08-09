package ext.config {

import ext.tree.TreeLoader;
import ext.tree.TreeNode;

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
 * <p>This class serves as a typed config object for constructor of class TreePanel.</p>
 *
 * @see ext.tree.TreePanel
 */
[ExtConfig(target="ext.tree.TreePanel", xtype="treepanel")]
public class treepanel extends panel {

  public function treepanel(config:Object = null) {

    super(config);
  }


  /**
   <tt>true</tt> to enable animated expand/collapse (defaults to the value of <a href="output/Ext.html#Ext-enableFx">Ext.enableFx</a>)
   */
  public native function get animate():Boolean;

  /**
   * @private
   */
  public native function set animate(value:Boolean):void;

  /**
   An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <tt>[]</tt>.

   */
  override public native function get bubbleEvents():Array;

  /**
   * @private
   */
  override public native function set bubbleEvents(value:Array):void;

  /**
   <tt>true</tt> to register this container with ScrollManager
   */
  public native function get containerScroll():Boolean;

  /**
   * @private
   */
  public native function set containerScroll(value:Boolean):void;

  /**
   <tt>true</tt> if the tree should only allow append drops (use for trees which are sorted)
   */
  public native function get ddAppendOnly():Boolean;

  /**
   * @private
   */
  public native function set ddAppendOnly(value:Boolean):void;

  /**
   The DD group this TreePanel belongs to
   */
  public native function get ddGroup():String;

  /**
   * @private
   */
  public native function set ddGroup(value:String):void;

  /**
   <tt>true</tt> to enable body scrolling
   */
  public native function get ddScroll():Boolean;

  /**
   * @private
   */
  public native function set ddScroll(value:Boolean):void;

  /**
   Custom config to pass to the <a href="Ext.tree.TreeDragZone.html">Ext.tree.TreeDragZone</a> instance
   */
  public native function get dragConfig():Object;

  /**
   * @private
   */
  public native function set dragConfig(value:Object):void;

  /**
   Custom config to pass to the <a href="Ext.tree.TreeDropZone.html">Ext.tree.TreeDropZone</a> instance
   */
  public native function get dropConfig():Object;

  /**
   * @private
   */
  public native function set dropConfig(value:Object):void;

  /**
   <tt>true</tt> to enable drag and drop
   */
  public native function get enableDD():Boolean;

  /**
   * @private
   */
  public native function set enableDD(value:Boolean):void;

  /**
   <tt>true</tt> to enable just drag
   */
  public native function get enableDrag():Boolean;

  /**
   * @private
   */
  public native function set enableDrag(value:Boolean):void;

  /**
   <tt>true</tt> to enable just drop
   */
  public native function get enableDrop():Boolean;

  /**
   * @private
   */
  public native function set enableDrop(value:Boolean):void;

  /**
   The color of the node highlight (defaults to <tt>'C3DAF9'</tt>)
   */
  public native function get hlColor():String;

  /**
   * @private
   */
  public native function set hlColor(value:String):void;

  /**
   <tt>false</tt> to disable node highlight on drop (defaults to the value of <a href="output/Ext.html#Ext-enableFx">Ext.enableFx</a>)
   */
  public native function get hlDrop():Boolean;

  /**
   * @private
   */
  public native function set hlDrop(value:Boolean):void;

  /**
   <tt>false</tt> to disable tree lines (defaults to <tt>true</tt>)
   */
  public native function get lines():Boolean;

  /**
   * @private
   */
  public native function set lines(value:Boolean):void;

  /**
   A <a href="Ext.tree.TreeLoader.html">Ext.tree.TreeLoader</a> for use with this TreePanel
   */
  public native function get loader():TreeLoader;

  /**
   * @private
   */
  public native function set loader(value:TreeLoader):void;

  /**
   The token used to separate sub-paths in path strings (defaults to <tt>'/'</tt>)
   */
  public native function get pathSeparator():String;

  /**
   * @private
   */
  public native function set pathSeparator(value:String):void;

  /**
   The HTTP request method for loading data (defaults to the value of <a href="output/Ext.Ajax.html#Ext.Ajax-method">Ext.Ajax.method</a>).
   */
  public native function get requestMethod():String;

  /**
   * @private
   */
  public native function set requestMethod(value:String):void;

  /**
   The root node for the tree.
   */
  public native function get root():TreeNode;

  /**
   * @private
   */
  public native function set root(value:TreeNode):void;

  /**
   <tt>false</tt> to hide the root node (defaults to <tt>true</tt>)
   */
  public native function get rootVisible():Boolean;

  /**
   * @private
   */
  public native function set rootVisible(value:Boolean):void;

  /**
   A tree selection model to use with this TreePanel (defaults to an <a href="Ext.tree.DefaultSelectionModel.html">Ext.tree.DefaultSelectionModel</a>)
   */
  public native function get selModel():Object;

  /**
   * @private
   */
  public native function set selModel(value:Object):void;

  /**
   <tt>true</tt> if only 1 node per branch may be expanded
   */
  public native function get singleExpand():Boolean;

  /**
   * @private
   */
  public native function set singleExpand(value:Boolean):void;

  /**
   <tt>false</tt> to disable mouse over highlighting
   */
  public native function get trackMouseOver():Boolean;

  /**
   * @private
   */
  public native function set trackMouseOver(value:Boolean):void;

  /**
   <tt>true</tt> to use Vista-style arrows in the tree (defaults to <tt>false</tt>)
   */
  public native function get useArrows():Boolean;

  /**
   * @private
   */
  public native function set useArrows(value:Boolean):void;


}
}
    