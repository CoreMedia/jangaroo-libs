package ext.tree {

import ext.data.Node;

/**
 * Fires right before the child nodes for this node are rendered
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 * </ul>
 */
[Event(name="beforechildrenrendered")]

/**
 * Fires before click processing. Return false to cancel the default action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="beforeclick")]

/**
 * Fires before this node is collapsed, return false to cancel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>deep:Boolean</code>

 *       </li>

 *       <li>
 *           <code>anim:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="beforecollapse")]

/**
 * Fires before double click processing. Return false to cancel the default action.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="beforedblclick")]

/**
 * Fires before this node is expanded, return false to cancel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>deep:Boolean</code>

 *       </li>

 *       <li>
 *           <code>anim:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeexpand")]

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
 * Fires when this node is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when this node is collapsed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 * </ul>
 */
[Event(name="collapse")]

/**
 * Fires when this node is right clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires when this node is double clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when the disabled status of this node changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 *       <li>
 *           <code>disabled:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="disabledchange")]

/**
 * Fires when this node is expanded
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
 *       </li>

 * </ul>
 */
[Event(name="expand")]

/**
 * Fires when the text for this node is changed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.tree.TreeNode</code>
 This node
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
 *
 * @see ext.config.treenode
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#cls-Ext.tree.TreeNode Ext JS source
 */
public class TreeNode extends Node {

  /**
   *
   *
   * @param attributes The attributes/config for the node or just a string with the text for the node
   * @see ext.config.treenode
   */
  public function TreeNode(attributes:*) {
    super(null);
  }

  /**
   True if this node is disabled.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#prop-Ext.tree.TreeNode-disabled Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   True if this node is hidden.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#prop-Ext.tree.TreeNode-hidden Ext JS source
   */
  public native function get hidden():Boolean;

  /**
   * @private
   */
  public native function set hidden(value:Boolean):void;

  /**
   The text for this node. To change it use <code><a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-setText">setText</a></code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#prop-Ext.tree.TreeNode-text Ext JS source
   */
  public native function get text():String;

  /**
   The UI for this node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#prop-Ext.tree.TreeNode-ui Ext JS source
   */
  public native function get ui():TreeNodeUI;

  /**
   False to not allow this node to have child nodes (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowChildren():Boolean;

  /**
   False to make this node undraggable if <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-draggable">draggable</a> = true (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowDrag():Boolean;

  /**
   False if this node cannot have child nodes dropped on it (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowDrop():Boolean;

  /**
   True to render a checked checkbox for this node, false to render an unchecked checkbox (defaults to undefined with no checkbox rendered)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get checked():Boolean;

  /**
   A css class to be added to the node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cls():String;

  /**
   True to make this node draggable (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get draggable():Boolean;

  /**
   False to not allow this node to be edited by an <a href="Ext.tree.TreeEditor.html">Ext.tree.TreeEditor</a> (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get editable():Boolean;

  /**
   If set to true, the node will always show a plus/minus icon, even when empty
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get expandable():Boolean;

  /**
   true to start the node expanded
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get expanded():Boolean;

  /**
   URL of the link used for the node (defaults to #)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get href():String;

  /**
   target frame for the link
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hrefTarget():String;

  /**
   The path to an icon for the node. The preferred way to do this is to use the cls or iconCls attributes and add the icon via a CSS background image.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get icon():String;

  /**
   A css class to be added to the nodes icon element for applying css background images
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconCls():String;

  /**
   False to not allow this node to act as a drop target (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get isTarget():Boolean;

  /**
   An Ext QuickTip for the node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get qtip():String;

  /**
   An Ext QuickTip config for the node (used instead of qtip)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get qtipCfg():String;

  /**
   True for single click expand on this node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get singleClickExpand():Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-beginUpdate Ext JS source
   */
  public native function beginUpdate():void;

  /**
   * Collapse this node.
   *
   * @param deep True to collapse all children as well
   * @param anim false to cancel the default animation
   * @param callback A callback to be called when expanding this node completes (does not wait for deep expand to complete). Called with 1 parameter, this node.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this TreeNode.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-collapse Ext JS source
   */
  public native function collapse(deep:Boolean = false, anim:Boolean = false, callback:Function = null, scope:Object = null):void;

  /**
   * Collapse all child nodes
   *
   * @param deep true if the child nodes should also collapse their child nodes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-collapseChildNodes Ext JS source
   */
  public native function collapseChildNodes(deep:Boolean = false):void;

  /**
   * Disables this node
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables this node
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-enable Ext JS source
   */
  public native function enable():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-endUpdate Ext JS source
   */
  public native function endUpdate():void;

  /**
   * Ensures all parent nodes are expanded, and if necessary, scrolls the node into view.
   *
   * @param callback A function to call when the node has been made visible.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this TreeNode.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-ensureVisible Ext JS source
   */
  public native function ensureVisible(callback:Function = null, scope:Object = null):void;

  /**
   * Expand this node.
   *
   * @param deep True to expand all children as well
   * @param anim false to cancel the default animation
   * @param callback A callback to be called when expanding this node completes (does not wait for deep expand to complete). Called with 1 parameter, this node.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to this TreeNode.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-expand Ext JS source
   */
  public native function expand(deep:Boolean = false, anim:Boolean = false, callback:Function = null, scope:Object = null):void;

  /**
   * Expand all child nodes
   *
   * @param deep true if the child nodes should also expand their child nodes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-expandChildNodes Ext JS source
   */
  public native function expandChildNodes(deep:Boolean = false):void;

  /**
   * Returns the UI object for this node.
   *
   * @return The object which is providing the user interface for this tree node. Unless otherwise specified in the <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-uiProvider">uiProvider</a>, this will be an instance of <a href="Ext.tree.TreeNodeUI.html">Ext.tree.TreeNodeUI</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-getUI Ext JS source
   */
  public native function getUI():TreeNodeUI;

  /**
   * Returns true if this node is expanded
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-isExpanded Ext JS source
   */
  public native function isExpanded():Boolean;

  /**
   * Returns true if this node is selected
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-isSelected Ext JS source
   */
  public native function isSelected():Boolean;

  /**
   * Triggers selection of this node
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-select Ext JS source
   */
  public native function select():void;

  /**
   * Sets the class on this node.
   *
   * @param cls
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setCls Ext JS source
   */
  public native function setCls(cls:String):void;

  /**
   * Sets the href for the node.
   *
   * @param href The href to set
   * @param target The target of the href
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setHref Ext JS source
   */
  public native function setHref(href:String, target:String = null):void;

  /**
   * Sets the icon for this node.
   *
   * @param icon
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setIcon Ext JS source
   */
  public native function setIcon(icon:String):void;

  /**
   * Sets the icon class for this node.
   *
   * @param cls
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setIconCls Ext JS source
   */
  public native function setIconCls(cls:String):void;

  /**
   * Sets the text for this node
   *
   * @param text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setText Ext JS source
   */
  public native function setText(text:String):void;

  /**
   * Sets the tooltip for this node.
   *
   * @param tip The text for the tip
   * @param title The title for the tip
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-setTooltip Ext JS source
   */
  public native function setTooltip(tip:String, title:String = null):void;

  /**
   * Toggles expanded/collapsed state of the node
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-toggle Ext JS source
   */
  public native function toggle():void;

  /**
   * Triggers deselection of this node
   *
   * @param silent True to stop selection change events from firing.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TreeNode.html#method-Ext.tree.TreeNode-unselect Ext JS source
   */
  public native function unselect(silent:Boolean = false):void;

}
}
    