package ext.config {

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
 * <p>This class represents the xtype 'cycle' and serves as a
 * typed config object for constructor of class CycleButton.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.CycleButton
 */
[ExtConfig(target="ext.CycleButton", xtype="cycle")]
public class cycle extends splitbutton {

  public function cycle(config:Object = null) {

    super(config);
  }


  /**
   A callback function that will be invoked each time the active menu item in the button's menu has changed. If this callback is not supplied, the SplitButton will instead fire the <a href="output/Ext.CycleButton.html#Ext.CycleButton-change">change</a> event on active item change. The changeHandler function will be called with the following argument list: (SplitButton this, Ext.menu.CheckItem item)
   */
  public native function get changeHandler():Function;

  /**
   * @private
   */
  public native function set changeHandler(value:Function):void;

  /**
   A css class which sets an image to be used as the static icon for this button. This icon will always be displayed regardless of which item is selected in the dropdown list. This overrides the default behavior of changing the button's icon to match the selected item's icon on change.
   */
  public native function get forceIcon():String;

  /**
   * @private
   */
  public native function set forceIcon(value:String):void;

  /**
   An array of <a href="Ext.menu.CheckItem.html">Ext.menu.CheckItem</a> <b>config</b> objects to be used when creating the button's menu items (e.g., {text:'Foo', iconCls:'foo-icon'})
   */
  public native function get items():Array;

  /**
   * @private
   */
  public native function set items(value:Array):void;

  /**
   A static string to prepend before the active item's text when displayed as the button's text (only applies when showText = true, defaults to '')
   */
  public native function get prependText():String;

  /**
   * @private
   */
  public native function set prependText(value:String):void;

  /**
   True to display the active item's text as the button text (defaults to false)
   */
  public native function get showText():Boolean;

  /**
   * @private
   */
  public native function set showText(value:Boolean):void;


}
}
    