package ext.menu {
import ext.Element;

/**
 * Adds a menu item that contains a checkbox by default, but can also be part of a radio group.
*/
public class CheckItem extends Item {
/**
 * @constructor
 * Creates a new CheckItem
 * @param config Configuration options
 * @xtype menucheckitem
 */
public function CheckItem(config:Object = null) {
  super(config);
}
    /**
     * A function that handles the checkchange event.  The function is undefined by default, but if an implementation
     * is provided, it will be called automatically when the checkchange event fires.
     * @param checkItem this
     * @param checked The checked value that was set
     * @method checkHandler
     */
  public native function checkHandler(checkItem : CheckItem, checked : Boolean) : void;
    /**
     * @cfg {String} group
     * All check items with the same group name will automatically be grouped into a single-select
     * radio button group (defaults to '')
     */
    /**
     * @cfg {String} itemCls The default CSS class to use for check items (defaults to "x-menu-item x-menu-check-item")
     */
    //public var itemCls  : String;
    /**
     * @cfg {String} groupClass The default CSS class to use for radio group check items (defaults to "x-menu-group-item")
     */
    public var groupClass  : String;
    /**
     * @cfg {Boolean} checked True to initialize this checkbox as checked (defaults to false).  Note that
     * if this checkbox is part of a radio group (group = true) only the last item in the group that is
     * initialized with checked = true will be rendered as checked.
     */
    public var checked : Boolean;
    //protected var ctype;
    override protected native function onRender(container : Element, position : Element) : void;
    override public native function destroy() : void;
    /**
     * Set the checked state of this item
     * @param checked The new checked value
     * @param suppressEvent True to prevent the checkchange event from firing (defaults to false)
     */
    public native function setChecked(checked : Boolean, suppressEvent : Boolean = undefined) : void;
    override protected native function handleClick(e) : void;
}}
