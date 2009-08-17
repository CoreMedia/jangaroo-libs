package ext.menu {
import ext.Component;
import ext.Container;
import ext.Element;

/**
 * <p>A menu object.  This is the container to which you may add menu items.  Menu can also serve as a base class
 * when you want a specialized menu based off of another component (like <b class='link'>Ext.menu.DateMenu</b> for example).</p>
 * <p>Menus may contain either <b class='link' title='Ext.menu.Item menu'>items</b>, or general <b class='link' title='ext.Component'>Component</b>s.</p>
 * <p>To make a contained general <b class='link' title='ext.Component'>Component</b> line up with other <b class='link' title='Ext.menu.Item menu'>items</b>
 * specify <tt>iconCls: 'no-icon'</tt>.  This reserves a space for an icon, and indents the Component in line
 * with the other menu items.  See <b class='link'>ext.form.ComboBox</b>.<b class='link' title='ext.form.ComboBox#getListParent'>getListParent</b>
 * for an example.</p>
 * <p>By default, Menus are absolutely positioned, floating Components. By configuring a Menu with
 * <b><tt><b class='link'>#floating</b>:false</tt></b>, a Menu may be used as child of a Container.</p>
 *
 * @xtype menu
 */
    /**
*/
public class Menu extends Container {
  public function Menu(config:*) {
    super(config);
  }
/**
     * @cfg {Object} defaults
     * A config object that will be applied to all items added to this container either via the <b class='link'>#items</b>
     * config or via the <b class='link'>#add</b> method.  The defaults config can contain any number of
     * name/value property pairs to be added to each item, and should be valid for the types of items
     * being added to the menu.
     */
    /**
     * @cfg {Mixed} items
     * An array of items to be added to this menu. Menus may contain either <b class='link' title='Ext.menu.Item menu'>items</b>,
     * or general <b class='link' title='ext.Component'>Component</b>s.
     */
    /**
     * @cfg {Number} minWidth The minimum width of the menu in pixels (defaults to 120)
     */
    public var minWidth  : Number;
    /**
     * @cfg {Boolean/String} shadow True or "sides" for the default effect, "frame" for 4-way shadow, and "drop"
     * for bottom-right shadow (defaults to "sides")
     */
    public var shadow  : *;
    /**
     * @cfg {String} subMenuAlign The <b class='link'>ext.Element#alignTo</b> anchor position value to use for submenus of
     * this menu (defaults to "tl-tr?")
     */
    public var subMenuAlign  : String;
    /**
     * @cfg {String} defaultAlign The default <b class='link'>ext.Element#alignTo</b> anchor position value for this menu
     * relative to its element of origin (defaults to "tl-bl?")
     */
    public var defaultAlign  : String;
    /**
     * @cfg {Boolean} allowOtherMenus True to allow multiple menus to be displayed at the same time (defaults to false)
     */
    public var allowOtherMenus  : Boolean;
    /**
     * @cfg {Boolean} ignoreParentClicks True to ignore clicks on any item in this menu that is a parent item (displays
     * a submenu) so that the submenu is not dismissed when clicking the parent item (defaults to false).
     */
    public var ignoreParentClicks  : Boolean;
    /**
     * @cfg {Boolean} enableScrolling True to allow the menu container to have scroller controls if the menu is too long (defaults to true).
     */
    public var enableScrolling : Boolean;
    /**
     * @cfg {Number} maxHeight The maximum height of the menu. Only applies when enableScrolling is set to True (defaults to null).
     */
    public var maxHeight : Number;
    /**
     * @cfg {Number} scrollIncrement The amount to scroll the menu. Only applies when enableScrolling is set to True (defaults to 24).
     */
    public var scrollIncrement : Number;
    /**
     * @cfg {Boolean} showSeparator True to show the icon separator. (defaults to true).
     */
    public var showSeparator : Boolean;
    /**
     * @cfg {Array} defaultOffsets An array specifying the [x, y] offset in pixels by which to
     * change the default Menu popup position after aligning according to the <b class='link'>#defaultAlign</b>
     * configuration. Defaults to <tt>[0, 0]</tt>.
     */
    public var defaultOffsets  : Array;
    /**
     * @cfg {Boolean} floating
     * May be specified as false to create a Menu which may be used as a child item of another Container
     * instead of a free-floating <b class='link' title='ext.Layer'>Layer</b>. (defaults to true).
     */
    public var floating : Boolean;
    //protected var hidden;
    public var layout;
    //public var hideMode;
    public var scrollerHeight;
    public var autoLayout;
    //public var defaultType;
    override protected native function initComponent() : void;
    override public native function getLayoutTarget() : Element;
    override protected native function onRender(container : Element, position : Element) : void;
    protected native function findTargetItem(e) : void;
    protected native function onClick(e) : void;
    protected native function setActiveItem(item, autoExpand) : void;
    public native function deactivateActive() : void;
    protected native function tryActivate(start, step) : void;
    protected native function onMouseOver(e) : void;
    protected native function onMouseOut(e) : void;
    protected native function onScroll(e, t) : void;
    protected native function onScrollerIn(e, t) : void;
    protected native function onScrollerOut(e, t) : void;
    /**
     * Displays this menu relative to another element
     * @param element The element to align to
     * @param position The <b class='link'>ext.Element#alignTo</b> anchor position to use in aligning to
     * the element (defaults to this.defaultAlign)
     * @param parentMenu This menu's parent menu, if applicable (defaults to undefined)
     */
    public native function showMenu(element : *, position : String = undefined, parentMenu : Menu = undefined) : void;
    public var showAt ;
    /**
     * Displays this menu at a specific xy position
     * @param xyPosition Contains X & Y [x, y] values for the position at which to show the menu (coordinates are page-based)
     * @param parentMenu This menu's parent menu, if applicable (defaults to undefined)
     */
    public native function constrainScroll(xyPosition : Array, parentMenu : Menu = undefined) : void;
    public native function createScrollers() : void;
    override protected native function onLayout(shallow : Boolean = false, force : Boolean = false):void;

  //override public native function focus() : void;
    public native function doFocus() : void;
    /**
     * Hides this menu and optionally all parent menus
     * @param deep True to hide all parent menus recursively, if any (defaults to false)
     */
    public native function hideMenu(deep : Boolean = undefined) : void;
    override protected native function onHide() : void;
    override protected native function lookupComponent(c : Component) : void;
    override protected native function applyDefaults(c) : void;
    protected native function getMenuItem(config) : void;
    /**
     * Adds a separator bar to the menu
     * @return The menu item that was added
     */
    public native function addSeparator() : Item;
    /**
     * Adds an <b class='link'>ext.Element</b> object to the menu
     * @param el The element or DOM node to add, or its id
     * @return The menu item that was added
     */
    public native function addElement(el : *) : Item;
    /**
     * Adds an existing object based on <b class='link'>Ext.menu.BaseItem</b> to the menu
     * @param item The menu item to add
     * @return The menu item that was added
     */
    public native function addItem(item : Item) : Item;
    /**
     * Creates a new <b class='link'>Ext.menu.Item</b> based an the supplied config object and adds it to the menu
     * @param config A MenuItem config object
     * @return The menu item that was added
     */
    public native function addMenuItem(config : Object) : Item;
    /**
     * Creates a new <b class='link'>Ext.menu.TextItem</b> with the supplied text and adds it to the menu
     * @param text The text to display in the menu item
     * @return The menu item that was added
     */
    public native function addText(text : String) : Item;
    override protected native function onDestroy() : void;
        public native function constructor(menu) : void;
        public native function doRelay(e, h) : void;
        public native function tab(e, m) : void;
        public var up ;
        public var down ;
        public native function right(e, m) : void;
        public native function left(e, m) : void;
        public native function enter(e, m) : void;

}}
