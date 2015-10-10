package ext.menu {
import ext.Component;
import ext.config.menubaseitem;

/**
 * Fires when this item is activated
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.BaseItem</code>

 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 * Fires when this item is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.BaseItem</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when this item is deactivated
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.BaseItem</code>

 *       </li>

 * </ul>
 */
[Event(name="deactivate")]


/**
 * The base class for all items that render into menus. BaseItem provides default rendering, activated state management and base configuration options shared by all menu components.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menubaseitem' / the EXML element &lt;menubaseitem>.</p>
 * @see ext.config.menubaseitem
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.BaseItem Sencha Docs Ext JS 3.4
 */
[Native]
public class BaseItem extends Component {

  /**
   * Creates a new BaseItem
   *
   * @param config Configuration options
   * @see ext.config.menubaseitem
   */
  public function BaseItem(config:menubaseitem = null) {
    super(null);
  }

  /**
   The parent Menu of this Item.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.BaseItem-property-parentMenu Sencha Docs Ext JS 3.4
   */
  public native function get parentMenu():Menu;

  /**
   * @private
   */
  public native function set parentMenu(value:Menu):void;

  /**
   The CSS class to use when the item becomes activated (defaults to "x-menu-item-active")
   */
  public native function get activeClass():String;

  /**
   True if this item can be visually activated (defaults to false)
   */
  public native function get canActivate():Boolean;

  /**
   Length of time in milliseconds to wait before hiding after a click (defaults to 1)
   */
  public native function get clickHideDelay():Number;

  /**
   True to hide the containing menu after this item is clicked (defaults to true)
   */
  public native function get hideOnClick():Boolean;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the handler function will be called.
   */
  public native function get scope():Object;

  /**
   * Sets the function that will handle click events for this item (equivalent to passing in the <a href="output/Ext.menu.BaseItem.html#Ext.menu.BaseItem-handler">handler</a> config property). If an existing handler is already registered, it will be unregistered for you.
   *
   * @param handler The function that should be called on click
   * @param scope The scope (<code>this</code> reference) in which the handler function is executed. Defaults to this menu item.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.BaseItem-method-setHandler Sencha Docs Ext JS 3.4
   */
  public native function setHandler(handler:Function, scope:Object):void;

}
}
    