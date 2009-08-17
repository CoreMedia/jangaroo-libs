package ext.menu {
import ext.Element;

/**
 * Adds a static text string to a menu, usually used as either a heading or group separator.
*/
public class TextItem extends BaseItem {
/**
 * @constructor
 * Creates a new TextItem
 * @param config If config is a string, it is used as the text to display, otherwise it
 * is applied as a config object (and should contain a <tt>text</tt> property).
 * @xtype menutextitem
 */
public function TextItem(config : *) {
  super(config);
}
    /**
     * @cfg {String} text The text to display for this item (defaults to '')
     */
    /**
     * @cfg {Boolean} hideOnClick True to hide the containing menu after this item is clicked (defaults to false)
     */
    //public var hideOnClick  : Boolean;
    /**
     * @cfg {String} itemCls The default CSS class to use for text items (defaults to "x-menu-text")
     */
    //public var itemCls  : String;
    override protected native function onRender(container : Element, position : Element) : void;
}}
