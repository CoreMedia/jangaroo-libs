package ext.config {


/**
 * Basic text field. Can be used as a direct replacement for traditional text inputs, or as the base class for more sophisticated input controls (like <a href="Ext.form.TextArea.html">Ext.form.TextArea</a> and <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a>).
 <p style="font-weight: bold"><u>Validation</u></p><p>The validation procedure is described in the documentation for <a href="output/Ext.form.TextField.html#Ext.form.TextField-validateValue">validateValue</a>.</p><p style="font-weight: bold"><u>Alter Validation Behavior</u></p><p>Validation behavior for each field can be configured:</p><div class="mdetail-params"><ul><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-invalidText">invalidText</a></code> : the default validation message to show if any validation step above does not provide a message when invalid</li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-maskRe">maskRe</a></code> : filter out keystrokes before any validation occurs</li><li><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-stripCharsRe">stripCharsRe</a></code> : filter characters after being typed in, but before being validated</li><li><code><a href="output/Ext.form.Field.html#Ext.form.Field-invalidClass">invalidClass</a></code> : alternate style when invalid</li><li><code><a href="output/Ext.form.Field.html#Ext.form.Field-validateOnBlur">validateOnBlur</a></code>, <code><a href="output/Ext.form.Field.html#Ext.form.Field-validationDelay">validationDelay</a></code>, and <code><a href="output/Ext.form.Field.html#Ext.form.Field-validationEvent">validationEvent</a></code> : modify how/when validation is triggered</li></ul></div>
 * <p>This class serves as a typed config object for constructor of class TextField.</p>
 *
 * @see ext.form.TextField
 */
[ExtConfig(target="ext.form.TextField", xtype="textfield")]
public class textfield extends field {

  public function textfield(config:Object = null) {

    super(config);
  }


  /**
   Specify <tt>false</tt> to validate that the value's length is &gt; 0 (defaults to <tt>true</tt>)
   */
  public native function get allowBlank():Boolean;

  /**
   * @private
   */
  public native function set allowBlank(value:Boolean):void;

  /**
   The error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-allowBlank">allowBlank</a></tt></b> validation fails (defaults to <tt>'This field is required'</tt>)
   */
  public native function get blankText():String;

  /**
   * @private
   */
  public native function set blankText(value:String):void;

  /**
   Specify <tt>true</tt> to disable input keystroke filtering (defaults to <tt>false</tt>)
   */
  public native function get disableKeyFilter():Boolean;

  /**
   * @private
   */
  public native function set disableKeyFilter(value:Boolean):void;

  /**
   The CSS class to apply to an empty field to style the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-emptyText">emptyText</a></tt></b> (defaults to <tt>'x-form-empty-field'</tt>). This class is automatically added and removed as needed depending on the current field value.
   */
  public native function get emptyClass():String;

  /**
   * @private
   */
  public native function set emptyClass(value:String):void;

  /**
   The default text to place into an empty field (defaults to <tt>null</tt>). <b>Note</b>: that this value will be submitted to the server if this field is enabled and configured with a <a href="output/Ext.form.TextField.html#Ext.form.TextField-name">name</a>.
   */
  public native function get emptyText():String;

  /**
   * @private
   */
  public native function set emptyText(value:String):void;

  /**
   <tt>true</tt> to enable the proxying of key events for the HTML input field (defaults to <tt>false</tt>)
   */
  public native function get enableKeyEvents():Boolean;

  /**
   * @private
   */
  public native function set enableKeyEvents(value:Boolean):void;

  /**
   <tt>true</tt> if this field should automatically grow and shrink to its content (defaults to <tt>false</tt>)
   */
  public native function get grow():Boolean;

  /**
   * @private
   */
  public native function set grow(value:Boolean):void;

  /**
   The maximum width to allow when <code><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a></b> = true</code> (defaults to <tt>800</tt>)
   */
  public native function get growMax():Number;

  /**
   * @private
   */
  public native function set growMax(value:Number):void;

  /**
   The minimum width to allow when <code><b><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a></b> = true</code> (defaults to <tt>30</tt>)
   */
  public native function get growMin():Number;

  /**
   * @private
   */
  public native function set growMin(value:Number):void;

  /**
   An input mask regular expression that will be used to filter keystrokes that do not match (defaults to <tt>null</tt>). The maskRe will not operate on any paste events.
   */
  public native function get maskRe():RegExp;

  /**
   * @private
   */
  public native function set maskRe(value:RegExp):void;

  /**
   Maximum input field length allowed by validation (defaults to Number.MAX_VALUE). This behavior is intended to provide instant feedback to the user by improving usability to allow pasting and editing or overtyping and back tracking. To restrict the maximum number of characters that can be entered into the field use <tt><b><a href="output/Ext.form.Field.html#Ext.form.Field-autoCreate">autoCreate</a></b></tt> to add any attributes you want to a field, for example:<pre><code>var myField = new Ext.form.NumberField({
   id: 'mobile',
   anchor:'90%',
   fieldLabel: 'Mobile',
   maxLength: 16, // for validation
   autoCreate: {tag: 'input', type: 'text', size: '20', autocomplete: 'off', maxlength: '10'}
   });
   </code></pre>
   */
  public native function get maxLength():Number;

  /**
   * @private
   */
  public native function set maxLength(value:Number):void;

  /**
   Error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-maxLength">maximum length</a></tt></b> validation fails (defaults to <tt>'The maximum length for this field is {maxLength}'</tt>)
   */
  public native function get maxLengthText():String;

  /**
   * @private
   */
  public native function set maxLengthText(value:String):void;

  /**
   Minimum input field length required (defaults to <tt>0</tt>)
   */
  public native function get minLength():Number;

  /**
   * @private
   */
  public native function set minLength(value:Number):void;

  /**
   Error text to display if the <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-minLength">minimum length</a></tt></b> validation fails (defaults to <tt>'The minimum length for this field is {minLength}'</tt>)
   */
  public native function get minLengthText():String;

  /**
   * @private
   */
  public native function set minLengthText(value:String):void;

  /**
   A JavaScript RegExp object to be tested against the field value during validation (defaults to <tt>null</tt>). If the test fails, the field will be marked invalid using <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-regexText">regexText</a></tt></b>.
   */
  public native function get regex():RegExp;

  /**
   * @private
   */
  public native function set regex(value:RegExp):void;

  /**
   The error text to display if <b><tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-regex">regex</a></tt></b> is used and the test fails during validation (defaults to <tt>''</tt>)
   */
  public native function get regexText():String;

  /**
   * @private
   */
  public native function set regexText(value:String):void;

  /**
   <tt>true</tt> to automatically select any existing field text when the field receives input focus (defaults to <tt>false</tt>)
   */
  public native function get selectOnFocus():Boolean;

  /**
   * @private
   */
  public native function set selectOnFocus(value:Boolean):void;

  /**
   A JavaScript RegExp object used to strip unwanted content from the value before validation (defaults to <tt>null</tt>).
   */
  public native function get stripCharsRe():RegExp;

  /**
   * @private
   */
  public native function set stripCharsRe(value:RegExp):void;

  /**
   A custom validation function to be called during field validation (<a href="output/Ext.form.TextField.html#Ext.form.TextField-validateValue">validateValue</a>) (defaults to <tt>null</tt>). If specified, this function will be called first, allowing the developer to override the default validation process.
   <br/><p>This function will be passed the following Parameters:</p><div class="mdetail-params"><ul><li><code>value</code>: <i>Mixed</i> <div class="sub-desc">The current field value</div></li></ul></div><br/><p>This function is to Return:</p><div class="mdetail-params"><ul><li><code>true</code>: <i>Boolean</i> <div class="sub-desc"><code>true</code> if the value is valid</div></li><li><code>msg</code>: <i>String</i> <div class="sub-desc">An error message if the value is invalid</div></li></ul></div>
   */
  public native function get validator():Function;

  /**
   * @private
   */
  public native function set validator(value:Function):void;

  /**
   A validation type name as defined in <a href="Ext.form.VTypes.html">Ext.form.VTypes</a> (defaults to <tt>null</tt>)
   */
  public native function get vtype():String;

  /**
   * @private
   */
  public native function set vtype(value:String):void;

  /**
   A custom error message to display in place of the default message provided for the <b><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code></b> currently set for this field (defaults to <tt>''</tt>). <b>Note</b>: only applies if <b><code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code></b> is set, else ignored.
   */
  public native function get vtypeText():String;

  /**
   * @private
   */
  public native function set vtypeText(value:String):void;


}
}
    