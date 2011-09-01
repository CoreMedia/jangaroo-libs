package ext.config {

import ext.form.Number;

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
 * <p>This class serves as a
 * typed config object for constructor of class Button.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Button
 */
[ExtConfig(target="ext.Button")]
public class button extends component {

  public function button(config:Object = null) {

    super(config);
  }


  /**
   If provided, a handler function is automatically created that fires the given event in the configured <a href="output/Ext.Button.html#Ext.Button-scope">scope</a>.
   */
  public native function get autoEvent():*;

  /**
   * @private
   */
  public native function set autoEvent(value:*):void;

  /**
   CSS class for badge Defaults to <tt>'x-badge'</tt>
   */
  public native function get badgeCls():String;

  /**
   * @private
   */
  public native function set badgeCls(value:String):void;

  /**
   The text to be used for a small badge on the button. Defaults to <tt>''</tt>
   */
  public native function get badgeText():String;

  /**
   * @private
   */
  public native function set badgeText(value:String):void;

  /**
   Base CSS class Defaults to <tt>'x-button'</tt>
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   A CSS class string to apply to the button's main element.
   */
  override public native function get cls():String;

  /**
   * @private
   */
  override public native function set cls(value:String):void;

  /**
   True to start disabled (defaults to false)
   */
  override public native function get disabled():Boolean;

  /**
   * @private
   */
  override public native function set disabled(value:Boolean):void;

  /**
   A function called when the button is clicked (can be used instead of click event). The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>b</code> : Button<div class="sub-desc">This Button.</div></li><li><code>e</code> : EventObject<div class="sub-desc">The click event.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   True to start hidden (defaults to false)
   */
  override public native function get hidden():Boolean;

  /**
   * @private
   */
  override public native function set hidden(value:Boolean):void;

  /**
   The path to an image to display in the button (the image will be set as the background-image CSS property of the button by default, so if you want a mixed icon/text button, set cls:'x-btn-text-icon')
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   The alignment of the buttons icon if one has been defined. Valid options are 'top', 'right', 'bottom', 'left' (defaults to 'left').
   */
  public native function get iconAlign():String;

  /**
   * @private
   */
  public native function set iconAlign(value:String):void;

  /**
   A css class which sets a background image to be used as the icon for this button
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   Whether or not to mask the icon with the iconMaskCls configuration. Defaults to false.
   */
  public native function get iconMask():Boolean;

  /**
   * @private
   */
  public native function set iconMask(value:Boolean):void;

  /**
   CSS class to be added to the iconEl when the iconMask config is set to true. Defaults to 'x-icon-mask'
   */
  public native function get iconMaskCls():String;

  /**
   * @private
   */
  public native function set iconMaskCls(value:String):void;

  /**
   CSS class when the button is in pressed state Defaults to <tt>'x-button-pressed'</tt>
   */
  public native function get pressedCls():String;

  /**
   * @private
   */
  public native function set pressedCls(value:String):void;

  /**
   The amount of delay between the tapstart and the moment we add the pressedCls. Settings this to true defaults to 100ms
   */
  public native function get pressedDelay():ext.form.Number;

  /**
   * @private
   */
  public native function set pressedDelay(value:ext.form.Number):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Button.html#Ext.Button-handler">handler</a></code> and <code><a href="output/Ext.Button.html#Ext.Button-toggleHandler">toggleHandler</a></code> is executed. Defaults to this Button.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   The button text to be used as innerHTML (html tags are accepted)
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;

  /**
   Determines the UI look and feel of the button. Valid options are 'normal', 'back', 'round', 'action', 'forward'. Defaults to 'normal'.
   */
  override public native function get ui():String;

  /**
   * @private
   */
  override public native function set ui(value:String):void;


}
}
    