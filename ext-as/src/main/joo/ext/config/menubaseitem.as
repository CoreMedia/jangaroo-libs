package ext.config {


/**
 * The base class for all items that render into menus. BaseItem provides default rendering, activated state management and base configuration options shared by all menu components.
 *
 * <p>This class represents the xtype 'menubaseitem' and serves as a
 * typed config object for constructor of class BaseItem.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.menu.BaseItem
 */
[ExtConfig(target="ext.menu.BaseItem", xtype="menubaseitem")]
public class menubaseitem extends component {

  public function menubaseitem(config:Object = null) {

    super(config);
  }


  /**
   The CSS class to use when the item becomes activated (defaults to "x-menu-item-active")
   */
  public native function get activeClass():String;

  /**
   * @private
   */
  public native function set activeClass(value:String):void;

  /**
   True if this item can be visually activated (defaults to false)
   */
  public native function get canActivate():Boolean;

  /**
   * @private
   */
  public native function set canActivate(value:Boolean):void;

  /**
   Length of time in milliseconds to wait before hiding after a click (defaults to 1)
   */
  public native function get clickHideDelay():Number;

  /**
   * @private
   */
  public native function set clickHideDelay(value:Number):void;

  /**
   A function that will handle the click event of this menu item (optional). The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>b</code> : Item<div class="sub-desc">This menu Item.</div></li><li><code>e</code> : EventObject<div class="sub-desc">The click event.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   True to hide the containing menu after this item is clicked (defaults to true)
   */
  public native function get hideOnClick():Boolean;

  /**
   * @private
   */
  public native function set hideOnClick(value:Boolean):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the handler function will be called.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    