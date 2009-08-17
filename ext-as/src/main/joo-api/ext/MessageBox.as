package ext {
/**
 * <p>Utility class for generating different styles of message boxes.  The alias ext.Msg can also be used.<p/>
 * <p>Note that the MessageBox is asynchronous.  Unlike a regular JavaScript <code>alert</code> (which will halt
 * browser execution), showing a MessageBox will not cause the code to stop.  For this reason, if you have code
 * that should only run <em>after</em> some user feedback from the MessageBox, you must use a callback function
 * (see the <code>function</code> parameter for <b class='link'>#show</b> for more details).</p>
 * <p>Example usage:</p>
 *<pre><code>
// Basic alert:
ext.Msg.alert('Status', 'Changes saved successfully.');

// Prompt for user data and process the result using a callback:
ext.Msg.prompt('Name', 'Please enter your name:', function(btn, text){
    if (btn == 'ok'){
        // process text value and close...
    }
});

// Show a dialog using config options:
ext.Msg.show({
   title:'Save Changes?',
   msg: 'You are closing a tab that has unsaved changes. Would you like to save your changes?',
   buttons: ext.Msg.YESNOCANCEL,
   fn: processResult,
   animEl: 'elId',
   icon: ext.MessageBox.QUESTION
});
</code></pre>
*/
public class MessageBox {
/**
 * @singleton
 */
        /**
         * Returns a reference to the underlying <b class='link'>ext.Window</b> element
         * @return The window
         */
        public static native function getDialog(titleText) : Window;
        /**
         * Updates the message box body text
         * @param text Replaces the message box element's innerHTML with the specified string (defaults to
         * the XHTML-compliant non-breaking space character '&amp;#160;')
         * @return this
         */
        public static native function updateText(text : String = undefined) : MessageBox;
        /**
         * Updates a progress-style message box's text and progress bar. Only relevant on message boxes
         * initiated via <b class='link'>ext.MessageBox#progress</b> or <b class='link'>ext.MessageBox#wait</b>,
         * or by calling <b class='link'>ext.MessageBox#show</b> with progress: true.
         * @param value Any number between 0 and 1 (e.g., .5, defaults to 0)
         * @param progressText The progress text to display inside the progress bar (defaults to '')
         * @param msg The message box's body text is replaced with the specified string (defaults to undefined
         * so that any existing body text will not get overwritten by default unless a new value is passed in)
         * @return this
         */
        public static native function updateProgress(value : Number, progressText : String, msg : String) : MessageBox;
        /**
         * Returns true if the message box is currently displayed
         * @return True if the message box is visible, else false
         */
        public static native function isVisible() : Boolean;
        /**
         * Hides the message box if it is displayed
         * @return this
         */
        public static native function hide() : MessageBox;
        /**
         * Displays a new message box, or reinitializes an existing message box, based on the config options
         * passed in. All display functions (e.g. prompt, alert, etc.) on MessageBox call this function internally,
         * although those calls are basic shortcuts and do not support all of the config options allowed here.
         * @param config The following config options are supported: <ul>
         * <li><b>animEl</b> : String/Element<div class="sub-desc">An id or Element from which the message box should animate as it
         * opens and closes (defaults to undefined)</div></li>
         * <li><b>buttons</b> : Object/Boolean<div class="sub-desc">A button config object (e.g., ext.MessageBox.OKCANCEL or {ok:'Foo',
         * cancel:'Bar'}), or false to not show any buttons (defaults to false)</div></li>
         * <li><b>closable</b> : Boolean<div class="sub-desc">False to hide the top-right close button (defaults to true). Note that
         * progress and wait dialogs will ignore this property and always hide the close button as they can only
         * be closed programmatically.</div></li>
         * <li><b>cls</b> : String<div class="sub-desc">A custom CSS class to apply to the message box's container element</div></li>
         * <li><b>defaultTextHeight</b> : Number<div class="sub-desc">The default height in pixels of the message box's multiline textarea
         * if displayed (defaults to 75)</div></li>
         * <li><b>fn</b> : Function<div class="sub-desc">A callback function which is called when the dialog is dismissed either
         * by clicking on the configured buttons, or on the dialog close button, or by pressing
         * the return button to enter input.
         * <p>Progress and wait dialogs will ignore this option since they do not respond to user
         * actions and can only be closed programmatically, so any required function should be called
         * by the same code after it closes the dialog. Parameters passed:<ul>
         * <li><b>buttonId</b> : String<div class="sub-desc">The ID of the button pressed, one of:<div class="sub-desc"><ul>
         * <li><tt>ok</tt></li>
         * <li><tt>yes</tt></li>
         * <li><tt>no</tt></li>
         * <li><tt>cancel</tt></li>
         * </ul></div></div></li>
         * <li><b>text</b> : String<div class="sub-desc">Value of the input field if either <tt><a href="#show-option-prompt" ext:member="show-option-prompt" ext:cls="ext.MessageBox">prompt</a></tt>
         * or <tt><a href="#show-option-multiline" ext:member="show-option-multiline" ext:cls="ext.MessageBox">multiline</a></tt> is true</div></li>
         * <li><b>opt</b> : Object<div class="sub-desc">The config object passed to show.</div></li>
         * </ul></p></div></li>
         * <li><b>scope</b> : Object<div class="sub-desc">The scope of the callback function</div></li>
         * <li><b>icon</b> : String<div class="sub-desc">A CSS class that provides a background image to be used as the body icon for the
         * dialog (e.g. ext.MessageBox.WARNING or 'custom-class') (defaults to '')</div></li>
         * <li><b>iconCls</b> : String<div class="sub-desc">The standard <b class='link'>ext.Window#iconCls</b> to
         * add an optional header icon (defaults to '')</div></li>
         * <li><b>maxWidth</b> : Number<div class="sub-desc">The maximum width in pixels of the message box (defaults to 600)</div></li>
         * <li><b>minWidth</b> : Number<div class="sub-desc">The minimum width in pixels of the message box (defaults to 100)</div></li>
         * <li><b>modal</b> : Boolean<div class="sub-desc">False to allow user interaction with the page while the message box is
         * displayed (defaults to true)</div></li>
         * <li><b>msg</b> : String<div class="sub-desc">A string that will replace the existing message box body text (defaults to the
         * XHTML-compliant non-breaking space character '&amp;#160;')</div></li>
         * <li><a id="show-option-multiline"></a><b>multiline</b> : Boolean<div class="sub-desc">
         * True to prompt the user to enter multi-line text (defaults to false)</div></li>
         * <li><b>progress</b> : Boolean<div class="sub-desc">True to display a progress bar (defaults to false)</div></li>
         * <li><b>progressText</b> : String<div class="sub-desc">The text to display inside the progress bar if progress = true (defaults to '')</div></li>
         * <li><a id="show-option-prompt"></a><b>prompt</b> : Boolean<div class="sub-desc">True to prompt the user to enter single-line text (defaults to false)</div></li>
         * <li><b>proxyDrag</b> : Boolean<div class="sub-desc">True to display a lightweight proxy while dragging (defaults to false)</div></li>
         * <li><b>title</b> : String<div class="sub-desc">The title text</div></li>
         * <li><b>value</b> : String<div class="sub-desc">The string value to set into the active textbox element if displayed</div></li>
         * <li><b>wait</b> : Boolean<div class="sub-desc">True to display a progress bar (defaults to false)</div></li>
         * <li><b>waitConfig</b> : Object<div class="sub-desc">A <b class='link'>ext.ProgressBar#waitConfig</b> object (applies only if wait = true)</div></li>
         * <li><b>width</b> : Number<div class="sub-desc">The width of the dialog in pixels</div></li>
         * </ul>
         * Example usage:
         * <pre><code>
ext.Msg.show({
   title: 'Address',
   msg: 'Please enter your address:',
   width: 300,
   buttons: ext.MessageBox.OKCANCEL,
   multiline: true,
   fn: saveAddress,
   animEl: 'addAddressBtn',
   icon: ext.MessageBox.INFO
});
</code></pre>
         * @return this
         */
        public static native function show(config : Object) : MessageBox;
        /**
         * Adds the specified icon to the dialog.  By default, the class 'ext-mb-icon' is applied for default
         * styling, and the class passed in is expected to supply the background image url. Pass in empty string ('')
         * to clear any existing icon.  The following built-in icon classes are supported, but you can also pass
         * in a custom class name:
         * <pre>
ext.MessageBox.INFO
ext.MessageBox.WARNING
ext.MessageBox.QUESTION
ext.MessageBox.ERROR
         *</pre>
         * @param icon A CSS classname specifying the icon's background image url, or empty string to clear the icon
         * @return this
         */
        public static native function setIcon(icon : String) : MessageBox;
        /**
         * Displays a message box with a progress bar.  This message box has no buttons and is not closeable by
         * the user.  You are responsible for updating the progress bar as needed via <b class='link'>ext.MessageBox#updateProgress</b>
         * and closing the message box when the process is complete.
         * @param title The title bar text
         * @param msg The message box body text
         * @param progressText The text to display inside the progress bar (defaults to '')
         * @return this
         */
        public static native function progress(title : String, msg : String, progressText : String = undefined) : MessageBox;
        /**
         * Displays a message box with an infinitely auto-updating progress bar.  This can be used to block user
         * interaction while waiting for a long-running process to complete that does not have defined intervals.
         * You are responsible for closing the message box when the process is complete.
         * @param msg The message box body text
         * @param title The title bar text
         * @param config A <b class='link'>ext.ProgressBar#waitConfig</b> object
         * @return this
         */
        public static native function wait(msg : String, title : String = undefined, config : Object = undefined) : MessageBox;
        /**
         * Displays a standard read-only message box with an OK button (comparable to the basic JavaScript alert prompt).
         * If a callback function is passed it will be called after the user clicks the button, and the
         * id of the button that was clicked will be passed as the only parameter to the callback
         * (could also be the top-right close button).
         * @param title The title bar text
         * @param msg The message box body text
         * @param fn The callback function invoked after the message box is closed
         * @param scope The scope of the callback function
         * @return this
         */
        public static native function alert(title : String, msg : String, fn : Function = undefined, scope : Object = undefined) : MessageBox;
        /**
         * Displays a confirmation message box with Yes and No buttons (comparable to JavaScript's confirm).
         * If a callback function is passed it will be called after the user clicks either button,
         * and the id of the button that was clicked will be passed as the only parameter to the callback
         * (could also be the top-right close button).
         * @param title The title bar text
         * @param msg The message box body text
         * @param fn The callback function invoked after the message box is closed
         * @param scope The scope of the callback function
         * @return this
         */
        public static native function confirm(title : String, msg : String, fn : Function = undefined, scope : Object = undefined) : MessageBox;
        /**
         * Displays a message box with OK and Cancel buttons prompting the user to enter some text (comparable to JavaScript's prompt).
         * The prompt can be a single-line or multi-line textbox.  If a callback function is passed it will be called after the user
         * clicks either button, and the id of the button that was clicked (could also be the top-right
         * close button) and the text that was entered will be passed as the two parameters to the callback.
         * @param title The title bar text
         * @param msg The message box body text
         * @param fn The callback function invoked after the message box is closed
         * @param scope The scope of the callback function
         * @param multiline True to create a multiline textbox using the defaultTextHeight
         * property, or the height in pixels to create the textbox (defaults to false / single-line)
         * @param value Default value of the text input element (defaults to '')
         * @return this
         */
        public static native function prompt(title : String, msg : String, fn : Function = undefined, scope : Object = undefined, multiline : * = undefined, value : String = undefined) : MessageBox;
        /**
         * Button config that displays a single OK button
         */
        public static var OK  : Object;
        /**
         * Button config that displays a single Cancel button
         */
        public static var CANCEL  : Object;
        /**
         * Button config that displays OK and Cancel buttons
         */
        public static var OKCANCEL  : Object;
        /**
         * Button config that displays Yes and No buttons
         */
        public static var YESNO  : Object;
        /**
         * Button config that displays Yes, No and Cancel buttons
         */
        public static var YESNOCANCEL  : Object;
        /**
         * The CSS class that provides the INFO icon image
         */
        public static var INFO  : String;
        /**
         * The CSS class that provides the WARNING icon image
         */
        public static var WARNING  : String;
        /**
         * The CSS class that provides the QUESTION icon image
         */
        public static var QUESTION  : String;
        /**
         * The CSS class that provides the ERROR icon image
         */
        public static var ERROR  : String;
        /**
         * The default height in pixels of the message box's multiline textarea if displayed (defaults to 75)
         */
        public static var defaultTextHeight  : Number;
        /**
         * The maximum width in pixels of the message box (defaults to 600)
         */
        public static var maxWidth  : Number;
        /**
         * The minimum width in pixels of the message box (defaults to 110)
         */
        public static var minWidth  : Number;
        /**
         * The minimum width in pixels of the message box if it is a progress-style dialog.  This is useful
         * for setting a different minimum width than text-only dialogs may need (defaults to 250)
         */
        public static var minProgressWidth  : Number;
        /**
         * An object containing the default button text strings that can be overriden for localized language support.
         * Supported properties are: ok, cancel, yes and no.  Generally you should include a locale-specific
         * resource file for handling language support across the framework.
         * Customize the default text like so: ext.MessageBox.buttonText.yes = "oui"; //french
         */
        public static var buttonText  : Object;
/**
 * Shorthand for <b class='link'>ext.MessageBox</b>
 */
}}
