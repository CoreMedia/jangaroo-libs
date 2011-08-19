package ext.config {


/**
 * A display-only text field which is not validated and not submitted.
 *
 * <p>This class represents the xtype 'displayfield' and serves as a
 * typed config object for constructor of class DisplayField.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.DisplayField
 */
[ExtConfig(target="ext.form.DisplayField", xtype="displayfield")]
public class displayfield extends field {

  public function displayfield(config:Object = null) {

    super(config);
  }


  /**
   The default CSS class for the field (defaults to <tt>"x-form-display-field"</tt>)
   */
  override public native function get fieldClass():String;

  /**
   * @private
   */
  override public native function set fieldClass(value:String):void;

  /**
   <tt>false</tt> to skip HTML-encoding the text when rendering it (defaults to <tt>false</tt>). This might be useful if you want to include tags in the field's innerHTML rather than rendering them as string literals per the default logic.
   */
  public native function get htmlEncode():Boolean;

  /**
   * @private
   */
  public native function set htmlEncode(value:Boolean):void;


}
}
    