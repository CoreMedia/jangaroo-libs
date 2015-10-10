package ext.menu {
import ext.config.menucheckitem;

/**
 * Fires before the checked value is set, providing an opportunity to cancel if needed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.CheckItem</code>

 *       </li>

 *       <li>
 *           <code>checked:Boolean</code>
 The new checked value that will be set
 *       </li>

 * </ul>
 */
[Event(name="beforecheckchange")]

/**
 * Fires after the checked value has been set
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.menu.CheckItem</code>

 *       </li>

 *       <li>
 *           <code>checked:Boolean</code>
 The checked value that was set
 *       </li>

 * </ul>
 */
[Event(name="checkchange")]


/**
 * Adds a menu item that contains a checkbox by default, but can also be part of a radio group.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menucheckitem' / the EXML element &lt;menucheckitem>.</p>
 * @see ext.config.menucheckitem
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.CheckItem Sencha Docs Ext JS 3.4
 */
[Native]
public class CheckItem extends Item {

  /**
   * Creates a new CheckItem
   *
   * @param config Configuration options
   * @see ext.config.menucheckitem
   */
  public function CheckItem(config:menucheckitem = null) {
    super(null);
  }

  /**
   True to initialize this checkbox as checked (defaults to false). Note that if this checkbox is part of a radio group (group = true) only the first item in the group that is initialized with checked = true will be rendered as checked.
   */
  public native function get checked():Boolean;

  /**
   All check items with the same group name will automatically be grouped into a single-select radio button group (defaults to '')
   */
  public native function get group():String;

  /**
   The default CSS class to use for radio group check items (defaults to "x-menu-group-item")
   */
  public native function get groupClass():String;

  /**
   * A function that handles the checkchange event. The function is undefined by default, but if an implementation is provided, it will be called automatically when the checkchange event fires.
   *
   * @param this_
   * @param checked The checked value that was set
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.CheckItem-method-checkHandler Sencha Docs Ext JS 3.4
   */
  public native function checkHandler(this_:CheckItem, checked:Boolean):void;

  /**
   * Set the checked state of this item
   *
   * @param checked The new checked value
   * @param suppressEvent True to prevent the checkchange event from firing (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.CheckItem-method-setChecked Sencha Docs Ext JS 3.4
   */
  public native function setChecked(checked:Boolean, suppressEvent:Boolean = false):void;

}
}
    