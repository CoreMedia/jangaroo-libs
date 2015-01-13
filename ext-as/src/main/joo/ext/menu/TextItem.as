package ext.menu {
import ext.config.menutextitem;

/**
 * Adds a static text string to a menu, usually used as either a heading or group separator.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menutextitem' / the EXML element &lt;menutextitem>.</p>
 * @see ext.config.menutextitem
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.TextItem Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "menu.TextItem")]
public class TextItem extends BaseItem {

  /**
   * Creates a new TextItem
   *
   * @param config If config is a string, it is used as the text to display, otherwise it is applied as a config object (and should contain a <tt>text</tt> property).
   * @see ext.config.menutextitem
   */
  public function TextItem(config:menutextitem) {
    super(null);
  }

  /**
   The text to display for this item (defaults to '')
   */
  public native function get text():String;

}
}
    