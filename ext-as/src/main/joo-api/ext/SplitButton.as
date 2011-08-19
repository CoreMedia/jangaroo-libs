package ext {
import ext.config.splitbutton;

/**
 * Fires when this button's arrow is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:MenuButton</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The click event
 *       </li>

 * </ul>
 */
[Event(name="arrowclick")]


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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'splitbutton' / the EXML element &lt;splitbutton>.</p>
 * @see ext.config.splitbutton
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitButton.html#cls-Ext.SplitButton Ext JS source
 */
public class SplitButton extends Button {

  /**
   * Create a new menu button
   *
   * @param config The config object
   * @see ext.config.splitbutton
   */
  public function SplitButton(config:splitbutton) {
    super(null);
  }

  /**
   The title attribute of the arrow
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get arrowTooltip():String;

  /**
   * Sets this button's arrow click handler.
   *
   * @param handler The function to call when the arrow is clicked
   * @param scope Scope for the function passed above
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SplitButton.html#method-Ext.SplitButton-setArrowHandler Ext JS source
   */
  public native function setArrowHandler(handler:Function, scope:Object = null):void;

}
}
    