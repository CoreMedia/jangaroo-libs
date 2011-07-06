package ext.config {


/**
 * A base class for all menu items that require menu-related functionality (like sub-menus) and are not static display items. Item extends the base functionality of <a href="Ext.menu.BaseItem.html">Ext.menu.BaseItem</a> by adding menu-specific activation and click handling.
 * <p>This class serves as a typed config object for constructor of class Item.</p>
 *
 * @see ext.menu.Item
 */
[ExtConfig(target="ext.menu.Item")]
public class menuitem extends menubaseitem {

  public function menuitem(config:Object = null) {

    super(config);
  }


  /**
   The altText to use for the icon, if it exists. Defaults to <tt>''</tt>.
   */
  public native function get altText():String;

  /**
   * @private
   */
  public native function set altText(value:String):void;

  /**
   True if this item can be visually activated (defaults to true)
   */
  override public native function get canActivate():Boolean;

  /**
   * @private
   */
  override public native function set canActivate(value:Boolean):void;

  /**
   The href attribute to use for the underlying anchor link (defaults to '#').
   */
  public native function get href():String;

  /**
   * @private
   */
  public native function set href(value:String):void;

  /**
   The target attribute to use for the underlying anchor link (defaults to '').
   */
  public native function get hrefTarget():String;

  /**
   * @private
   */
  public native function set hrefTarget(value:String):void;

  /**
   The path to an icon to display in this item (defaults to Ext.BLANK_IMAGE_URL). If icon is specified <a href="output/Ext.menu.Item.html#Ext.menu.Item-iconCls">iconCls</a> should not be.
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   A CSS class that specifies a background image that will be used as the icon for this item (defaults to ''). If iconCls is specified <a href="output/Ext.menu.Item.html#Ext.menu.Item-icon">icon</a> should not be.
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   The default CSS class to use for menu items (defaults to 'x-menu-item')
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;

  /**
   Either an instance of <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> or the config object for an <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> which acts as the submenu when this item is activated.
   */
  public native function get menu():*;

  /**
   * @private
   */
  public native function set menu(value:*):void;

  /**
   Length of time in milliseconds to wait before showing this item (defaults to 200)
   */
  public native function get showDelay():Number;

  /**
   * @private
   */
  public native function set showDelay(value:Number):void;

  /**
   The text to display in this item (defaults to '').
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;


}
}
    