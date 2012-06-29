package ext.layout {
import ext.Button;
import ext.Component;
import ext.Container;
import ext.Element;
import ext.config.toolbarlayout;
import ext.menu.Menu;

/**
 * Layout manager used by Ext.Toolbar. This is highly specialised for use by Toolbars and would not usually be used by any other class.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.toolbarlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout Sencha Docs Ext JS 3.4
 */
[Native]
public class ToolbarLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.toolbarlayout
   */
  public function ToolbarLayout(config:toolbarlayout = null) {
    super(config);
  }

  /**
   Holds all items that are currently hidden due to there not being enough space to render them These items will appear on the expand menu.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-hiddenItems Sencha Docs Ext JS 3.4
   */
  public native function get hiddenItems():Array;

  /**
   * @private
   */
  public native function set hiddenItems(value:Array):void;

  /**
   Used internally to record whether the last layout caused an overflow or not
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-lastOverflow Sencha Docs Ext JS 3.4
   */
  public native function get lastOverflow():Boolean;

  /**
   * @private
   */
  public native function set lastOverflow(value:Boolean):void;

  /**
   The expand button which triggers the overflow menu to be shown
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-more Sencha Docs Ext JS 3.4
   */
  public native function get more():Button;

  /**
   * @private
   */
  public native function set more(value:Button):void;

  /**
   The expand menu - holds items for every Toolbar item that cannot be shown because the Toolbar is currently not wide enough.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-moreMenu Sencha Docs Ext JS 3.4
   */
  public native function get moreMenu():Menu;

  /**
   * @private
   */
  public native function set moreMenu(value:Menu):void;

  /**
   HTML fragment to render into the toolbar overflow menu if there are no items to display
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-noItemsMenuText Sencha Docs Ext JS 3.4
   */
  public native function get noItemsMenuText():String;

  /**
   * @private
   */
  public native function set noItemsMenuText(value:String):void;

  /**
   String used to build the HTML injected to support the Toolbar's layout. The align property is injected into this string inside the td.x-toolbar-left element during onLayout.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-tableHTML Sencha Docs Ext JS 3.4
   */
  public native function get tableHTML():String;

  /**
   * @private
   */
  public native function set tableHTML(value:String):void;

  /**
   The width allocated for the menu trigger at the extreme right end of the Toolbar
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-property-triggerWidth Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-addComponentToMenu Sencha Docs Ext JS 3.4
   */
  public native function addComponentToMenu(menu:Menu, component:Component):void;

  /**
   *
   *
   * @param m The menu
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-beforeMoreShow Sencha Docs Ext JS 3.4
   */
  public native function beforeMoreShow(m:Menu):void;

  /**
   *
   *
   * @param el The element to clean up
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-cleanup Sencha Docs Ext JS 3.4
   */
  public native function cleanup(el:Element):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-clearMenu Sencha Docs Ext JS 3.4
   */
  public native function clearMenu():void;

  /**
   *
   *
   * @param component The component to create the config for
   * @param hideOnClick Passed through to the menu item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-createMenuConfig Sencha Docs Ext JS 3.4
   */
  public native function createMenuConfig(component:Component, hideOnClick:Boolean):void;

  /**
   *
   *
   * @param target The Element the Toolbar is currently laid out within
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-fitToSize Sencha Docs Ext JS 3.4
   */
  public native function fitToSize(target:Element):void;

  /**
   *
   *
   * @param c The component to measure
   * @return The width of the item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-getItemWidth Sencha Docs Ext JS 3.4
   */
  public native function getItemWidth(c:Component):Number;

  /**
   *
   *
   * @param item The item to hide
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-hideItem Sencha Docs Ext JS 3.4
   */
  public native function hideItem(item:Component):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-initMore Sencha Docs Ext JS 3.4
   */
  public native function initMore():void;

  /**
   *
   *
   * @param c The component to add
   * @param target The target to add the component to
   * @param position The position to add the component at
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-insertCell Sencha Docs Ext JS 3.4
   */
  public native function insertCell(c:Component, target:Element, position:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-onLayout Sencha Docs Ext JS 3.4
   */
  override public native function onLayout(ct:Container, target:Element):void;

  /**
   *
   *
   * @param item The item to show
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ToolbarLayout-method-unhideItem Sencha Docs Ext JS 3.4
   */
  public native function unhideItem(item:Component):void;

}
}
    