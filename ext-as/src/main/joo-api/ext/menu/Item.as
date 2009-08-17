package ext.menu {
import ext.Element;

/**
 * A base class for all menu items that require menu-related functionality (like sub-menus) and are not static
 * display items.  Item extends the base functionality of <b class='link'>Ext.menu.BaseItem</b> by adding menu-specific
 * activation and click handling.
*/
public class Item extends BaseItem {
/**
 * @constructor
 * Creates a new Item
 * @param config Configuration options
 * @xtype menuitem
 */
public function Item(config : Object) {
  super(config);
}
    /**
     * @property menu
     * The submenu associated with this Item if one was configured.
     */
    /**
     * @cfg {Mixed} menu (optional) Either an instance of <b class='link'>Ext.menu.Menu</b> or the config object for an
     * <b class='link'>Ext.menu.Menu</b> which acts as the submenu when this item is activated.
     */
    /**
     * @cfg {String} icon The path to an icon to display in this item (defaults to ext.BLANK_IMAGE_URL).  If
     * icon is specified <b class='link'>#iconCls</b> should not be.
     */
    /**
     * @cfg {String} iconCls A CSS class that specifies a background image that will be used as the icon for
     * this item (defaults to '').  If iconCls is specified <b class='link'>#icon</b> should not be.
     */
    /**
     * @cfg {String} text The text to display in this item (defaults to '').
     */
    /**
     * @cfg {String} href The href attribute to use for the underlying anchor link (defaults to '#').
     */
    /**
     * @cfg {String} hrefTarget The target attribute to use for the underlying anchor link (defaults to '').
     */
    /**
     * @cfg {String} itemCls The default CSS class to use for menu items (defaults to 'x-menu-item')
     */
    public var itemCls  : String;
    /**
     * @cfg {Boolean} canActivate True if this item can be visually activated (defaults to true)
     */
    //public var canActivate  : Boolean;
    /**
     * @cfg {Number} showDelay Length of time in milliseconds to wait before showing this item (defaults to 200)
     */
    public var showDelay : Number;
    public var hideDelay;
    //protected var ctype;
    override protected native function onRender(container : Element, position : Element) : void;
    public native function getTemplateArgs() : void;
    /**
     * Sets the text to display in this menu item
     * @param text The text to display
     */
    public native function setText(text : String) : void;
    /**
     * Sets the CSS class to apply to the item's icon element
     * @param cls The CSS class to apply
     */
    public native function setIconClass(cls : String) : void;
    override protected native function beforeDestroy() : void;
    override protected native function handleClick(e) : void;
    override protected native function activate() : void;
    override protected native function shouldDeactivate(e) : void;
    override protected native function deactivate() : void;
    override protected native function expandMenu(autoActivate : Boolean) : void;
    protected native function deferExpand(autoActivate) : void;
    override protected native function hideMenu() : void;
    protected native function deferHide() : void;
}}
