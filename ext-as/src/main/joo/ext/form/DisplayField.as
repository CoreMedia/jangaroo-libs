package ext.form {
import ext.config.displayfield;

/**
 * A display-only text field which is not validated and not submitted.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'displayfield' / the EXML element &lt;displayfield>.</p>
 * @see ext.config.displayfield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DisplayField Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.DisplayField")]
public class DisplayField extends Field {

  /**
   * Creates a new DisplayField.
   *
   * @param config Configuration options
   * @see ext.config.displayfield
   */
  public function DisplayField(config:displayfield) {
    super(null);
  }

  /**
   The default CSS class for the field (defaults to <tt>"x-form-display-field"</tt>)
   */
  override public native function get fieldClass():String;

  /**
   <tt>false</tt> to skip HTML-encoding the text when rendering it (defaults to <tt>false</tt>). This might be useful if you want to include tags in the field's innerHTML rather than rendering them as string literals per the default logic.
   */
  public native function get htmlEncode():Boolean;

}
}
    