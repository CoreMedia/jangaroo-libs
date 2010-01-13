package ext.toolbar {

import ext.BoxComponent;
import js.HTMLElement;

/**
 * The base class that other non-interacting Toolbar Item classes should extend in order to
 * get some basic common toolbar item functionality.
*/
public class Item extends BoxComponent {
    //public var hideParent;
    //public var enable;
    //public var disable;
    //public var focus;
  /**
   * @constructor
   * Creates a new Item
   * @param el
   * @xtype tbitem
   */
public function Item(el : HTMLElement) {
  super(el);
}
    /**
     * @cfg {String} overflowText Text to be used for the menu if the item is overflowed.
     */
}}
