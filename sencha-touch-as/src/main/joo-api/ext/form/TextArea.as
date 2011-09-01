package ext.form {

import ext.config.textareafield;

/**
 * Wraps a textarea. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'textareafield' / the EXML element &lt;textareafield>.</p>
 * @see ext.config.textareafield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextArea.html#cls-Ext.form.TextArea Ext JS source
 */
public class TextArea extends Text {

  /**
   * Create a new TextArea.
   *
   * @param config The config object
   * @see ext.config.textareafield
   */
  public function TextArea(config:textareafield = null) {
    super(null);
  }

  /**
   The maximum number of lines made visible by the input.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxRows():int;

}
}
    