package ext.layout.boxoverflow {

import ext.Button;
import ext.Component;
import ext.Container;
import ext.Element;
import ext.menu.Menu;

/**
 * Description
 * @see ext.config.menu
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#cls-Ext.layout.boxOverflow.Menu Ext JS source
 */
public class Menu extends None {

  /**
   *
   *
   * @see ext.config.menu
   */
  public function Menu() {
    super();
  }

  /**
   The expand menu - holds items for every item that cannot be shown because the container is currently not large enough.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#prop-Ext.layout.boxOverflow.Menu-menu Ext JS source
   */
  public native function get menu():ext.menu.Menu;

  /**
   * @private
   */
  public native function set menu(value:ext.menu.Menu):void;

  /**
   Array of all items that are currently hidden and should go into the dropdown menu
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#prop-Ext.layout.boxOverflow.Menu-menuItems Ext JS source
   */
  public native function get menuItems():Array;

  /**
   * @private
   */
  public native function set menuItems(value:Array):void;

  /**
   The expand button which triggers the overflow menu to be shown
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#prop-Ext.layout.boxOverflow.Menu-menuTrigger Ext JS source
   */
  public native function get menuTrigger():Button;

  /**
   * @private
   */
  public native function set menuTrigger(value:Button):void;

  /**
   HTML fragment to render into the toolbar overflow menu if there are no items to display
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#prop-Ext.layout.boxOverflow.Menu-noItemsMenuText Ext JS source
   */
  public native function get noItemsMenuText():String;

  /**
   * @private
   */
  public native function set noItemsMenuText(value:String):void;

  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get afterCls():String;

  /**
   *
   *
   * @param menu The menu to add to
   * @param component The component to add
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-addComponentToMenu Ext JS source
   */
  public native function addComponentToMenu(menu:ext.menu.Menu, component:Component):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-beforeMenuShow Ext JS source
   */
  public native function beforeMenuShow():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-clearMenu Ext JS source
   */
  public native function clearMenu():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-clearOverflow Ext JS source
   */
  public native function clearOverflow():void;

  /**
   *
   *
   * @param container The Container attached to this Layout instance
   * @param target The target Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-createInnerElements Ext JS source
   */
  public native function createInnerElements(container:Container, target:Element):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-createMenu Ext JS source
   */
  public native function createMenu():void;

  /**
   *
   *
   * @param component The component to create the config for
   * @param hideOnClick Passed through to the menu item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-createMenuConfig Ext JS source
   */
  public native function createMenuConfig(component:Component, hideOnClick:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-hideTrigger Ext JS source
   */
  public native function hideTrigger():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MenuOverflow.html#method-Ext.layout.boxOverflow.Menu-showTrigger Ext JS source
   */
  public native function showTrigger():void;

}
}
    