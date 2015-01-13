package ext.layout.boxoverflow {
import ext.Button;
import ext.Component;
import ext.Container;
import ext.Element;
import ext.config.boxoverflowmenu;
import ext.menu.Menu;

/**
 * Description
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'boxoverflowmenu' / the EXML element &lt;boxoverflowmenu>.</p>
 * @see ext.config.boxoverflowmenu
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "layout.boxOverflow.Menu")]
public class Menu extends None {

  /**
   * Create a new Menu.
   *
   * @param config The config object
   * @see ext.config.boxoverflowmenu
   */
  public function Menu(config:boxoverflowmenu = null) {
    super();
  }

  /**
   The expand menu - holds items for every item that cannot be shown because the container is currently not large enough.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-property-menu Sencha Docs Ext JS 3.4
   */
  public native function get menu():ext.menu.Menu;

  /**
   * @private
   */
  public native function set menu(value:ext.menu.Menu):void;

  /**
   Array of all items that are currently hidden and should go into the dropdown menu
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-property-menuItems Sencha Docs Ext JS 3.4
   */
  public native function get menuItems():Array;

  /**
   * @private
   */
  public native function set menuItems(value:Array):void;

  /**
   The expand button which triggers the overflow menu to be shown
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-property-menuTrigger Sencha Docs Ext JS 3.4
   */
  public native function get menuTrigger():Button;

  /**
   * @private
   */
  public native function set menuTrigger(value:Button):void;

  /**
   HTML fragment to render into the toolbar overflow menu if there are no items to display
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-property-noItemsMenuText Sencha Docs Ext JS 3.4
   */
  public native function get noItemsMenuText():String;

  /**
   * @private
   */
  public native function set noItemsMenuText(value:String):void;

  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   */
  public native function get afterCls():String;

  /**
   *
   *
   * @param menu The menu to add to
   * @param component The component to add
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-addComponentToMenu Sencha Docs Ext JS 3.4
   */
  public native function addComponentToMenu(menu:ext.menu.Menu, component:Component):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-beforeMenuShow Sencha Docs Ext JS 3.4
   */
  public native function beforeMenuShow():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-clearMenu Sencha Docs Ext JS 3.4
   */
  public native function clearMenu():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-clearOverflow Sencha Docs Ext JS 3.4
   */
  public native function clearOverflow():void;

  /**
   *
   *
   * @param container The Container attached to this Layout instance
   * @param target The target Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-createInnerElements Sencha Docs Ext JS 3.4
   */
  public native function createInnerElements(container:Container, target:Element):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-createMenu Sencha Docs Ext JS 3.4
   */
  public native function createMenu():void;

  /**
   *
   *
   * @param component The component to create the config for
   * @param hideOnClick Passed through to the menu item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-createMenuConfig Sencha Docs Ext JS 3.4
   */
  public native function createMenuConfig(component:Component, hideOnClick:Boolean):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-hideTrigger Sencha Docs Ext JS 3.4
   */
  public native function hideTrigger():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.boxOverflow.Menu-method-showTrigger Sencha Docs Ext JS 3.4
   */
  public native function showTrigger():void;

}
}
    