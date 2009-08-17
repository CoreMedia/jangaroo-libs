package ext.form {
/**
 * A display-only text field which is not validated and not submitted.
*/
public class DisplayField extends Field {
/**
 * @constructor
 * Creates a new DisplayField.
 * @param config Configuration options
 * @xtype displayfield
 */
  public function DisplayField(config:Object) {
    super(config);
  }

  //public var validationEvent ;
  //public var validateOnBlur ;
  //public var defaultAutoCreate ;
    /**
     * @cfg {String} fieldClass The default CSS class for the field (defaults to <tt>"x-form-display-field"</tt>)
     */
  //public var fieldClass  : String;
    /**
     * @cfg {Boolean} htmlEncode <tt>false</tt> to skip HTML-encoding the text when rendering it (defaults to
     * <tt>false</tt>). This might be useful if you want to include tags in the field's innerHTML rather than
     * rendering them as string literals per the default logic.
     */
    public var htmlEncode : Boolean;
    //protected var initEvents ;
    //override public native function isValid() : void;
    //override public native function validate() : void;
    //override public native function getRawValue() : void;
    //override public native function getValue() : void;
    //override public native function getName() : void;
    //override public native function setRawValue(v) : void;
    //override public native function setValue(v) : void;
    /** 
     * @cfg {String} inputType 
     * @hide
     */
    /** 
     * @cfg {Boolean} disabled 
     * @hide
     */
    /** 
     * @cfg {Boolean} readOnly 
     * @hide
     */
    /** 
     * @cfg {Boolean} validateOnBlur 
     * @hide
     */
    /** 
     * @cfg {Number} validationDelay 
     * @hide
     */
    /** 
     * @cfg {String/Boolean} validationEvent 
     * @hide
     */
}}
