package ext.form {

import ext.config.textarea;

/**
 * Multiline text field. Can be used as a direct replacement for traditional textarea fields, plus adds support for auto-sizing.
 * <p>This component is created by the xtype 'textarea' / the EXML element &lt;textarea>.</p>
 * @see ext.config.textarea
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextArea.html#cls-Ext.form.TextArea Ext JS source
 */
public class TextArea extends TextField {

  /**
   * Creates a new TextArea
   *
   * @param config Configuration options
   * @see ext.config.textarea
   */
  public function TextArea(config:textarea) {
    super(null);
  }

  /**
   The maximum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>1000</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get growMax():Number;

  /**
   The minimum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>60</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get growMin():Number;

  /**
   <tt>true</tt> to prevent scrollbars from appearing regardless of how much text is in the field. This option is only relevant when <a href="output/Ext.form.TextArea.html#Ext.form.TextArea-grow">grow</a> is <tt>true</tt>. Equivalent to setting overflow: hidden, defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get preventScrollbars():Boolean;

  /**
   * Automatically grows the field to accommodate the height of the text up to the maximum field height allowed. This only takes effect if grow = true, and fires the <a href="output/Ext.form.TextArea.html#Ext.form.TextArea-autosize">autosize</a> event if the height changes.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextArea.html#method-Ext.form.TextArea-autoSize Ext JS source
   */
  override public native function autoSize():void;

}
}
    