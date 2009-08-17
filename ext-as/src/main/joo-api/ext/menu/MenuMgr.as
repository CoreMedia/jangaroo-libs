package ext.menu {
/**
 * Provides a common registry of all menu items on a page so that they can be easily accessed by id.
*/
public class MenuMgr {
/**
 * @singleton
 */
       /**
        * Hides all menus that are currently visible
        */
       public static native function hideAll() : void;
       protected static native function register(menu) : void;
        /**
         * Returns a <b class='link'>Ext.menu.Menu</b> object
         * @param menu The string menu id, an existing menu object reference, or a Menu config that will
         * be used to generate and return a new Menu instance.
         * @return The specified menu, or null if none are found
         */
       public static native function get(menu : *) : Menu;
       protected static native function unregister(menu) : void;
       protected static native function registerCheckable(menuItem) : void;
       protected static native function unregisterCheckable(menuItem) : void;
       public static native function getCheckedItem(groupId) : void;
       public static native function setCheckedItem(groupId, itemId) : void;
}}
