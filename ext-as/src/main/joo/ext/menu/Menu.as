package ext.menu {
import ext.Container;
import ext.config.menu;
import ext.config.menuitem;

/**
 * Fires when this menu is clicked (or when the enter key is pressed while it is active)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.Menu</code>

 *       </li>

 *       <li>
 *           <code>menuItem:ext.menu.Item</code>
 The menu item that was clicked
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when a menu item contained in this menu is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>baseItem:ext.menu.BaseItem</code>
 The BaseItem that was clicked
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="itemclick")]

/**
 * Fires when the mouse exits this menu
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.Menu</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 *       <li>
 *           <code>menuItem:ext.menu.Item</code>
 The menu item that was clicked
 *       </li>

 * </ul>
 */
[Event(name="mouseout")]

/**
 * Fires when the mouse is hovering over this menu
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.Menu</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 *       <li>
 *           <code>menuItem:ext.menu.Item</code>
 The menu item that was clicked
 *       </li>

 * </ul>
 */
[Event(name="mouseover")]


/**
 * A menu object. This is the container to which you may add menu items. Menu can also serve as a base class when you want a specialized menu based off of another component (like <a href="Ext.menu.DateMenu.html">Ext.menu.DateMenu</a> for example).
 <p>Menus may contain either <a href="Ext.menu.Item.html">menu items</a>, or general <a href="Ext.Component.html">Component</a>s.</p><p>To make a contained general <a href="Ext.Component.html">Component</a> line up with other <a href="Ext.menu.Item.html">menu items</a> specify <tt>iconCls: 'no-icon'</tt>. This reserves a space for an icon, and indents the Component in line with the other menu items. See <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a>.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-getListParent">getListParent</a> for an example.</p><p>By default, Menus are absolutely positioned, floating Components. By configuring a Menu with <b><tt><a href="output/Ext.menu.Menu.html#Ext.menu.Menu-floating">floating</a>:false</tt></b>, a Menu may be used as child of a Container.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menu' / the EXML element &lt;menu>.</p>
 * @see ext.config.menu
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "menu.Menu")]
public class Menu extends Container {

  /**
   * Create a new Menu.
   *
   * @param config The config object
   * @see ext.config.menu
   */
  public function Menu(config:menu = null) {
    super(null);
  }

  /**
   True to allow multiple menus to be displayed at the same time (defaults to false)
   */
  public native function get allowOtherMenus():Boolean;

  /**
   The default <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value for this menu relative to its element of origin (defaults to 'tl-bl?')
   */
  public native function get defaultAlign():String;

  /**
   An array specifying the [x, y] offset in pixels by which to change the default Menu popup position after aligning according to the <a href="output/Ext.menu.Menu.html#Ext.menu.Menu-defaultAlign">defaultAlign</a> configuration. Defaults to <tt>[0, 0]</tt>.
   */
  public native function get defaultOffsets():Array;

  /**
   True to allow the menu container to have scroller controls if the menu is too long (defaults to true).
   */
  public native function get enableScrolling():Boolean;

  /**
   By default, a Menu configured as <b><code>floating:true</code></b> will be rendered as an <a href="Ext.Layer.html">Ext.Layer</a> (an absolutely positioned, floating Component with zindex=15000). If configured as <b><code>floating:false</code></b>, the Menu may be used as child item of another Container instead of a free-floating <a href="Ext.Layer.html">Layer</a>.
   */
  public native function get floating():Boolean;

  /**
   True to ignore clicks on any item in this menu that is a parent item (displays a submenu) so that the submenu is not dismissed when clicking the parent item (defaults to false).
   */
  public native function get ignoreParentClicks():Boolean;

  /**
   The maximum height of the menu. Only applies when enableScrolling is set to True (defaults to null).
   */
  public native function get maxHeight():Number;

  /**
   The minimum width of the menu in pixels (defaults to 120)
   */
  public native function get minWidth():Number;

  /**
   True to remove the incised line down the left side of the menu. Defaults to <tt>false</tt>.
   */
  public native function get plain():Boolean;

  /**
   The amount to scroll the menu. Only applies when enableScrolling is set to True (defaults to 24).
   */
  public native function get scrollIncrement():Number;

  /**
   True or 'sides' for the default effect, 'frame' for 4-way shadow, and 'drop' for bottom-right shadow (defaults to 'sides')
   */
  public native function get shadow():*;

  /**
   True to show the icon separator. (defaults to true).
   */
  public native function get showSeparator():Boolean;

  /**
   The <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value to use for submenus of this menu (defaults to 'tl-tr?')
   */
  public native function get subMenuAlign():String;

  /**
   zIndex to use when the menu is floating.
   */
  public native function get zIndex():Number;

  /**
   * Adds an <a href="Ext.Element.html">Ext.Element</a> object to the menu
   *
   * @param el The element or DOM node to add, or its id
   * @return The menu item that was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-addElement Sencha Docs Ext JS 3.4
   */
  public native function addElement(el:*):Item;

  /**
   * Adds an existing object based on <a href="Ext.menu.BaseItem.html">Ext.menu.BaseItem</a> to the menu
   *
   * @param item The menu item to add
   * @return The menu item that was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-addItem Sencha Docs Ext JS 3.4
   */
  public native function addItem(item:Item):Item;

  /**
   * Creates a new <a href="Ext.menu.Item.html">Ext.menu.Item</a> based an the supplied config object and adds it to the menu
   *
   * @param config A MenuItem config object
   * @return The menu item that was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-addMenuItem Sencha Docs Ext JS 3.4
   */
  public native function addMenuItem(config:menuitem):Item;

  /**
   * Adds a separator bar to the menu
   *
   * @return The menu item that was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-addSeparator Sencha Docs Ext JS 3.4
   */
  public native function addSeparator():Item;

  /**
   * Creates a new <a href="Ext.menu.TextItem.html">Ext.menu.TextItem</a> with the supplied text and adds it to the menu
   *
   * @param text The text to display in the menu item
   * @return The menu item that was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-addText Sencha Docs Ext JS 3.4
   */
  public native function addText(text:String):Item;

  /**
   * Hides this menu and optionally all parent menus
   *
   * @param deep True to hide all parent menus recursively, if any (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-hide Sencha Docs Ext JS 3.4
   */
  public native function hideMenu(deep:Boolean = false):void;

  /**
   * Displays this menu at a specific xy position and fires the 'show' event if a handler for the 'beforeshow' event does not return false cancelling the operation.
   *
   * @param xyPosition Contains X &amp; Y [x, y] values for the position at which to show the menu (coordinates are page-based)
   * @param parentMenu This menu's parent menu, if applicable (defaults to undefined)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-showAt Sencha Docs Ext JS 3.4
   */
  public native function showAt(xyPosition:Array, parentMenu:Menu = null):void;

  /**
   * If <code><a href="output/Ext.menu.Menu.html#Ext.menu.Menu-floating">floating</a>=true</code>, shows this menu relative to another element using <a href="output/Ext.menu.Menu.html#Ext.menu.Menu-showat">showat</a>, otherwise uses <a href="output/Ext.Component.html#Ext.Component-show">Ext.Component.show</a>.
   *
   * @param element The element to align to
   * @param position The <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position to use in aligning to the element (defaults to this.defaultAlign)
   * @param parentMenu This menu's parent menu, if applicable (defaults to undefined)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Menu-method-show Sencha Docs Ext JS 3.4
   */
  public native function showMenu(element:*, position:String = null, parentMenu:Menu = null):void;

}
}
    