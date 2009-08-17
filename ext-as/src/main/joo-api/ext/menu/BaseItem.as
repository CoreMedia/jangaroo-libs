package ext.menu {

import ext.Component;
import ext.Element;

/**
 * The base class for all items that render into menus.  BaseItem provides default rendering, activated state
 * management and base configuration options shared by all menu components.
*/
public class BaseItem extends Component {
/**
 * @constructor
 * Creates a new BaseItem
 * @param config Configuration options
 * @xtype menubaseitem
 */
public function BaseItem(config : Object) {
  super(config);
}
    /**
     * @property parentMenu
     * The parent Menu of this Item.
     */
    /**
     * @cfg {Function} handler
     * A function that will handle the click event of this menu item (optional).
     * The handler is passed the following parameters:<div class="mdetail-params"><ul>
     * <li><code>b</code> : Item<div class="sub-desc">This menu Item.</div></li>
     * <li><code>e</code> : EventObject<div class="sub-desc">The click event.</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Object} scope
     * The scope (<tt><b>this</b></tt> reference) in which the handler function will be called.
     */
    /**
     * @cfg {Boolean} canActivate True if this item can be visually activated (defaults to false)
     */
    public var canActivate  : Boolean;
    /**
     * @cfg {String} activeClass The CSS class to use when the item becomes activated (defaults to "x-menu-item-active")
     */
    public var activeClass  : String;
    /**
     * @cfg {Boolean} hideOnClick True to hide the containing menu after this item is clicked (defaults to true)
     */
    public var hideOnClick  : Boolean;
    /**
     * @cfg {Number} clickHideDelay Length of time in milliseconds to wait before hiding after a click (defaults to 100)
     */
    public var clickHideDelay  : Number;
    //protected var ctype ;
    //protected var actionMode ;
    override protected native function onRender(container : Element, position : Element) : void;
    /**
     * Sets the function that will handle click events for this item (equivalent to passing in the <b class='link'>#handler</b>
     * config property).  If an existing handler is already registered, it will be unregistered for you.
     * @param handler The function that should be called on click
     * @param scope The scope that should be passed to the handler
     */
    public native function setHandler(handler : Function, scope : Object) : void;
    protected native function onClick(e) : void;
    protected native function activate() : void;
    protected native function deactivate() : void;
    protected native function shouldDeactivate(e) : void;
    protected native function handleClick(e) : void;
    protected native function expandMenu(autoActivate : Boolean) : void;
    protected native function hideMenu() : void;
}}
