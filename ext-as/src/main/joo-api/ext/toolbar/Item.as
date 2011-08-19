package ext.toolbar {
import ext.BoxComponent;

import js.HTMLElement;

/**
 * The base class that other non-interacting Toolbar Item classes should extend in order to get some basic common toolbar item functionality.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tbitem' / the EXML element &lt;tbitem>.</p>
 * @see ext.config.tbitem
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Toolbar.Item Ext JS source
 */
public class Item extends BoxComponent {

  /**
   * Creates a new Item
   *
   * @param el
   * @see ext.config.tbitem
   */
  public function Item(el:HTMLElement) {
    super(null);
  }

  /**
   Text to be used for the menu if the item is overflowed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get overflowText():String;

}
}
    