package ext.menu {
import ext.config.menuseparator;

/**
 * Adds a separator bar to a menu, used to divide logical groups of menu items. Generally you will add one of these by using "-" in you call to add() or in your items config rather than creating one directly.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'menuseparator' / the EXML element &lt;menuseparator>.</p>
 * @see ext.config.menuseparator
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.Separator Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "menu.Separator")]
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
    