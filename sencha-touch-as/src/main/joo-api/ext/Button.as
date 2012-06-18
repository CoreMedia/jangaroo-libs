package ext {

import ext.config.button;
import ext.form.Number;

/**
 * Fires when the button is tapped but before we call the handler or fire the tap event. Return false in a handler to prevent this.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="beforetap")]

/**
 * Fires when the button is tapped.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="tap")]


/**
 * A simple class to display different styles of buttons.
 <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Button.html#Ext.Button-ui">ui</a> (defines the style of the button)</li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.Button.html#Ext.Button-handler">handler</a> (method to be called when the button is tapped)</li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Button/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>// an array of buttons (using xtypes) to be included in the panel below
 var buttons = [
 {
 text: 'Normal'
 },
 {
 ui  : 'round',
 text: 'Round'
 },
 {
 ui  : 'small',
 text: 'Small'
 }
 ];

 var panel = new Ext.Panel({
 layout: {
 type : 'vbox',
 pack : 'center',
 align: 'stretch'
 },
 defaults: {
 layout: {
 type: 'hbox'
 },
 flex: 1,
 defaults: {
 xtype: 'button',
 cls  : 'demobtn',
 flex : 1
 }
 },
 items: [
 {
 items: buttons // buttons array defined above
 },
 {
 items: [
 new Ext.Button({
 ui  : 'decline',
 text: 'Drastic'
 }),
 {
 ui  : 'decline-round',
 text: 'Round'
 },
 {
 ui  : 'decline-small',
 text: 'Small'
 }
 ]
 },
 {
 items: [
 {
 ui  : 'confirm',
 text: 'Confirm'
 },
 {
 ui  : 'confirm-round',
 text: 'Round'
 },
 {
 ui  : 'confirm-small',
 text: 'Small'
 }
 ]
 }
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.button
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#cls-Ext.Button Ext JS source
 */
[Native]
public class Button extends Component {

  /**
   *
   *
   * @see ext.config.button
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-Button Ext JS source
   */
  public function Button(config:button = null) {
    super(config);
  }

  /**
   If provided, a handler function is automatically created that fires the given event in the configured <a href="output/Ext.Button.html#Ext.Button-scope">scope</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoEvent():*;

  /**
   CSS class for badge Defaults to <tt>'x-badge'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get badgeCls():String;

  /**
   The path to an image to display in the button (the image will be set as the background-image CSS property of the button by default, so if you want a mixed icon/text button, set cls:'x-btn-text-icon')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get icon():String;

  /**
   The alignment of the buttons icon if one has been defined. Valid options are 'top', 'right', 'bottom', 'left' (defaults to 'left').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconAlign():String;

  /**
   A css class which sets a background image to be used as the icon for this button
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconCls():String;

  /**
   Whether or not to mask the icon with the iconMaskCls configuration. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconMask():Boolean;

  /**
   CSS class to be added to the iconEl when the iconMask config is set to true. Defaults to 'x-icon-mask'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconMaskCls():String;

  /**
   CSS class when the button is in pressed state Defaults to <tt>'x-button-pressed'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pressedCls():String;

  /**
   The amount of delay between the tapstart and the moment we add the pressedCls. Settings this to true defaults to 100ms
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pressedDelay():ext.form.Number;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Button.html#Ext.Button-handler">handler</a></code> and <code><a href="output/Ext.Button.html#Ext.Button-toggleHandler">toggleHandler</a></code> is executed. Defaults to this Button.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-createAutoHandler Ext JS source
   */
  public native function createAutoHandler():void;

  /**
   * Gets the text for this Button's badge
   *
   * @return The button text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-getBadgeText Ext JS source
   */
  public native function getBadgeText():String;

  /**
   * Gets the text for this Button
   *
   * @return The button text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-getText Ext JS source
   */
  public native function getText():String;

  /**
   * Creates a badge overlay on the button for displaying notifications.
   *
   * @param text The text going into the badge. If you pass null or undefined the badge will be removed.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setBadge Ext JS source
   */
  public native function setBadge(text:String):Button;

  /**
   * Assigns this Button's click handler
   *
   * @param handler The function to call when the button is clicked
   * @param scope The scope (<code>this</code> reference) in which the handler function is executed. Defaults to this Button.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setHandler Ext JS source
   */
  public native function setHandler(handler:Function, scope:Object = null):Button;

  /**
   * Sets the background image (inline style) of the button. This method also changes the value of the <a href="icon.html">icon</a> config internally.
   *
   * @param icon The path to an image to display in the button. If you pass null or undefined the icon will be removed.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setIcon Ext JS source
   */
  public native function setIcon(icon:String):Button;

  /**
   * Adds a CSS class to the button that changes the align of the button's icon (if one has been defined). If no icon or iconClass has been defined, it will only set the value of the <a href="iconAlign.html">iconAlign</a> internal config.
   *
   * @param alignment The alignment you would like to align the button. Valid options are 'top', 'bottom', 'left', 'right'. If you pass false, it will remove the current iconAlign. If you pass nothing or an invalid alignment, it will default to the last used/default iconAlign.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setIconAlign Ext JS source
   */
  public native function setIconAlign(alignment:String):Button;

  /**
   * Sets the CSS class that provides a background image to use as the button's icon. This method also changes the value of the <a href="iconCls.html">iconCls</a> config internally.
   *
   * @param cls The CSS class providing the icon image. If you pass null or undefined the iconCls will be removed.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setIconClass Ext JS source
   */
  public native function setIconClass(cls:String):Button;

  /**
   * Sets this Button's text
   *
   * @param text The button text. If you pass null or undefined the text will be removed.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Button.html#method-Ext.Button-setText Ext JS source
   */
  public native function setText(text:String):Button;

}
}
    