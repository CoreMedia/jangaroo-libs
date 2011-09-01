package ext.config {


/**
 * Simple Checkbox class. Can be used as a direct replacement for traditional checkbox fields.
 *
 * <p>This class represents the xtype 'checkboxfield' and serves as a
 * typed config object for constructor of class Checkbox.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Checkbox
 */
[ExtConfig(target="ext.form.Checkbox", xtype="checkboxfield")]
public class checkboxfield extends field {

  public function checkboxfield(config:Object = null) {

    super(config);
  }


  /**
   <tt>true</tt> if the checkbox should render initially checked (defaults to <tt>false</tt>)
   */
  public native function get checked():Boolean;

  /**
   * @private
   */
  public native function set checked(value:Boolean):void;

  /**
   The string value to submit if the item is in a checked state.
   */
  override public native function get value():*;

  /**
   * @private
   */
  override public native function set value(value:*):void;


}
}
    