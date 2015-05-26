package ext.config {


/**
 * Layout manager used by Ext.Toolbar. This is highly specialised for use by Toolbars and would not usually be used by any other class.
 *
 * <p>This class serves as a
 * typed config object for constructor of class ToolbarLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.ToolbarLayout
 */
[ExtConfig(target="ext.layout.ToolbarLayout", type="toolbar")]
public class toolbarlayout extends containerlayout {

  public function toolbarlayout(config:Object = null) {

    super(config);
  }

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

}
}
    