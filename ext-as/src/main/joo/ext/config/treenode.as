package ext.config {


/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class TreeNode.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.tree.TreeNode
 */
[ExtConfig(target="ext.tree.TreeNode")]
public class treenode extends node {

  public function treenode(config:Object = null) {

    super(config);
  }


  /**
   False to not allow this node to have child nodes (defaults to true)
   */
  public native function get allowChildren():Boolean;

  /**
   * @private
   */
  public native function set allowChildren(value:Boolean):void;

  /**
   False to make this node undraggable if <a href="output/Ext.tree.TreeNode.html#Ext.tree.TreeNode-draggable">draggable</a> = true (defaults to true)
   */
  public native function get allowDrag():Boolean;

  /**
   * @private
   */
  public native function set allowDrag(value:Boolean):void;

  /**
   False if this node cannot have child nodes dropped on it (defaults to true)
   */
  public native function get allowDrop():Boolean;

  /**
   * @private
   */
  public native function set allowDrop(value:Boolean):void;

  /**
   True to render a checked checkbox for this node, false to render an unchecked checkbox (defaults to undefined with no checkbox rendered)
   */
  public native function get checked():Boolean;

  /**
   * @private
   */
  public native function set checked(value:Boolean):void;

  /**
   A css class to be added to the node
   */
  public native function get cls():String;

  /**
   * @private
   */
  public native function set cls(value:String):void;

  /**
   true to start the node disabled
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   True to make this node draggable (defaults to false)
   */
  public native function get draggable():Boolean;

  /**
   * @private
   */
  public native function set draggable(value:Boolean):void;

  /**
   False to not allow this node to be edited by an <a href="Ext.tree.TreeEditor.html">Ext.tree.TreeEditor</a> (defaults to true)
   */
  public native function get editable():Boolean;

  /**
   * @private
   */
  public native function set editable(value:Boolean):void;

  /**
   If set to true, the node will always show a plus/minus icon, even when empty
   */
  public native function get expandable():Boolean;

  /**
   * @private
   */
  public native function set expandable(value:Boolean):void;

  /**
   true to start the node expanded
   */
  public native function get expanded():Boolean;

  /**
   * @private
   */
  public native function set expanded(value:Boolean):void;

  /**
   True to render hidden. (Defaults to false).
   */
  public native function get hidden():Boolean;

  /**
   * @private
   */
  public native function set hidden(value:Boolean):void;

  /**
   URL of the link used for the node (defaults to #)
   */
  public native function get href():String;

  /**
   * @private
   */
  public native function set href(value:String):void;

  /**
   target frame for the link
   */
  public native function get hrefTarget():String;

  /**
   * @private
   */
  public native function set hrefTarget(value:String):void;

  /**
   The path to an icon for the node. The preferred way to do this is to use the cls or iconCls attributes and add the icon via a CSS background image.
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   A css class to be added to the nodes icon element for applying css background images
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   False to not allow this node to act as a drop target (defaults to true)
   */
  public native function get isTarget():Boolean;

  /**
   * @private
   */
  public native function set isTarget(value:Boolean):void;

  /**
   An Ext QuickTip for the node
   */
  public native function get qtip():String;

  /**
   * @private
   */
  public native function set qtip(value:String):void;

  /**
   An Ext QuickTip config for the node (used instead of qtip)
   */
  public native function get qtipCfg():String;

  /**
   * @private
   */
  public native function set qtipCfg(value:String):void;

  /**
   True for single click expand on this node
   */
  public native function get singleClickExpand():Boolean;

  /**
   * @private
   */
  public native function set singleClickExpand(value:Boolean):void;

  /**
   The text for this node
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;

  /**
   A UI <b>class</b> to use for this node (defaults to Ext.tree.TreeNodeUI)
   */
  public native function get uiProvider():Function;

  /**
   * @private
   */
  public native function set uiProvider(value:Function):void;


}
}
    