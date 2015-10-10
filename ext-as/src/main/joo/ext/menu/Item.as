package ext.menu {
import ext.config.menuitem;

/**
 * A base class for all menu items that require menu-related functionality (like sub-menus) and are not static display items. Item extends the base functionality of <a href="Ext.menu.BaseItem.html">Ext.menu.BaseItem</a> by adding menu-specific activation and click handling.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menuitem' / the EXML element &lt;menuitem>.</p>
 * @see ext.config.menuitem
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Item Sencha Docs Ext JS 3.4
 */
[Native]
public class Item extends BaseItem {

  /**
   * Creates a new Item
   *
   * @param config Configuration options
   * @see ext.config.menuitem
   */
  public function Item(config:menuitem = null) {
    super(null);
  }

  /**
   The submenu associated with this Item if one was configured.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Item-property-menu Sencha Docs Ext JS 3.4
   */
  public native function get menu():Menu;

  /**
   * @private
   */
  public native function set menu(value:Menu):void;

  /**
   The altText to use for the icon, if it exists. Defaults to <tt>''</tt>.
   */
  public native function get altText():String;

  /**
   The href attribute to use for the underlying anchor link (defaults to '#').
   */
  public native function get href():String;

  /**
   The target attribute to use for the underlying anchor link (defaults to '').
   */
  public native function get hrefTarget():String;

  /**
   The path to an icon to display in this item (defaults to Ext.BLANK_IMAGE_URL). If icon is specified <a href="output/Ext.menu.Item.html#Ext.menu.Item-iconCls">iconCls</a> should not be.
   */
  public native function get icon():String;

  /**
   A CSS class that specifies a background image that will be used as the icon for this item (defaults to ''). If iconCls is specified <a href="output/Ext.menu.Item.html#Ext.menu.Item-icon">icon</a> should not be.
   */
  public native function get iconCls():String;

  /**
   Length of time in milliseconds to wait before showing this item (defaults to 200)
   */
  public native function get showDelay():Number;

  /**
   The text to display in this item (defaults to '').
   */
  public native function get text():String;

  /**
   * Sets the CSS class to apply to the item's icon element
   *
   * @param cls The CSS class to apply
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Item-method-setIconClass Sencha Docs Ext JS 3.4
   */
  public native function setIconClass(cls:String):void;

  /**
   * Sets the text to display in this menu item
   *
   * @param text The text to display
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Item-method-setText Sencha Docs Ext JS 3.4
   */
  public native function setText(text:String):void;

}
}
    