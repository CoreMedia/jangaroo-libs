package ext.config {


/**
 * A menu object. This is the container to which you may add menu items. Menu can also serve as a base class when you want a specialized menu based off of another component (like <a href="Ext.menu.DateMenu.html">Ext.menu.DateMenu</a> for example).
 <p>Menus may contain either <a href="Ext.menu.Item.html">menu items</a>, or general <a href="Ext.Component.html">Component</a>s.</p><p>To make a contained general <a href="Ext.Component.html">Component</a> line up with other <a href="Ext.menu.Item.html">menu items</a> specify <tt>iconCls: 'no-icon'</tt>. This reserves a space for an icon, and indents the Component in line with the other menu items. See <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a>.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-getListParent">getListParent</a> for an example.</p><p>By default, Menus are absolutely positioned, floating Components. By configuring a Menu with <b><tt><a href="output/Ext.menu.Menu.html#Ext.menu.Menu-floating">floating</a>:false</tt></b>, a Menu may be used as child of a Container.</p>
 *
 * <p>This class represents the xtype 'menu' and serves as a
 * typed config object for constructor of class Menu.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.menu.Menu
 */
[ExtConfig(target="ext.menu.Menu", xtype="menu")]
public class menu extends container {

  public function menu(config:Object = null) {

    super(config);
  }


  /**
   True to allow multiple menus to be displayed at the same time (defaults to false)
   */
  public native function get allowOtherMenus():Boolean;

  /**
   * @private
   */
  public native function set allowOtherMenus(value:Boolean):void;

  /**
   The default <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value for this menu relative to its element of origin (defaults to 'tl-bl?')
   */
  public native function get defaultAlign():String;

  /**
   * @private
   */
  public native function set defaultAlign(value:String):void;

  /**
   An array specifying the [x, y] offset in pixels by which to change the default Menu popup position after aligning according to the <a href="output/Ext.menu.Menu.html#Ext.menu.Menu-defaultAlign">defaultAlign</a> configuration. Defaults to <tt>[0, 0]</tt>.
   */
  public native function get defaultOffsets():Array;

  /**
   * @private
   */
  public native function set defaultOffsets(value:Array):void;

  /**
   A config object that will be applied to all items added to this container either via the <a href="output/Ext.menu.Menu.html#Ext.menu.Menu-items">items</a> config or via the <a href="output/Ext.menu.Menu.html#Ext.menu.Menu-add">add</a> method. The defaults config can contain any number of name/value property pairs to be added to each item, and should be valid for the types of items being added to the menu.
   */
  override public native function get defaults():*;

  /**
   * @private
   */
  override public native function set defaults(value:*):void;

  /**
   True to allow the menu container to have scroller controls if the menu is too long (defaults to true).
   */
  public native function get enableScrolling():Boolean;

  /**
   * @private
   */
  public native function set enableScrolling(value:Boolean):void;

  /**
   By default, a Menu configured as <b><code>floating:true</code></b> will be rendered as an <a href="Ext.Layer.html">Ext.Layer</a> (an absolutely positioned, floating Component with zindex=15000). If configured as <b><code>floating:false</code></b>, the Menu may be used as child item of another Container instead of a free-floating <a href="Ext.Layer.html">Layer</a>.

   */
  public native function get floating():Boolean;

  /**
   * @private
   */
  public native function set floating(value:Boolean):void;

  /**
   True to ignore clicks on any item in this menu that is a parent item (displays a submenu) so that the submenu is not dismissed when clicking the parent item (defaults to false).
   */
  public native function get ignoreParentClicks():Boolean;

  /**
   * @private
   */
  public native function set ignoreParentClicks(value:Boolean):void;

  [DefaultProperty]
  /**
   An array of items to be added to this menu. Menus may contain either <a href="Ext.menu.Item.html">menu items</a>, or general <a href="Ext.Component.html">Component</a>s.
   */
  override public native function get items():Array;

  /**
   * @private
   */
  override public native function set items(value:Array):void;

  /**
   This class assigns a default layout (<code>layout:'<b>menu</b>'</code>). Developers <i>may</i> override this configuration option if another layout is required. See <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> for additional information.
   */
  override public native function get layout():*;

  /**
   * @private
   */
  override public native function set layout(value:*):void;

  /**
   The maximum height of the menu. Only applies when enableScrolling is set to True (defaults to null).
   */
  public native function get maxHeight():Number;

  /**
   * @private
   */
  public native function set maxHeight(value:Number):void;

  /**
   The minimum width of the menu in pixels (defaults to 120)
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   True to remove the incised line down the left side of the menu. Defaults to <tt>false</tt>.
   */
  public native function get plain():Boolean;

  /**
   * @private
   */
  public native function set plain(value:Boolean):void;

  /**
   The amount to scroll the menu. Only applies when enableScrolling is set to True (defaults to 24).
   */
  public native function get scrollIncrement():Number;

  /**
   * @private
   */
  public native function set scrollIncrement(value:Number):void;

  /**
   True or 'sides' for the default effect, 'frame' for 4-way shadow, and 'drop' for bottom-right shadow (defaults to 'sides')
   */
  public native function get shadow():*;

  /**
   * @private
   */
  public native function set shadow(value:*):void;

  /**
   True to show the icon separator. (defaults to true).
   */
  public native function get showSeparator():Boolean;

  /**
   * @private
   */
  public native function set showSeparator(value:Boolean):void;

  /**
   The <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value to use for submenus of this menu (defaults to 'tl-tr?')
   */
  public native function get subMenuAlign():String;

  /**
   * @private
   */
  public native function set subMenuAlign(value:String):void;

  /**
   zIndex to use when the menu is floating.
   */
  public native function get zIndex():Number;

  /**
   * @private
   */
  public native function set zIndex(value:Number):void;


}
}
    