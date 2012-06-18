package ext.form {

import ext.config.hiddenfield;

/**
 * Wraps a hidden field. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'hiddenfield' / the EXML element &lt;hiddenfield>.</p>
 * @see ext.config.hiddenfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Hidden.html#cls-Ext.form.Hidden Ext JS source
 */
[Native]
public class Hidden extends Field {

  /**
   * Create a new Hidden.
   *
   * @param config The config object
   * @see ext.config.hiddenfield
   */
  public function Hidden(config:hiddenfield = null) {
    super(null);
  }

}
}
    