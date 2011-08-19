package ext.tree {
import ext.Editor;
import ext.config.treeeditor;

/**
 * Provides editor functionality for inline tree node editing. Any valid <a href="Ext.form.Field.html">Ext.form.Field</a> subclass can be used as the editor field.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.treeeditor
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeEditor.html#cls-Ext.tree.TreeEditor Ext JS source
 */
public class TreeEditor extends Editor {

  /**
   *
   *
   * @param tree
   * @param fieldConfig Either a prebuilt <a href="Ext.form.Field.html">Ext.form.Field</a> instance or a Field config object that will be applied to the default field instance (defaults to a <a href="Ext.form.TextField.html">Ext.form.TextField</a>).
   * @param config A TreeEditor config object
   * @see ext.config.treeeditor
   */
  public function TreeEditor(tree:TreePanel, fieldConfig:Object = null, config:treeeditor = null) {
    super(null);
  }

  /**
   The <a href="Ext.tree.TreeNode.html">TreeNode</a> this editor is bound to.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeEditor.html#prop-Ext.tree.TreeEditor-editNode Ext JS source
   */
  public native function get editNode():TreeNode;

  /**
   The number of milliseconds between clicks to register a double-click that will trigger editing on the current node (defaults to 350). If two clicks occur on the same node within this time span, the editor for the node will display, otherwise it will be processed as a regular click.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get editDelay():Number;

  /**
   The maximum width in pixels of the editor field (defaults to 250). Note that if the maxWidth would exceed the containing tree element's size, it will be automatically limited for you to the container width, taking scroll and client offsets into account prior to each edit.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxWidth():Number;

  /**
   True to shim the editor if selects/iframes could be displayed beneath it (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shim():Boolean;

  /**
   * Edit the text of the passed <a href="Ext.tree.TreeNode.html">TreeNode</a>.
   *
   * @param node The TreeNode to edit. The TreeNode must be <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-editable">editable</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeEditor.html#method-Ext.tree.TreeEditor-triggerEdit Ext JS source
   */
  public native function triggerEdit(node:TreeNode):void;

}
}
    