package ext.layout {

import ext.Button;
import ext.Component;
import ext.Element;
import ext.menu.Menu;

/**
 * Layout manager used by Ext.Toolbar. This is highly specialised for use by Toolbars and would not usually be used by any other class.
 * @see ext.config.toolbarlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#cls-Ext.layout.ToolbarLayout Ext JS source
 */
public class ToolbarLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.toolbarlayout
   */
  public function ToolbarLayout() {
    super();
  }

  /**
   Holds all items that are currently hidden due to there not being enough space to render them These items will appear on the expand menu.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-hiddenItems Ext JS source
   */
  public native function get hiddenItems():Array;

  /**
   * @private
   */
  public native function set hiddenItems(value:Array):void;

  /**
   Used internally to record whether the last layout caused an overflow or not
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-lastOverflow Ext JS source
   */
  public native function get lastOverflow():Boolean;

  /**
   * @private
   */
  public native function set lastOverflow(value:Boolean):void;

  /**
   The expand button which triggers the overflow menu to be shown
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-more Ext JS source
   */
  public native function get more():Button;

  /**
   * @private
   */
  public native function set more(value:Button):void;

  /**
   The expand menu - holds items for every Toolbar item that cannot be shown because the Toolbar is currently not wide enough.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-moreMenu Ext JS source
   */
  public native function get moreMenu():Menu;

  /**
   * @private
   */
  public native function set moreMenu(value:Menu):void;

  /**
   HTML fragment to render into the toolbar overflow menu if there are no items to display
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-noItemsMenuText Ext JS source
   */
  public native function get noItemsMenuText():String;

  /**
   * @private
   */
  public native function set noItemsMenuText(value:String):void;

  /**
   String used to build the HTML injected to support the Toolbar's layout. The align property is injected into this string inside the td.x-toolbar-left element during onLayout.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-tableHTML Ext JS source
   */
  public native function get tableHTML():String;

  /**
   * @private
   */
  public native function set tableHTML(value:String):void;

  /**
   The width allocated for the menu trigger at the extreme right end of the Toolbar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#prop-Ext.layout.ToolbarLayout-triggerWidth Ext JS source
   */
  public native function get triggerWidth():Number;

  /**
   * @private
   */
  public native function set triggerWidth(value:Number):void;

  /**
   *
   *
   * @param menu The menu to add to
   * @param component The component to add
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-addComponentToMenu Ext JS source
   */
  public native function addComponentToMenu(menu:Menu, component:Component):void;

  /**
   *
   *
   * @param m The menu
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-beforeMoreShow Ext JS source
   */
  public native function beforeMoreShow(m:Menu):void;

  /**
   *
   *
   * @param el The element to clean up
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-cleanup Ext JS source
   */
  public native function cleanup(el:Element):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-clearMenu Ext JS source
   */
  public native function clearMenu():void;

  /**
   *
   *
   * @param component The component to create the config for
   * @param hideOnClick Passed through to the menu item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-createMenuConfig Ext JS source
   */
  public native function createMenuConfig(component:Component, hideOnClick:Boolean):void;

  /**
   *
   *
   * @param target The Element the Toolbar is currently laid out within
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-fitToSize Ext JS source
   */
  public native function fitToSize(target:Element):void;

  /**
   *
   *
   * @param c The component to measure
   * @return The width of the item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-getItemWidth Ext JS source
   */
  public native function getItemWidth(c:Component):Number;

  /**
   *
   *
   * @param item The item to hide
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-hideItem Ext JS source
   */
  public native function hideItem(item:Component):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-initMore Ext JS source
   */
  public native function initMore():void;

  /**
   *
   *
   * @param c The component to add
   * @param target The target to add the component to
   * @param position The position to add the component at
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-insertCell Ext JS source
   */
  public native function insertCell(c:Component, target:Element, position:Number):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-onLayout Ext JS source
   */
  public native function onLayout():void;

  /**
   *
   *
   * @param item The item to show
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ToolbarLayout.html#method-Ext.layout.ToolbarLayout-unhideItem Ext JS source
   */
  public native function unhideItem(item:Component):void;

}
}
    