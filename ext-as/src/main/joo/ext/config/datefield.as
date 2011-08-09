package ext.config {


/**
 * Provides a date input field with a <a href="Ext.DatePicker.html">Ext.DatePicker</a> dropdown and automatic date validation.
 * <p>This class serves as a typed config object for constructor of class DateField.</p>
 *
 * @see ext.form.DateField
 */
[ExtConfig(target="ext.form.DateField", xtype="datefield")]
public class datefield extends trigger {

  public function datefield(config:Object = null) {

    super(config);
  }


  /**
   Multiple date formats separated by "<tt>|</tt>" to try when parsing a user input value and it does not match the defined format (defaults to <tt>'m/d/Y|n/j/Y|n/j/y|m/j/y|n/d/y|m/j/Y|n/d/Y|m-d-y|m-d-Y|m/d|m-d|md|mdy|mdY|d|Y-m-d|n-j|n/j'</tt>).
   */
  public native function get altFormats():String;

  /**
   * @private
   */
  public native function set altFormats(value:String):void;

  /**
   A <a href="Ext.DomHelper.html">DomHelper element specification object</a>, or <tt>true</tt> for the default element specification object:<pre><code>autoCreate: {tag: "input", type: "text", size: "10", autocomplete: "off"}
   </code></pre>
   */
  override public native function get autoCreate():*;

  /**
   * @private
   */
  override public native function set autoCreate(value:*):void;

  /**
   An array of "dates" to disable, as strings. These strings will be used to build a dynamic regular expression so they are very powerful. Some examples:<pre><code>// disable these exact dates:
   disabledDates: ["03/08/2003", "09/16/2003"]
   // disable these days for every year:
   disabledDates: ["03/08", "09/16"]
   // only match the beginning (useful if you are using short years):
   disabledDates: ["^03/08"]
   // disable every day in March 2006:
   disabledDates: ["03/../2006"]
   // disable every day in every March:
   disabledDates: ["^03"]
   </code></pre>Note that the format of the dates included in the array should exactly match the <a href="output/Ext.form.DateField.html#Ext.form.DateField-format">format</a> config. In order to support regular expressions, if you are using a <a href="output/Ext.form.DateField.html#Ext.form.DateField-format">date format</a> that has "." in it, you will have to escape the dot when restricting dates. For example: <tt>["03\\.08\\.03"]</tt>.
   */
  public native function get disabledDates():Array;

  /**
   * @private
   */
  public native function set disabledDates(value:Array):void;

  /**
   The tooltip text to display when the date falls on a disabled date (defaults to <tt>'Disabled'</tt>)
   */
  public native function get disabledDatesText():String;

  /**
   * @private
   */
  public native function set disabledDatesText(value:String):void;

  /**
   An array of days to disable, 0 based (defaults to null). Some examples:<pre><code>// disable Sunday and Saturday:
   disabledDays:  [0, 6]
   // disable weekdays:
   disabledDays: [1,2,3,4,5]
   </code></pre>
   */
  public native function get disabledDays():Array;

  /**
   * @private
   */
  public native function set disabledDays(value:Array):void;

  /**
   The tooltip to display when the date falls on a disabled day (defaults to <tt>'Disabled'</tt>)
   */
  public native function get disabledDaysText():String;

  /**
   * @private
   */
  public native function set disabledDaysText(value:String):void;

  /**
   The default date format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to <tt>'m/d/Y'</tt>).
   */
  public native function get format():String;

  /**
   * @private
   */
  public native function set format(value:String):void;

  /**
   The error text to display when the date in the field is invalid (defaults to <tt>'{value} is not a valid date - it must be in the format {format}'</tt>).
   */
  override public native function get invalidText():String;

  /**
   * @private
   */
  override public native function set invalidText(value:String):void;

  /**
   The error text to display when the date in the cell is after <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-maxValue">maxValue</a></tt> (defaults to <tt>'The date in this field must be before {maxValue}'</tt>).
   */
  public native function get maxText():String;

  /**
   * @private
   */
  public native function set maxText(value:String):void;

  /**
   The maximum allowed date. Can be either a Javascript date object or a string date in a valid format (defaults to null).
   */
  public native function get maxValue():*;

  /**
   * @private
   */
  public native function set maxValue(value:*):void;

  /**
   The error text to display when the date in the cell is before <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-minValue">minValue</a></tt> (defaults to <tt>'The date in this field must be after {minValue}'</tt>).
   */
  public native function get minText():String;

  /**
   * @private
   */
  public native function set minText(value:String):void;

  /**
   The minimum allowed date. Can be either a Javascript date object or a string date in a valid format (defaults to null).
   */
  public native function get minValue():*;

  /**
   * @private
   */
  public native function set minValue(value:*):void;

  /**
   <tt>false</tt> to hide the footer area of the DatePicker containing the Today button and disable the keyboard handler for spacebar that selects the current date (defaults to <tt>true</tt>).
   */
  public native function get showToday():Boolean;

  /**
   * @private
   */
  public native function set showToday(value:Boolean):void;

  /**
   Day index at which the week should begin, 0-based (defaults to 0, which is Sunday)
   */
  public native function get startDay():Number;

  /**
   * @private
   */
  public native function set startDay(value:Number):void;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified (defaults to <tt>'x-form-date-trigger'</tt> which displays a calendar icon).
   */
  override public native function get triggerClass():String;

  /**
   * @private
   */
  override public native function set triggerClass(value:String):void;


}
}
    