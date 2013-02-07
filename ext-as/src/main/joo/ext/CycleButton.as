package ext {
import ext.config.cycle;
import ext.menu.CheckItem;
import ext.menu.Menu;

/**
 * Fires after the button's active menu item has changed. Note that if a <a href="output/Ext.CycleButton.html#Ext.CycleButton-changeHandler">changeHandler</a> function is set on this CycleButton, it will be called instead on active item change and this change event will not be fired.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.CycleButton</code>

 *       </li>

 *       <li>
 *           <code>item:ext.menu.CheckItem</code>
 The menu item that was selected
 *       </li>

 * </ul>
 */
[Event(name="change")]


/**
 * A specialized SplitButton that contains a menu of <a href="Ext.menu.CheckItem.html">Ext.menu.CheckItem</a> elements. The button automatically cycles through each menu item on click, raising the button's <a href="output/Ext.CycleButton.html#Ext.CycleButton-change">change</a> event (or calling the button's <a href="output/Ext.CycleButton.html#Ext.CycleButton-changeHandler">changeHandler</a> function, if supplied) for the active menu item. Clicking on the arrow section of the button displays the dropdown menu just like a normal SplitButton. Example usage: <pre><code>var btn = new Ext.CycleButton({
 showText: true,
 prependText: 'View as ',
 items: [{
 text:'text only',
 iconCls:'view-text',
 checked:true
 },{
 text:'HTML',
 iconCls:'view-html'
 }],
 changeHandler:function(btn, item){
 Ext.Msg.alert('Change View', item.text);
 }
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'cycle' / the EXML element &lt;cycle>.</p>
 * @see ext.config.cycle
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CycleButton Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.CycleButton")]
public class CycleButton extends SplitButton {

  /**
   * Create a new split button
   *
   * @param config The config object
   * @see ext.config.cycle
   */
  public function CycleButton(config:cycle) {
    super(null);
  }

  /**
   The <a href="Ext.menu.Menu.html">Menu</a> object used to display the <a href="Ext.menu.CheckItem.html">CheckItems</a> representing the available choices.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CycleButton-property-menu Sencha Docs Ext JS 3.4
   */
  override public native function get menu():Menu;

  /**
   * @private
   */
  override public native function set menu(value:Menu):void;

  /**
   A css class which sets an image to be used as the static icon for this button. This icon will always be displayed regardless of which item is selected in the dropdown list. This overrides the default behavior of changing the button's icon to match the selected item's icon on change.
   */
  public native function get forceIcon():String;

  /**
   An array of <a href="Ext.menu.CheckItem.html">Ext.menu.CheckItem</a> <b>config</b> objects to be used when creating the button's menu items (e.g., {text:'Foo', iconCls:'foo-icon'})
   */
  public native function get items():Array;

  /**
   A static string to prepend before the active item's text when displayed as the button's text (only applies when showText = true, defaults to '')
   */
  public native function get prependText():String;

  /**
   True to display the active item's text as the button text (defaults to false)
   */
  public native function get showText():Boolean;

  /**
   * Gets the currently active menu item.
   *
   * @return The active item
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CycleButton-method-getActiveItem Sencha Docs Ext JS 3.4
   */
  public native function getActiveItem():CheckItem;

  /**
   * Sets the button's active menu item.
   *
   * @param item The item to activate
   * @param suppressEvent True to prevent the button's change event from firing (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CycleButton-method-setActiveItem Sencha Docs Ext JS 3.4
   */
  public native function setActiveItem(item:CheckItem, suppressEvent:Boolean):void;

  /**
   * This is normally called internally on button click, but can be called externally to advance the button's active item programmatically to the next one in the menu. If the current item is the last one in the menu the active item will be set to the first item in the menu.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CycleButton-method-toggleSelected Sencha Docs Ext JS 3.4
   */
  public native function toggleSelected():void;

}
}
    