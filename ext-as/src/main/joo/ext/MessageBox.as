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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.IMessageBox
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.MessageBox Sencha Docs Ext JS 3.4
 */
[Native]
public const MessageBox:IMessageBox;

}
