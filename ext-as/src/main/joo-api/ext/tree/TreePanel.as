package ext.tree {

import ext.Element;
import ext.Panel;
import ext.grid.AbstractSelectionModel;

/**
 * <p>The TreePanel provides tree-structured UI representation of tree-structured data.</p>
 * <p><b class='link' title='Ext.tree.TreeNode'>TreeNode</b>s added to the TreePanel may each contain metadata
 * used by your application in their <b class='link' title='Ext.tree.TreeNode#attributes'>attributes</b> property.</p>
 * <p><b>A TreePanel must have a <b class='link'>#root</b> node before it is rendered.</b> This may either be
 * specified using the <b class='link'>#root</b> config option, or using the <b class='link'>#setRootNode</b> method.
 * <p>An example of tree rendered to an existing div:</p><pre><code>
var tree = new Ext.tree.TreePanel({
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
 * </code></pre>
 * <p>The example above would work with a data packet similar to this:</p><pre><code>
[{
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
 * </code></pre>
 * <p>An example of tree within a Viewport:</p><pre><code>
new ext.Viewport({
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
                ext.Msg.alert('Navigation Tree Click', 'You clicked: "' + n.attributes.text + '"');
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
*/
public class TreePanel extends Panel {
/**
 * @cfg {ext.tree.TreeNode} root The root node for the tree.
 * @cfg {Boolean} rootVisible <tt>false</tt> to hide the root node (defaults to <tt>true</tt>)
 * @cfg {Boolean} lines <tt>false</tt> to disable tree lines (defaults to <tt>true</tt>)
 * @cfg {Boolean} enableDD <tt>true</tt> to enable drag and drop
 * @cfg {Boolean} enableDrag <tt>true</tt> to enable just drag
 * @cfg {Boolean} enableDrop <tt>true</tt> to enable just drop
 * @cfg {Object} dragConfig Custom config to pass to the <b class='link'>Ext.tree.TreeDragZone</b> instance
 * @cfg {Object} dropConfig Custom config to pass to the <b class='link'>Ext.tree.TreeDropZone</b> instance
 * @cfg {String} ddGroup The DD group this TreePanel belongs to
 * @cfg {Boolean} ddAppendOnly <tt>true</tt> if the tree should only allow append drops (use for trees which are sorted)
 * @cfg {Boolean} ddScroll <tt>true</tt> to enable body scrolling
 * @cfg {Boolean} containerScroll <tt>true</tt> to register this container with ScrollManager
 * @cfg {Boolean} hlDrop <tt>false</tt> to disable node highlight on drop (defaults to the value of <b class='link'>Ext#enableFx</b>)
 * @cfg {String} hlColor The color of the node highlight (defaults to <tt>'C3DAF9'</tt>)
 * @cfg {Boolean} animate <tt>true</tt> to enable animated expand/collapse (defaults to the value of <b class='link'>Ext#enableFx</b>)
 * @cfg {Boolean} singleExpand <tt>true</tt> if only 1 node per branch may be expanded
 * @cfg {Object} selModel A tree selection model to use with this TreePanel (defaults to an <b class='link'>Ext.tree.DefaultSelectionModel</b>)
 * @cfg {Boolean} trackMouseOver <tt>false</tt> to disable mouse over highlighting
 * @cfg {ext.tree.TreeLoader} loader A <b class='link'>Ext.tree.TreeLoader</b> for use with this TreePanel
 * @cfg {String} pathSeparator The token used to separate sub-paths in path strings (defaults to <tt>'/'</tt>)
 * @cfg {Boolean} useArrows <tt>true</tt> to use Vista-style arrows in the tree (defaults to <tt>false</tt>)
 * @cfg {String} requestMethod The HTTP request method for loading data (defaults to the value of <b class='link'>ext.Ajax#method</b>).
 */
/**
 * @constructor
 * @param config
 * @xtype treepanel
 */

  public function TreePanel(config:Object) {
    super(config);
  }

  public var rootVisible  : String;
    public var animate;
    public var lines ;
    public var enableDD ;
    public var hlDrop ;
    public var pathSeparator;
    override protected native function initComponent() : void;
        /**
        * The root node of this tree.
        * @property root
        */
  public var root : TreeNode;
    protected native function proxyNodeEvent(dragOverEvent : Object, a1, a2, a3, a4, a5, a6) : void;
    /**
     * Returns this root node for this tree
     * @return 
     */
    public native function getRootNode() : TreeNode;
    /**
     * Sets the root node for this tree. If the TreePanel has already rendered a root node, the
     * previous root node (and all of its descendants) are destroyed before the new root node is rendered.
     * @param node
     * @return 
     */
    public native function setRootNode(node : TreeNode) : TreeNode;
    /**
     * Gets a node in this tree by its id
     * @param id
     * @return 
     */
    public native function getNodeById(id : String) : TreeNode;
    protected native function registerNode(node : TreeNode) : void;
    protected native function unregisterNode(node : TreeNode) : void;
    protected native function toString() : void;
    protected native function restrictExpand(node : TreeNode) : void;
    /**
     * Retrieve an array of checked nodes, or an array of a specific attribute of checked nodes (e.g. "id")
     * @param attribute Defaults to null (return the actual nodes)
     * @param startNode The node to start from, defaults to the root
     * @return 
     */
    public native function getChecked(attribute : String = undefined, startNode : TreeNode = undefined) : Array;
    /**
     * Returns the container element for this TreePanel.
     * @return The container element for this TreePanel.
     */
    override public native function getEl() : Element;
    /**
     * Returns the default <b class='link'>Ext.tree.TreeLoader</b> for this TreePanel.
     * @return The TreeLoader for this TreePanel.
     */
    public native function getLoader() : TreeLoader;
    /**
     * Expand all nodes
     */
    public native function expandAll() : void;
    /**
     * Collapse all nodes
     */
    public native function collapseAll() : void;
    /**
     * Returns the selection model used by this TreePanel.
     * @return The selection model used by this TreePanel
     */
    public native function getSelectionModel() : AbstractSelectionModel;
    /**
     * Expands a specified path in this TreePanel. A path can be retrieved from a node with <b class='link'>ext.data.Node#getPath</b>
     * @param path
     * @param attr The attribute used in the path (see <b class='link'>ext.data.Node#getPath</b> for more info)
     * @param callback The callback to call when the expand is complete. The callback will be called with
     * (bSuccess, oLastNode) where bSuccess is if the expand was successful and oLastNode is the last node that was expanded.
     */
    public native function expandPath(path : String, attr : String = undefined, callback : Function = undefined) : void;
    /**
     * Selects the node in this tree at the specified path. A path can be retrieved from a node with <b class='link'>ext.data.Node#getPath</b>
     * @param path
     * @param attr The attribute used in the path (see <b class='link'>ext.data.Node#getPath</b> for more info)
     * @param callback The callback to call when the selection is complete. The callback will be called with
     * (bSuccess, oSelNode) where bSuccess is if the selection was successful and oSelNode is the selected node.
     */
    public native function selectPath(path : String, attr : String = undefined, callback : Function = undefined) : void;
    /**
     * Returns the underlying Element for this tree
     * @return The Element
     */
    public native function getTreeEl() : Element;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function initEvents() : void;
           /**
            * The dropZone used by this tree if drop is enabled (see <b class='link'>#enableDD</b> or <b class='link'>#enableDrop</b>)
            * @property dropZone
            */
           /**
            * The dragZone used by this tree if drag is enabled (see <b class='link'>#enableDD</b> or <b class='link'>#enableDrag</b>)
            * @property dragZone
            */
    override protected native function afterRender() : void;
    override protected native function onDestroy() : void;
    /**
     * @cfg {String/Number} activeItem
     * @hide
     */
    /**
     * @cfg {Boolean} autoDestroy
     * @hide
     */
    /**
     * @cfg {Object/String/Function} autoLoad
     * @hide
     */
    /**
     * @cfg {Boolean} autoWidth
     * @hide
     */
    /**
     * @cfg {Boolean/Number} bufferResize
     * @hide
     */
    /**
     * @cfg {String} defaultType
     * @hide
     */
    /**
     * @cfg {Object} defaults
     * @hide
     */
    /**
     * @cfg {Boolean} hideBorders
     * @hide
     */
    /**
     * @cfg {Mixed} items
     * @hide
     */
    /**
     * @cfg {String} layout
     * @hide
     */
    /**
     * @cfg {Object} layoutConfig
     * @hide
     */
    /**
     * @cfg {Boolean} monitorResize
     * @hide
     */
    /**
     * @property items
     * @hide
     */
    /**
     * @method cascade
     * @hide
     */
    /**
     * @method doLayout
     * @hide
     */
    /**
     * @method find
     * @hide
     */
    /**
     * @method findBy
     * @hide
     */
    /**
     * @method findById
     * @hide
     */
    /**
     * @method findByType
     * @hide
     */
    /**
     * @method getComponent
     * @hide
     */
    /**
     * @method getLayout
     * @hide
     */
    /**
     * @method getUpdater
     * @hide
     */
    /**
     * @method insert
     * @hide
     */
    /**
     * @method load
     * @hide
     */
    /**
     * @method remove
     * @hide
     */
    /**
     * @event add
     * @hide
     */
    /**
     * @method removeAll
     * @hide
     */
    /**
     * @event afterLayout
     * @hide
     */
    /**
     * @event beforeadd
     * @hide
     */
    /**
     * @event beforeremove
     * @hide
     */
    /**
     * @event remove
     * @hide
     */
    /**
     * @cfg {String} allowDomMove  @hide
     */
    /**
     * @cfg {String} autoEl @hide
     */
    /**
     * @cfg {String} applyTo  @hide
     */
    /**
     * @cfg {String} contentEl  @hide
     */
    /**
     * @cfg {String} disabledClass  @hide
     */
    /**
     * @cfg {String} elements  @hide
     */
    /**
     * @cfg {String} html  @hide
     */
    /**
     * @cfg {Boolean} preventBodyReset
     * @hide
     */
    /**
     * @property disabled
     * @hide
     */
    /**
     * @method applyToMarkup
     * @hide
     */
    /**
     * @method enable
     * @hide
     */
    /**
     * @method disable
     * @hide
     */
    /**
     * @method setDisabled
     * @hide
     */
public static var nodeTypes  : Object = {};
}}
