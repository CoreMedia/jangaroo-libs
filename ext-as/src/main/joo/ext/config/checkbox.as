package ext.config {


/**
 * Single checkbox field. Can be used as a direct replacement for traditional checkbox fields.
 *
 * <p>This class represents the xtype 'checkbox' and serves as a
 * typed config object for constructor of class Checkbox.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Checkbox
 */
[ExtConfig(target="ext.form.Checkbox", xtype="checkbox")]
public class checkbox extends field {

  public function checkbox(config:Object = null) {

    super(config);
  }


  /**
   A DomHelper element spec, or true for a default element spec (defaults to {tag: 'input', type: 'checkbox', autocomplete: 'off'})
   */
  override public native function get autoCreate():*;

  /**
   * @private
   */
  override public native function set autoCreate(value:*):void;

  /**
   The text that appears beside the checkbox
   */
  public native function get boxLabel():String;

  /**
   * @private
   */
  public native function set boxLabel(value:String):void;

  /**
   <tt>true</tt> if the checkbox should render initially checked (defaults to <tt>false</tt>)
   */
  public native function get checked():Boolean;

  /**
   * @private
   */
  public native function set checked(value:Boolean):void;

  /**
   The default CSS class for the checkbox (defaults to 'x-form-field')
   */
  override public native function get fieldClass():String;

  /**
   * @private
   */
  override public native function set fieldClass(value:String):void;

  /**
   The CSS class to use when the checkbox receives focus (defaults to undefined)
   */
  override public native function get focusClass():String;

  /**
   * @private
   */
  override public native function set focusClass(value:String):void;

  /**
   A function called when the <a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-checked">checked</a> value changes (can be used instead of handling the check event). The handler is passed the following parameters: <div class="mdetail-params"><ul><li><b>checkbox</b> : Ext.form.Checkbox<div class="sub-desc">The Checkbox being toggled.</div></li><li><b>checked</b> : Boolean<div class="sub-desc">The new checked state of the checkbox.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   The value that should go into the generated input element's value attribute
   */
  public native function get inputValue():String;

  /**
   * @private
   */
  public native function set inputValue(value:String):void;

  /**
   An object to use as the scope ('this' reference) of the <a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-handler">handler</a> function (defaults to this Checkbox).
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;


}
}
    