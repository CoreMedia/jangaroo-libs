package ext.form {

import ext.config.passwordfield;

/**
 * Wraps an HTML5 password field. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'passwordfield' / the EXML element &lt;passwordfield>.</p>
 * @see ext.config.passwordfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Password.html#cls-Ext.form.Password Ext JS source
 */
[Native]
public class Password extends Text {

  /**
   * Create a new Password.
   *
   * @param config The config object
   * @see ext.config.passwordfield
   */
  public function Password(config:passwordfield = null) {
    super(null);
  }

}
}
    