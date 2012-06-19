package ext.menu {


/**
 * Provides a common registry of all menu items on a page so that they can be easily accessed by id.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton MenuMgr.</p>
 * @see ext.menu.#MenuMgr ext.menu.MenuMgr
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.MenuMgr Sencha Docs Ext JS 3.4
 */
public interface IMenuMgr {

  /**
   * Returns a <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> object
   *
   * @param menu The string menu id, an existing menu object reference, or a Menu config that will be used to generate and return a new Menu instance.
   * @return The specified menu, or null if none are found
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.MenuMgr-method-get Sencha Docs Ext JS 3.4
   */
  function get(menu:*):Menu;

  /**
   * Hides all menus that are currently visible
   *
   * @return success True if any active menus were hidden.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.menu.MenuMgr-method-hideAll Sencha Docs Ext JS 3.4
   */
  function hideAll():Boolean;

}
}
    