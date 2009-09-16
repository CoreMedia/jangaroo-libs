package ext.tree {

import ext.Editor;

/**
 * Provides editor functionality for inline tree node editing.  Any valid <b class='link'>ext.form.Field</b> subclass can be used
 * as the editor field.
*/
public class TreeEditor extends Editor {
/**
 * @constructor
 * @param tree
 * @param fieldConfig Either a prebuilt <b class='link'>ext.form.Field</b> instance or a Field config object
 * that will be applied to the default field instance (defaults to a <b class='link'>ext.form.TextField</b>).
 * @param config A TreeEditor config object
 */
public function TreeEditor(tree : TreePanel, fieldConfig : Object = undefined, config : Object = undefined) {
  super(config);
  tree++;
  fieldConfig++;
}
    /**
     * @cfg {String} alignment
     * The position to align to (see <b class='link'>ext.Element#alignTo</b> for more details, defaults to "l-l").
     */
    //public var alignment : String;
    public var autoSize;
    /**
     * @cfg {Boolean} hideEl
     * True to hide the bound element while the editor is displayed (defaults to false)
     */
    public var hideEl  : Boolean;
    /**
     * @cfg {String} cls
     * CSS class to apply to the editor (defaults to "x-small-editor x-tree-editor")
     */
    //public var cls : String;
    /**
     * @cfg {Boolean} shim
     * True to shim the editor if selects/iframes could be displayed beneath it (defaults to false)
     */
    public var shim : Boolean;
    //public var shadow;
    /**
     * @cfg {Number} maxWidth
     * The maximum width in pixels of the editor field (defaults to 250).  Note that if the maxWidth would exceed
     * the containing tree element's size, it will be automatically limited for you to the container width, taking
     * scroll and client offsets into account prior to each edit.
     */
    public var maxWidth : Number;
    /**
     * @cfg {Number} editDelay The number of milliseconds between clicks to register a double-click that will trigger
     * editing on the current node (defaults to 350).  If two clicks occur on the same node within this time span,
     * the editor for the node will display, otherwise it will be processed as a regular click.
     */
    public var editDelay  : Number;
    public native function initEditor(tree) : void;
    protected native function fitToTree(ed, el) : void;
    /**
     * Edit the text of the passed <b class='link' title='Ext.tree.TreeNode'>TreeNode</b>.
     * @param node {ext.tree.TreeNode} The TreeNode to edit. The TreeNode must be <b class='link' title='ext.tree.TreeNode#editable'>editable</b>.
     */
    public native function triggerEdit(node, defer) : void;
           /**
            * The <b class='link' title='Ext.tree.TreeNode'>TreeNode</b> this editor is bound to. Read-only.
            * @property editNode
            */
    protected native function bindScroll() : void;
    protected native function beforeNodeClick(node, e) : void;
    public native function onNodeDblClick(node, e) : void;
    protected native function updateNode(ed, value) : void;
    override protected native function onHide() : void;
    override protected native function onSpecialKey(field, e) : void;
}}