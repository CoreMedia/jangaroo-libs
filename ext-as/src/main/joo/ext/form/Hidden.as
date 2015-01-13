package ext.form {
import ext.config.hidden;

/**
 * A basic hidden field for storing hidden values in forms that need to be passed in the form submit.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'hidden' / the EXML element &lt;hidden>.</p>
 * @see ext.config.hidden
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Hidden Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.Hidden")]
public class Hidden extends Field {

  /**
   * Create a new Hidden field.
   *
   * @param config Configuration options
   * @see ext.config.hidden
   */
  public function Hidden(config:ext.config.hidden) {
    super(null);
  }

}
}
    