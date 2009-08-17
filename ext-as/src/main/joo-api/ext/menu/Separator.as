package ext.menu {
import ext.Element;

/**
 * Adds a separator bar to a menu, used to divide logical groups of menu items. Generally you will
 * add one of these by using "-" in you call to add() or in your items config rather than creating one directly.
*/
public class Separator extends BaseItem {
/**
 * @constructor
 * @param config Configuration options
 * @xtype menuseparator
 */
public function Separator(config : Object) {
  super(config);
}
    /**
     * @cfg {String} itemCls The default CSS class to use for separators (defaults to "x-menu-sep")
     */
    public var itemCls  : String;
    /**
     * @cfg {Boolean} hideOnClick True to hide the containing menu after this item is clicked (defaults to false)
     */
    //public var hideOnClick  : Boolean;
    /** 
     * @cfg {String} activeClass
     * @hide 
     */
    //public var activeClass : String;
    override protected native function onRender(container : Element, position : Element) : void;
}}
