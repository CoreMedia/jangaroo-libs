package ext.form {

import ext.config.emailfield;

/**
 * Wraps an HTML5 email field. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'emailfield' / the EXML element &lt;emailfield>.</p>
 * @see ext.config.emailfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Email.html#cls-Ext.form.Email Ext JS source
 */
[Native]
public class Email extends Text {

  /**
   * Create a new Email.
   *
   * @param config The config object
   * @see ext.config.emailfield
   */
  public function Email(config:emailfield = null) {
    super(null);
  }

}
}
    