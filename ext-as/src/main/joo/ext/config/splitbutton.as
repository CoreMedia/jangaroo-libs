package ext.config {

/**
 * A split button that provides a built-in dropdown arrow that can fire an event separately from the default click event of the button. Typically this would be used to display a dropdown menu that provides additional options to the primary button action, but any custom handler can provide the arrowclick implementation. Example usage: <pre><code>// display a dropdown menu:
 new Ext.SplitButton({
 renderTo: 'button-ct', // the container id
 text: 'Options',
 handler: optionsHandler, // handle a click on the button itself
 menu: new Ext.menu.Menu({
 items: [
 // these items will render as dropdown menu items when the arrow is clicked:
 {text: 'Item 1', handler: item1Handler},
 {text: 'Item 2', handler: item2Handler}
 ]
 })
 });

 // Instead of showing a menu, you provide any type of custom
 // functionality you want when the dropdown arrow is clicked:
 new Ext.SplitButton({
 renderTo: 'button-ct',
 text: 'Options',
 handler: optionsHandler,
 arrowHandler: myCustomHandler
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'splitbutton' and serves as a
 * typed config object for constructor of class SplitButton.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.SplitButton
 */
[ExtConfig(target="ext.SplitButton", xtype="splitbutton")]
public class splitbutton extends button {

  public function splitbutton(config:Object = null) {

    super(config);
  }


  /**
   A function called when the arrow button is clicked (can be used instead of click event)
   */
  public native function get arrowHandler():Function;

  /**
   * @private
   */
  public native function set arrowHandler(value:Function):void;

  /**
   The title attribute of the arrow
   */
  public native function get arrowTooltip():String;

  /**
   * @private
   */
  public native function set arrowTooltip(value:String):void;


}
}
    