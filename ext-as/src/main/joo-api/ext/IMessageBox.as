package ext {


/**
 * Utility class for generating different styles of message boxes. The alias Ext.Msg can also be used.
 <p>Note that the MessageBox is asynchronous. Unlike a regular JavaScript <code>alert</code> (which will halt browser execution), showing a MessageBox will not cause the code to stop. For this reason, if you have code that should only run <em>after</em> some user feedback from the MessageBox, you must use a callback function (see the <code>function</code> parameter for <a href="output/Ext.MessageBox.html#Ext.MessageBox-show">show</a> for more details).</p><p>Example usage:</p><pre><code>// Basic alert:
 Ext.Msg.alert('Status', 'Changes saved successfully.');

 // Prompt for user data and process the result using a callback:
 Ext.Msg.prompt('Name', 'Please enter your name:', function(btn, text){
 if (btn == 'ok'){
 // process text value and close...
 }
 });

 // Show a dialog using config options:
 Ext.Msg.show({
 title:'Save Changes?',
 msg: 'You are closing a tab that has unsaved changes. Would you like to save your changes?',
 buttons: Ext.Msg.YESNOCANCEL,
 fn: processResult,
 animEl: 'elId',
 icon: Ext.MessageBox.QUESTION
 });
 </code></pre>
 * <p>This interface defines the type of the singleton MessageBox.</p>
 * @see ext.#MessageBox ext.MessageBox
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#cls-Ext.MessageBox Ext JS source
 */
public interface IMessageBox {

  /**
   Button config that displays a single Cancel button
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-CANCEL Ext JS source
   */
  function get CANCEL():Object;

  /**
   The CSS class that provides the ERROR icon image
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-ERROR Ext JS source
   */
  function get ERROR():String;

  /**
   The CSS class that provides the INFO icon image
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-INFO Ext JS source
   */
  function get INFO():String;

  /**
   Shorthand for <a href="Ext.MessageBox.html">Ext.MessageBox</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-Msg Ext JS source
   */
  function get Msg():Object;

  /**
   * @private
   */
  function set Msg(value:Object):void;

  /**
   Button config that displays a single OK button
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-OK Ext JS source
   */
  function get OK():Object;

  /**
   Button config that displays OK and Cancel buttons
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-OKCANCEL Ext JS source
   */
  function get OKCANCEL():Object;

  /**
   The CSS class that provides the QUESTION icon image
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-QUESTION Ext JS source
   */
  function get QUESTION():String;

  /**
   The CSS class that provides the WARNING icon image
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-WARNING Ext JS source
   */
  function get WARNING():String;

  /**
   Button config that displays Yes and No buttons
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-YESNO Ext JS source
   */
  function get YESNO():Object;

  /**
   Button config that displays Yes, No and Cancel buttons
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-YESNOCANCEL Ext JS source
   */
  function get YESNOCANCEL():Object;

  /**
   An object containing the default button text strings that can be overridden for localized language support. Supported properties are: ok, cancel, yes and no. Generally you should include a locale-specific resource file for handling language support across the framework. Customize the default text like so: Ext.MessageBox.buttonText.yes = "oui"; //french
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-buttonText Ext JS source
   */
  function get buttonText():Object;

  /**
   * @private
   */
  function set buttonText(value:Object):void;

  /**
   The default height in pixels of the message box's multiline textarea if displayed (defaults to 75)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-defaultTextHeight Ext JS source
   */
  function get defaultTextHeight():Number;

  /**
   * @private
   */
  function set defaultTextHeight(value:Number):void;

  /**
   The maximum width in pixels of the message box (defaults to 600)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-maxWidth Ext JS source
   */
  function get maxWidth():Number;

  /**
   * @private
   */
  function set maxWidth(value:Number):void;

  /**
   The minimum width in pixels of the message box if it is a progress-style dialog. This is useful for setting a different minimum width than text-only dialogs may need (defaults to 250).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-minProgressWidth Ext JS source
   */
  function get minProgressWidth():Number;

  /**
   * @private
   */
  function set minProgressWidth(value:Number):void;

  /**
   The minimum width in pixels of the message box if it is a prompt dialog. This is useful for setting a different minimum width than text-only dialogs may need (defaults to 250).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-minPromptWidth Ext JS source
   */
  function get minPromptWidth():Number;

  /**
   * @private
   */
  function set minPromptWidth(value:Number):void;

  /**
   The minimum width in pixels of the message box (defaults to 100)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#prop-Ext.MessageBox-minWidth Ext JS source
   */
  function get minWidth():Number;

  /**
   * @private
   */
  function set minWidth(value:Number):void;

  /**
   * Displays a standard read-only message box with an OK button (comparable to the basic JavaScript alert prompt). If a callback function is passed it will be called after the user clicks the button, and the id of the button that was clicked will be passed as the only parameter to the callback (could also be the top-right close button).
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked after the message box is closed
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser window.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-alert Ext JS source
   */
  function alert(title:String, msg:String, fn:Function = null, scope:Object = null):IMessageBox;

  /**
   * Displays a confirmation message box with Yes and No buttons (comparable to JavaScript's confirm). If a callback function is passed it will be called after the user clicks either button, and the id of the button that was clicked will be passed as the only parameter to the callback (could also be the top-right close button).
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked after the message box is closed
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser window.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-confirm Ext JS source
   */
  function confirm(title:String, msg:String, fn:Function = null, scope:Object = null):IMessageBox;

  /**
   * Returns a reference to the underlying <a href="Ext.Window.html">Ext.Window</a> element
   *
   * @return The window
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-getDialog Ext JS source
   */
  function getDialog():Window;

  /**
   * Hides the message box if it is displayed
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-hide Ext JS source
   */
  function hide():IMessageBox;

  /**
   * Returns true if the message box is currently displayed
   *
   * @return True if the message box is visible, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-isVisible Ext JS source
   */
  function isVisible():Boolean;

  /**
   * Displays a message box with a progress bar. This message box has no buttons and is not closeable by the user. You are responsible for updating the progress bar as needed via <a href="output/Ext.MessageBox.html#Ext.MessageBox-updateProgress">Ext.MessageBox.updateProgress</a> and closing the message box when the process is complete.
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param progressText The text to display inside the progress bar (defaults to '')
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-progress Ext JS source
   */
  function progress(title:String, msg:String, progressText:String = null):IMessageBox;

  /**
   * Displays a message box with OK and Cancel buttons prompting the user to enter some text (comparable to JavaScript's prompt). The prompt can be a single-line or multi-line textbox. If a callback function is passed it will be called after the user clicks either button, and the id of the button that was clicked (could also be the top-right close button) and the text that was entered will be passed as the two parameters to the callback.
   *
   * @param title The title bar text
   * @param msg The message box body text
   * @param fn The callback function invoked after the message box is closed
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser window.
   * @param multiline True to create a multiline textbox using the defaultTextHeight property, or the height in pixels to create the textbox (defaults to false / single-line)
   * @param value Default value of the text input element (defaults to '')
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-prompt Ext JS source
   */
  function prompt(title:String, msg:String, fn:Function = null, scope:Object = null, multiline:* = null, value:String = null):IMessageBox;

  /**
   * Adds the specified icon to the dialog. By default, the class 'ext-mb-icon' is applied for default styling, and the class passed in is expected to supply the background image url. Pass in empty string ('') to clear any existing icon. This method must be called before the MessageBox is shown. The following built-in icon classes are supported, but you can also pass in a custom class name: <pre>Ext.MessageBox.INFO
   Ext.MessageBox.WARNING
   Ext.MessageBox.QUESTION
   Ext.MessageBox.ERROR
   </pre>
   *
   * @param icon A CSS classname specifying the icon's background image url, or empty string to clear the icon
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-setIcon Ext JS source
   */
  function setIcon(icon:String):IMessageBox;

  /**
   * Displays a new message box, or reinitializes an existing message box, based on the config options passed in. All display functions (e.g. prompt, alert, etc.) on MessageBox call this function internally, although those calls are basic shortcuts and do not support all of the config options allowed here.
   *
   * @param config The following config options are supported: <ul><li><b>animEl</b> : String/Element<div class="sub-desc">An id or Element from which the message box should animate as it opens and closes (defaults to undefined)</div></li><li><b>buttons</b> : Object/Boolean<div class="sub-desc">A button config object (e.g., Ext.MessageBox.OKCANCEL or {ok:'Foo', cancel:'Bar'}), or false to not show any buttons (defaults to false)</div></li><li><b>closable</b> : Boolean<div class="sub-desc">False to hide the top-right close button (defaults to true). Note that progress and wait dialogs will ignore this property and always hide the close button as they can only be closed programmatically.</div></li><li><b>cls</b> : String<div class="sub-desc">A custom CSS class to apply to the message box's container element</div></li><li><b>defaultTextHeight</b> : Number<div class="sub-desc">The default height in pixels of the message box's multiline textarea if displayed (defaults to 75)</div></li><li><b>fn</b> : Function<div class="sub-desc">A callback function which is called when the dialog is dismissed either by clicking on the configured buttons, or on the dialog close button, or by pressing the return button to enter input. <p>Progress and wait dialogs will ignore this option since they do not respond to user actions and can only be closed programmatically, so any required function should be called by the same code after it closes the dialog. Parameters passed:</p><ul><li><b>buttonId</b> : String<div class="sub-desc">The ID of the button pressed, one of:<div class="sub-desc"><ul><li><tt>ok</tt></li><li><tt>yes</tt></li><li><tt>no</tt></li><li><tt>cancel</tt></li></ul></div></div></li><li><b>text</b> : String<div class="sub-desc">Value of the input field if either <tt><a href="#show-option-prompt">prompt</a></tt> or <tt><a href="#show-option-multiline">multiline</a></tt> is true</div></li><li><b>opt</b> : Object<div class="sub-desc">The config object passed to show.</div></li></ul><br/><br/></div></li><li><b>scope</b> : Object<div class="sub-desc">The scope of the callback function</div></li><li><b>icon</b> : String<div class="sub-desc">A CSS class that provides a background image to be used as the body icon for the dialog (e.g. Ext.MessageBox.WARNING or 'custom-class') (defaults to '')</div></li><li><b>iconCls</b> : String<div class="sub-desc">The standard <a href="output/Ext.Window.html#Ext.Window-iconCls">Ext.Window.iconCls</a> to add an optional header icon (defaults to '')</div></li><li><b>maxWidth</b> : Number<div class="sub-desc">The maximum width in pixels of the message box (defaults to 600)</div></li><li><b>minWidth</b> : Number<div class="sub-desc">The minimum width in pixels of the message box (defaults to 100)</div></li><li><b>modal</b> : Boolean<div class="sub-desc">False to allow user interaction with the page while the message box is displayed (defaults to true)</div></li><li><b>msg</b> : String<div class="sub-desc">A string that will replace the existing message box body text (defaults to the XHTML-compliant non-breaking space character '&amp;#160;')</div></li><li><a id="show-option-multiline"/><b>multiline</b> : Boolean<div class="sub-desc">True to prompt the user to enter multi-line text (defaults to false)</div></li><li><b>progress</b> : Boolean<div class="sub-desc">True to display a progress bar (defaults to false)</div></li><li><b>progressText</b> : String<div class="sub-desc">The text to display inside the progress bar if progress = true (defaults to '')</div></li><li><a id="show-option-prompt"/><b>prompt</b> : Boolean<div class="sub-desc">True to prompt the user to enter single-line text (defaults to false)</div></li><li><b>proxyDrag</b> : Boolean<div class="sub-desc">True to display a lightweight proxy while dragging (defaults to false)</div></li><li><b>title</b> : String<div class="sub-desc">The title text</div></li><li><b>value</b> : String<div class="sub-desc">The string value to set into the active textbox element if displayed</div></li><li><b>wait</b> : Boolean<div class="sub-desc">True to display a progress bar (defaults to false)</div></li><li><b>waitConfig</b> : Object<div class="sub-desc">A <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-waitConfig">Ext.ProgressBar.waitConfig</a> object (applies only if wait = true)</div></li><li><b>width</b> : Number<div class="sub-desc">The width of the dialog in pixels</div></li></ul>Example usage: <pre><code>Ext.Msg.show({
   title: 'Address',
   msg: 'Please enter your address:',
   width: 300,
   buttons: Ext.MessageBox.OKCANCEL,
   multiline: true,
   fn: saveAddress,
   animEl: 'addAddressBtn',
   icon: Ext.MessageBox.INFO
   });
   </code></pre>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-show Ext JS source
   */
  function show(config:Object):IMessageBox;

  /**
   * Updates a progress-style message box's text and progress bar. Only relevant on message boxes initiated via <a href="output/Ext.MessageBox.html#Ext.MessageBox-progress">Ext.MessageBox.progress</a> or <a href="output/Ext.MessageBox.html#Ext.MessageBox-wait">Ext.MessageBox.wait</a>, or by calling <a href="output/Ext.MessageBox.html#Ext.MessageBox-show">Ext.MessageBox.show</a> with progress: true.
   *
   * @param value Any number between 0 and 1 (e.g., .5, defaults to 0)
   * @param progressText The progress text to display inside the progress bar (defaults to '')
   * @param msg The message box's body text is replaced with the specified string (defaults to undefined so that any existing body text will not get overwritten by default unless a new value is passed in)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-updateProgress Ext JS source
   */
  function updateProgress(value:Number, progressText:String, msg:String):IMessageBox;

  /**
   * Updates the message box body text
   *
   * @param text Replaces the message box element's innerHTML with the specified string (defaults to the XHTML-compliant non-breaking space character '&amp;#160;')
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-updateText Ext JS source
   */
  function updateText(text:String = null):IMessageBox;

  /**
   * Displays a message box with an infinitely auto-updating progress bar. This can be used to block user interaction while waiting for a long-running process to complete that does not have defined intervals. You are responsible for closing the message box when the process is complete.
   *
   * @param msg The message box body text
   * @param title The title bar text
   * @param config A <a href="output/Ext.ProgressBar.html#Ext.ProgressBar-waitConfig">Ext.ProgressBar.waitConfig</a> object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/MessageBox.html#method-Ext.MessageBox-wait Ext JS source
   */
  function wait(msg:String, title:String = null, config:Object = null):IMessageBox;

}
}
    