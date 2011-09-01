package ext {

import ext.config.messagebox;
import ext.form.Number;

/**
 * Utility class for generating different styles of message boxes. The framework provides a global singleton <a href="Ext.Msg.html">Ext.Msg</a> for common usage.
 <p>Note that the MessageBox is asynchronous. Unlike a regular JavaScript <code>alert</code> (which will halt browser execution), showing a MessageBox will not cause the code to stop. For this reason, if you have code that should only run <em>after</em> some user feedback from the MessageBox, you must use a callback function (see the <code>fn</code> configuration option parameter for the <a href="output/Ext.MessageBox.html#Ext.MessageBox-show">show</a> method for more details).</p><h2>Screenshot</h2><p><img src="doc_resources/Ext.MessageBox/screenshot.png" alt=""/></p><h2>Example usage:</h2><pre><code>// Basic alert:
 Ext.Msg.alert('Title', 'The quick brown fox jumped over the lazy dog.', Ext.emptyFn);

 // Prompt for user data and process the result using a callback:
 Ext.Msg.prompt('Name', 'Please enter your name:', function(text) {
 // process text value and close...
 });

 // Confirmation alert
 Ext.Msg.confirm("Confirmation", "Are you sure you want to do that?", Ext.emptyFn);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'messagebox' / the EXML element &lt;messagebox>.</p>
 * @see ext.config.messagebox
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#cls-Ext.MessageBox Ext JS source
 */
public class MessageBox extends Sheet {

  /**
   * Create a new MessageBox.
   *
   * @param config The config object
   * @see ext.config.messagebox
   */
  public function MessageBox(config:messagebox = null) {
    super(null);
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultTextHeight():ext.form.Number;

  /**
   effect when the message box is being displayed (defaults to 'pop')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get enterAnimation():*;

  /**
   effect when the message box is being hidden (defaults to 'pop')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get exitAnimation():*;

  /**
   * Displays a standard read-only message box with an OK button (comparable to the basic JavaScript alert prompt). If a callback function is passed it will be called after the user clicks the button, and the itemId of the button that was clicked will be passed as the only parameter to the callback
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked after the message box is closed
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser wnidow.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-alert Ext JS source
   */
  public native function alert(title:String, msg:String, fn:Function = null, scope:Object = null):MessageBox;

  /**
   * Displays a confirmation message box with Yes and No buttons (comparable to JavaScript's confirm). If a callback function is passed it will be called after the user clicks either button, and the id of the button that was clicked will be passed as the only parameter to the callback (could also be the top-right close button).
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked when user taps on the OK/Cancel button. The button is passed as the first argument.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser wnidow.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-confirm Ext JS source
   */
  public native function confirm(title:String, msg:String, fn:Function = null, scope:Object = null):MessageBox;

  /**
   * Displays a message box with OK and Cancel buttons prompting the user to enter some text (comparable to JavaScript's prompt). The prompt can be a single-line or multi-line textbox. If a callback function is passed it will be called after the user clicks either button, and the id of the button that was clicked (could also be the top-right close button) and the text that was entered will be passed as the two parameters to the callback.
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked when the user taps on the OK/Cancel button, the button is passed as the first argument, the entered string value is passed as the second argument
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser wnidow.
   * @param multiLine True to create a multiline textbox using the defaultTextHeight property, or the height in pixels to create the textbox (defaults to false / single-line)
   * @param value Default value of the text input element (defaults to '')
   * @param promptConfig <div class="sub-desc">(optional) A hash collection of input attribute values.<div class="sub-desc">Specified values may include:<ul><li><tt>focus</tt> : Boolean <div class="sub-desc"><tt>true</tt> to assert initial input focus (defaults to false)</div></li><li><tt>placeholder</tt> : String <div class="sub-desc">String value rendered when the input field is empty (defaults to empty string)</div></li><li><tt>autocapitalize</tt> : String/Boolean <div class="sub-desc"><tt>true/on</tt> to capitalize the first letter of each word in the input value (defaults to 'off')</div></li><li><tt>autocorrect</tt> : String/Boolean <div class="sub-desc"><tt>true/on</tt> to enable spell-checking/autocorrect features if supported by the browser (defaults to 'off')</div></li><li><tt>autocomplete</tt> : String/Boolean <div class="sub-desc"><tt>true/on</tt> to enable autoCompletion of supplied text input values if supported by the browser (defaults to 'off')</div></li><li><tt>maxlength</tt> : Number <div class="sub-desc">Maximum number of characters allowed in the input if supported by the browser (defaults to 0)</div></li><li><tt>type</tt> : String <div class="sub-desc">The type of input field. Possible values (if supported by the browser) may include (text, search, number, range, color, tel, url, email, date, month, week, time, datetime) (defaults to 'text')</div></li></ul></div></div>Example usage: <pre><code>   Ext.Msg.prompt(
   'Welcome!',
   'What\'s your name going to be today?',
   function(value){
   console.log(value)
   },
   null,
   false,
   null,
   { autocapitalize : true, placeholder : 'First-name please...' }
   );
   </code></pre>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-prompt Ext JS source
   */
  public native function prompt(title:String, msg:String, fn:Function = null, scope:Object = null, multiLine:* = null, value:String = null, promptConfig:Object = null):MessageBox;

  /**
   * Adds the specified icon to the dialog. By default, the class 'x-msgbox-icon' is applied for default styling, and the class passed in is expected to supply the background image url. Pass in empty string ('') to clear any existing icon. This method must be called before the MessageBox is shown. The following built-in icon classes are supported, but you can also pass in a custom class name: <pre>Ext.MessageBox.INFO
   Ext.MessageBox.WARNING
   Ext.MessageBox.QUESTION
   Ext.MessageBox.ERROR
   </pre>
   *
   * @param icon A CSS classname specifying the icon's background image url, or empty string to clear the icon
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-setIcon Ext JS source
   */
  public native function setIcon(icon:String):MessageBox;

  /**
   * Displays a new message box, or reinitializes an existing message box, based on the config options passed in. All display functions (e.g. prompt, alert, etc.) on MessageBox call this function internally, although those calls are basic shortcuts and do not support all of the config options allowed here.
   *
   * @param animation Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-show Ext JS source
   */
  override public native function show(animation:* = null):void;

  /**
   * Updates the message box body text
   *
   * @param text Replaces the message box element's innerHTML with the specified string (defaults to the XHTML-compliant non-breaking space character '&amp;#160;')
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-updateText Ext JS source
   */
  public native function updateText(text:String = null):MessageBox;

}
}
    