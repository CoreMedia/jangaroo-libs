package ext.tree {
import js.HTMLElement;
import js.Node;

/**
 * This class provides the default UI implementation for Ext TreeNodes. The TreeNode UI implementation is separate from the tree implementation, and allows customizing of the appearance of tree nodes.<br/><p>If you are customizing the Tree's user interface, you may need to extend this class, but you should never need to instantiate this class.<br/></p><p>This class provides access to the user interface components of an Ext TreeNode, through <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-getUI">Ext.tree.TreeNode.getUI</a></p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#cls-Ext.tree.TreeNodeUI Ext JS source
 */
public class TreeNodeUI {

  /**
   *
   *
   */
  public function TreeNodeUI() {
    super();
  }

  /**
   * Adds one or more CSS classes to the node's UI element. Duplicate classes are automatically filtered out.
   *
   * @param className The CSS class to add, or an array of classes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-addClass Ext JS source
   */
  public native function addClass(className:*):void;

  /**
   * Returns the &lt;a&gt; element that provides focus for the node's UI.
   *
   * @return The DOM anchor element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-getAnchor Ext JS source
   */
  public native function getAnchor():HTMLElement;

  /**
   * Returns the element which encapsulates this node.
   *
   * @return The DOM element. The default implementation uses a <code>&lt;li&gt;</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-getEl Ext JS source
   */
  public native function getEl():HTMLElement;

  /**
   *
   *
   * @param href
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-getHref Ext JS source
   */
  public native function getHref(href:String):void;

  /**
   * Returns the icon &lt;img&gt; element.
   *
   * @return The DOM image element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-getIconEl Ext JS source
   */
  public native function getIconEl():HTMLElement;

  /**
   * Returns the text node.
   *
   * @return The DOM text node.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-getTextEl Ext JS source
   */
  public native function getTextEl():Node;

  /**
   * Hides this node.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-hide Ext JS source
   */
  public native function hide():void;

  /**
   * Returns the checked status of the node. If the node was rendered with no checkbox, it returns false.
   *
   * @return The checked flag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-isChecked Ext JS source
   */
  public native function isChecked():Boolean;

  /**
   * Removes one or more CSS classes from the node's UI element.
   *
   * @param className The CSS class to remove, or an array of classes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-removeClass Ext JS source
   */
  public native function removeClass(className:*):void;

  /**
   * Shows this node.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-show Ext JS source
   */
  public native function show():void;

  /**
   * Sets the checked status of the tree node to the passed value, or, if no value was passed, toggles the checked status. If the node was rendered with no checkbox, this has no effect.
   *
   * @param value The new checked status.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNodeUI.html#method-Ext.tree.TreeNodeUI-toggleCheck Ext JS source
   */
  public native function toggleCheck(value:Boolean = false):void;

}
}
    