package ext.form {


/**
 * A display-only text field which is not validated and not submitted.
 * <p>This component is created by the xtype 'displayfield' / the EXML element &lt;displayfield>.</p>
 * @see ext.config.displayfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DisplayField.html#cls-Ext.form.DisplayField Ext JS source
 */
public class DisplayField extends Field {

  /**
   * Creates a new DisplayField.
   *
   * @param config Configuration options
   * @see ext.config.displayfield
   */
  public function DisplayField(config:Object) {
    super(null);
  }

  /**
   The default CSS class for the field (defaults to <tt>"x-form-display-field"</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get fieldClass():String;

  /**
   <tt>false</tt> to skip HTML-encoding the text when rendering it (defaults to <tt>false</tt>). This might be useful if you want to include tags in the field's innerHTML rather than rendering them as string literals per the default logic.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get htmlEncode():Boolean;

}
}
    