package ext.menu {

import ext.config.menuseparator;

/**
 * Adds a separator bar to a menu, used to divide logical groups of menu items. Generally you will add one of these by using "-" in you call to add() or in your items config rather than creating one directly.
 * <p>This component is created by the xtype 'menuseparator' / the EXML element &lt;menuseparator>.</p>
 * @see ext.config.menuseparator
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Separator.html#cls-Ext.menu.Separator Ext JS source
 */
public class Separator extends BaseItem {

  /**
   *
   *
   * @param config Configuration options
   * @see ext.config.menuseparator
   */
  public function Separator(config:menuseparator) {
    super(null);
  }

}
}
    