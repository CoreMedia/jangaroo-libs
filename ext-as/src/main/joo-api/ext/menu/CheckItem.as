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
 * <p>This component is created by the xtype 'menucheckitem' / the EXML element &lt;menucheckitem>.</p>
 * @see ext.config.menucheckitem
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckItem.html#cls-Ext.menu.CheckItem Ext JS source
 */
public class CheckItem extends Item {

  /**
   * Creates a new CheckItem
   *
   * @param config Configuration options
   * @see ext.config.menucheckitem
   */
  public function CheckItem(config:menucheckitem) {
    super(null);
  }

  /**
   True to initialize this checkbox as checked (defaults to false). Note that if this checkbox is part of a radio group (group = true) only the first item in the group that is initialized with checked = true will be rendered as checked.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get checked():Boolean;

  /**
   All check items with the same group name will automatically be grouped into a single-select radio button group (defaults to '')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get group():String;

  /**
   The default CSS class to use for radio group check items (defaults to "x-menu-group-item")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get groupClass():String;

  /**
   * A function that handles the checkchange event. The function is undefined by default, but if an implementation is provided, it will be called automatically when the checkchange event fires.
   *
   * @param this_
   * @param checked The checked value that was set
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckItem.html#method-Ext.menu.CheckItem-checkHandler Ext JS source
   */
  public native function checkHandler(this_:CheckItem, checked:Boolean):void;

  /**
   * Set the checked state of this item
   *
   * @param checked The new checked value
   * @param suppressEvent True to prevent the checkchange event from firing (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckItem.html#method-Ext.menu.CheckItem-setChecked Ext JS source
   */
  public native function setChecked(checked:Boolean, suppressEvent:Boolean = false):void;

}
}
    