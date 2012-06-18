package ext.form {
import ext.config.datefield;

/**
 * Fires when a date is selected via the date picker.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.DateField</code>

 *       </li>

 *       <li>
 *           <code>date:Date</code>
 The date that was selected
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * Provides a date input field with a <a href="Ext.DatePicker.html">Ext.DatePicker</a> dropdown and automatic date validation.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'datefield' / the EXML element &lt;datefield>.</p>
 * @see ext.config.datefield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField Sencha Docs Ext JS 3.4
 */
[Native]
public class DateField extends TriggerField {

  /**
   * Create a new DateField
   *
   * @param config
   * @see ext.config.datefield
   */
  public function DateField(config:datefield) {
    super(null);
  }

  /**
   Multiple date formats separated by "<tt>|</tt>" to try when parsing a user input value and it does not match the defined format (defaults to <tt>'m/d/Y|n/j/Y|n/j/y|m/j/y|n/d/y|m/j/Y|n/d/Y|m-d-y|m-d-Y|m/d|m-d|md|mdy|mdY|d|Y-m-d|n-j|n/j'</tt>).
   */
  public native function get altFormats():String;

  /**
   A <a href="Ext.DomHelper.html">DomHelper element specification object</a>, or <tt>true</tt> for the default element specification object:<pre><code>autoCreate: {tag: "input", type: "text", size: "10", autocomplete: "off"}
   </code></pre>
   */
  override public native function get autoCreate():*;

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
   The tooltip text to display when the date falls on a disabled date (defaults to <tt>'Disabled'</tt>)
   */
  public native function get disabledDatesText():String;

  /**
   An array of days to disable, 0 based (defaults to null). Some examples:<pre><code>// disable Sunday and Saturday:
   disabledDays:  [0, 6]
   // disable weekdays:
   disabledDays: [1,2,3,4,5]
   </code></pre>
   */
  public native function get disabledDays():Array;

  /**
   The tooltip to display when the date falls on a disabled day (defaults to <tt>'Disabled'</tt>)
   */
  public native function get disabledDaysText():String;

  /**
   The default date format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to <tt>'m/d/Y'</tt>).
   */
  public native function get format():String;

  /**
   The error text to display when the date in the field is invalid (defaults to <tt>'{value} is not a valid date - it must be in the format {format}'</tt>).
   */
  override public native function get invalidText():String;

  /**
   The error text to display when the date in the cell is after <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-maxValue">maxValue</a></tt> (defaults to <tt>'The date in this field must be before {maxValue}'</tt>).
   */
  public native function get maxText():String;

  /**
   The maximum allowed date. Can be either a Javascript date object or a string date in a valid format (defaults to null).
   */
  public native function get maxValue():*;

  /**
   The error text to display when the date in the cell is before <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-minValue">minValue</a></tt> (defaults to <tt>'The date in this field must be after {minValue}'</tt>).
   */
  public native function get minText():String;

  /**
   The minimum allowed date. Can be either a Javascript date object or a string date in a valid format (defaults to null).
   */
  public native function get minValue():*;

  /**
   <tt>false</tt> to hide the footer area of the DatePicker containing the Today button and disable the keyboard handler for spacebar that selects the current date (defaults to <tt>true</tt>).
   */
  public native function get showToday():Boolean;

  /**
   Day index at which the week should begin, 0-based (defaults to 0, which is Sunday)
   */
  public native function get startDay():Number;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified (defaults to <tt>'x-form-date-trigger'</tt> which displays a calendar icon).
   */
  override public native function get triggerClass():String;

  /**
   * Runs all of NumberFields validations and returns an array of any errors. Note that this first runs TextField's validations, so the returned array is an amalgamation of all field errors. The additional validation checks are testing that the date format is valid, that the chosen date is within the min and max date constraints set, that the date chosen is not in the disabledDates regex and that the day chosed is not one of the disabledDays.
   *
   * @param value The value to validate. The processed raw value will be used if nothing is passed
   * @return All validation errors for this field
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-getErrors Sencha Docs Ext JS 3.4
   */
  override public native function getErrors(value:* = null):Array;

  /**
   * Returns the current date value of the date field.
   *
   * @return The date value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-getValue Sencha Docs Ext JS 3.4
   */
  override public native function getValue():*;

  /**
   * Replaces any existing disabled dates with new values and refreshes the DatePicker.
   *
   * @param disabledDates An array of date strings (see the <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-disabledDates">disabledDates</a></tt> config for details on supported values) used to disable a pattern of dates.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-setDisabledDates Sencha Docs Ext JS 3.4
   */
  public native function setDisabledDates(disabledDates:Array):void;

  /**
   * Replaces any existing disabled days (by index, 0-6) with new values and refreshes the DatePicker.
   *
   * @param disabledDays An array of disabled day indexes. See the <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-disabledDays">disabledDays</a></tt> config for details on supported values.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-setDisabledDays Sencha Docs Ext JS 3.4
   */
  public native function setDisabledDays(disabledDays:Array):void;

  /**
   * Replaces any existing <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-maxValue">maxValue</a></tt> with the new value and refreshes the DatePicker.
   *
   * @param value The maximum date that can be selected
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-setMaxValue Sencha Docs Ext JS 3.4
   */
  public native function setMaxValue(value:Date):void;

  /**
   * Replaces any existing <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-minValue">minValue</a></tt> with the new value and refreshes the DatePicker.
   *
   * @param value The minimum date that can be selected
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-setMinValue Sencha Docs Ext JS 3.4
   */
  public native function setMinValue(value:Date):void;

  /**
   * Sets the value of the date field. You can pass a date object or any string that can be parsed into a valid date, using <tt><a href="output/Ext.form.DateField.html#Ext.form.DateField-format">format</a></tt> as the date format, according to the same rules as <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (the default format used is <tt>"m/d/Y"</tt>). <br/>Usage: <pre><code>//All of these calls set the same date value (May 4, 2006)

   //Pass a date object:
   var dt = new Date('5/4/2006');
   dateField.setValue(dt);

   //Pass a date string (default format):
   dateField.setValue('05/04/2006');

   //Pass a date string (custom format):
   dateField.format = 'Y-m-d';
   dateField.setValue('2006-05-04');
   </code></pre>
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-method-setValue Sencha Docs Ext JS 3.4
   */
  override public native function setValue(value:*, flag:Boolean = false):Field;

}
}
    