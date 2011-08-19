package ext.config {


/**
 * Layout manager used by <a href="Ext.menu.Menu.html">Ext.menu.Menu</a>. Generally this class should not need to be used directly.

 *
 * <p>This class serves as a
 * typed config object for constructor of class MenuLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.MenuLayout
 */
[ExtConfig(target="ext.layout.MenuLayout", type="menu")]
public class menulayout extends containerlayout {

  public function menulayout(config:Object = null) {

    super(config);
  }


}
}
    