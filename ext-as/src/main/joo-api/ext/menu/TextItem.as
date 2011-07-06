package ext.menu {


/**
 * Adds a static text string to a menu, usually used as either a heading or group separator.
 * <p>This component is created by the xtype 'menutextitem' / the EXML element &lt;menutextitem>.</p>
 * @see ext.config.menutextitem
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextItem.html#cls-Ext.menu.TextItem Ext JS source
 */
public class TextItem extends BaseItem {

  /**
   * Creates a new TextItem
   *
   * @param config If config is a string, it is used as the text to display, otherwise it is applied as a config object (and should contain a <tt>text</tt> property).
   * @see ext.config.menutextitem
   */
  public function TextItem(config:*) {
    super(null);
  }

  /**
   The text to display for this item (defaults to '')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get text():String;

}
}
    