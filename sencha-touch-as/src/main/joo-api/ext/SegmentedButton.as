package ext {

import ext.config.buttons;

/**
 * Fires when any child button's pressed state has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.SegmentedButton</code>

 *       </li>

 *       <li>
 *           <code>button:ext.Button</code>
 The button whose state has changed
 *       </li>

 *       <li>
 *           <code>pressed:Boolean</code>
 The new button state.
 *       </li>

 * </ul>
 */
[Event(name="toggle")]


/**
 * SegmentedButton is a container for a group of <a href="Ext.Button.html">Ext.Button</a>s. Generally a SegmentedButton would be a child of a <a href="Ext.Toolbar.html">Ext.Toolbar</a> and would be used to switch between different views.
 <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.SegmentedButton.html#Ext.SegmentedButton-allowMultiple">allowMultiple</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.SegmentedButton/screenshot.png" alt=""/></p><h2>Example usage:</h2><pre><code>var segmentedButton = new Ext.SegmentedButton({
 allowMultiple: true,
 items: [
 {
 text: 'Option 1'
 },
 {
 text   : 'Option 2',
 pressed: true,
 handler: tappedFn
 },
 {
 text: 'Option 3'
 }
 ],
 listeners: {
 toggle: function(container, button, pressed){
 console.log("User toggled the '" + button.text + "' button: " + (pressed ? 'on' : 'off'));
 }
 }
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'buttons' / the EXML element &lt;buttons>.</p>
 * @see ext.config.buttons
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SegmentedButton.html#cls-Ext.SegmentedButton Ext JS source
 */
public class SegmentedButton extends Container {

  /**
   *
   *
   * @param config The config object
   * @see ext.config.buttons
   */
  public function SegmentedButton(config:buttons) {
    super(null);
  }

  /**
   Allow to depress a pressed button. (defaults to true when allowMultiple is true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowDepress():Boolean;

  /**
   Allow multiple pressed buttons (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowMultiple():Boolean;

  /**
   * Disables all buttons
   *
   * @param silent Passing true, will supress the 'disable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SegmentedButton.html#method-Ext.SegmentedButton-disable Ext JS source
   */
  override public native function disable(silent:Boolean):void;

  /**
   * Enables all buttons
   *
   * @param silent Passing false will supress the 'enable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SegmentedButton.html#method-Ext.SegmentedButton-enable Ext JS source
   */
  override public native function enable(silent:Boolean):void;

  /**
   * Gets the pressed button(s)
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SegmentedButton.html#method-Ext.SegmentedButton-getPressed Ext JS source
   */
  public native function getPressed():void;

  /**
   * Activates a button
   *
   * @param button position/id/button The button to activate.
   * @param pressed if defined, sets the pressed state of the button, otherwise the pressed state is toggled
   * @param suppressEvents true to suppress toggle events during the action. If allowMultiple is true, then setPressed will toggle the button state.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SegmentedButton.html#method-Ext.SegmentedButton-setPressed Ext JS source
   */
  public native function setPressed(button:*, pressed:Boolean, suppressEvents:Boolean):void;

}
}
    