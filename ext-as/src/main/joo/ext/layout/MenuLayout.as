package ext.layout {
import ext.config.menulayout;

/**
 * Layout manager used by <a href="Ext.menu.Menu.html">Ext.menu.Menu</a>. Generally this class should not need to be used directly.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.menulayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.MenuLayout Sencha Docs Ext JS 3.4
 */
[Native]
public class MenuLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.menulayout
   */
  public function MenuLayout(config:menulayout = null) {
    super(config);
  }

}
}
    