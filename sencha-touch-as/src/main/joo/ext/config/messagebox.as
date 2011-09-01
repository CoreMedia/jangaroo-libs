package ext.config {

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
 * <p>This class represents the xtype 'messagebox' and serves as a
 * typed config object for constructor of class MessageBox.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.MessageBox
 */
[ExtConfig(target="ext.MessageBox", xtype="messagebox")]
public class messagebox extends sheet {

  public function messagebox(config:Object = null) {

    super(config);
  }


  /**
   Component's Base CSS class
   */
  override public native function get componentCls():String;

  /**
   * @private
   */
  override public native function set componentCls(value:String):void;

  /**

   */
  public native function get defaultTextHeight():ext.form.Number;

  /**
   * @private
   */
  public native function set defaultTextHeight(value:ext.form.Number):void;

  /**
   effect when the message box is being displayed (defaults to 'pop')
   */
  override public native function get enterAnimation():*;

  /**
   * @private
   */
  override public native function set enterAnimation(value:*):void;

  /**
   effect when the message box is being hidden (defaults to 'pop')
   */
  override public native function get exitAnimation():*;

  /**
   * @private
   */
  override public native function set exitAnimation(value:*):void;


}
}
    