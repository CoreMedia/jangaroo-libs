package ext.config {


/**
 * Adds a menu item that contains a checkbox by default, but can also be part of a radio group.
 * <p>This class serves as a typed config object for constructor of class CheckItem.</p>
 *
 * @see ext.menu.CheckItem
 */
[ExtConfig(target="ext.menu.CheckItem", xtype="menucheckitem")]
public class menucheckitem extends menuitem {

  public function menucheckitem(config:Object = null) {

    super(config);
  }


  /**
   True to initialize this checkbox as checked (defaults to false). Note that if this checkbox is part of a radio group (group = true) only the first item in the group that is initialized with checked = true will be rendered as checked.
   */
  public native function get checked():Boolean;

  /**
   * @private
   */
  public native function set checked(value:Boolean):void;

  /**
   All check items with the same group name will automatically be grouped into a single-select radio button group (defaults to '')
   */
  public native function get group():String;

  /**
   * @private
   */
  public native function set group(value:String):void;

  /**
   The default CSS class to use for radio group check items (defaults to "x-menu-group-item")
   */
  public native function get groupClass():String;

  /**
   * @private
   */
  public native function set groupClass(value:String):void;

  /**
   The default CSS class to use for check items (defaults to "x-menu-item x-menu-check-item")
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;


}
}
    