package ext {

import ext.menu.CheckItem;

/**
 * A specialized SplitButton that contains a menu of <b class='link'>Ext.menu.CheckItem</b> elements.  The button automatically
 * cycles through each menu item on click, raising the button's <b class='link' title='#change'>change</b> event (or calling the button's
 * <b class='link' title='#changeHandler'>changeHandler</b> function, if supplied) for the active menu item. Clicking on the arrow section of the
 * button displays the dropdown menu just like a normal SplitButton.  Example usage:
 * <pre><code>
var btn = new ext.CycleButton({
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
        ext.Msg.alert('Change View', item.text);
    }
});
</code></pre>
*/
public class CycleButton extends SplitButton {
/**
 * @constructor
 * Create a new split button
 * @param config The config object
 * @xtype cycle
 */
public function CycleButton(config : Object) {
  super(config);
}
    /**
     * @cfg {Array} items An array of <b class='link'>Ext.menu.CheckItem</b> <b>config</b> objects to be used when creating the
     * button's menu items (e.g., {text:'Foo', iconCls:'foo-icon'})
     */
    /**
     * @cfg {Boolean} showText True to display the active item's text as the button text (defaults to false)
     */
    /**
     * @cfg {String} prependText A static string to prepend before the active item's text when displayed as the
     * button's text (only applies when showText = true, defaults to '')
     */
    /**
     * @cfg {Function} changeHandler A callback function that will be invoked each time the active menu
     * item in the button's menu has changed.  If this callback is not supplied, the SplitButton will instead
     * fire the <b class='link' title='#change'>change</b> event on active item change.  The changeHandler function will be called with the
     * following argument list: (SplitButton this, Ext.menu.CheckItem item)
     */
    /**
     * @cfg {String} forceIcon A css class which sets an image to be used as the static icon for this button.  This
     * icon will always be displayed regardless of which item is selected in the dropdown list.  This overrides the 
     * default behavior of changing the button's icon to match the selected item's icon on change.
     */
    /**
     * @property menu
     * The <b class='link' title='Ext.menu.Menu'>Menu</b> object used to display the <b class='link' title='Ext.menu.CheckItem'>CheckItems</b> representing the available choices.
     */
    protected native function getItemText(item) : void;
    /**
     * Sets the button's active menu item.
     * @param item The item to activate
     * @param suppressEvent True to prevent the button's change event from firing (defaults to false)
     */
    public native function setActiveItem(item : CheckItem, suppressEvent : Boolean) : void;
    /**
     * Gets the currently active menu item.
     * @return The active item
     */
    public native function getActiveItem() : CheckItem;
    override protected native function initComponent() : void;

    protected native function checkHandler() : void;
    /**
     * This is normally called internally on button click, but can be called externally to advance the button's
     * active item programmatically to the next one in the menu.  If the current item is the last one in the menu
     * the active item will be set to the first item in the menu.
     */
    public native function toggleSelected() : void;
}}
