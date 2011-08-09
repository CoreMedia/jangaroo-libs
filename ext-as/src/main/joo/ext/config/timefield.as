package ext.config {


/**
 * Provides a time input field with a time dropdown and automatic time validation. Example usage: <pre><code>new Ext.form.TimeField({
 minValue: '9:00 AM',
 maxValue: '6:00 PM',
 increment: 30
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class TimeField.</p>
 *
 * @see ext.form.TimeField
 */
[ExtConfig(target="ext.form.TimeField", xtype="timefield")]
public class timefield extends combo {

  public function timefield(config:Object = null) {

    super(config);
  }


  /**
   Multiple date formats separated by "|" to try when parsing a user input value and it doesn't match the defined format (defaults to 'g:ia|g:iA|g:i a|g:i A|h:i|g:i|H:i|ga|ha|gA|h a|g a|g A|gi|hi|gia|hia|g|H|gi a|hi a|giA|hiA|gi A|hi A').
   */
  public native function get altFormats():String;

  /**
   * @private
   */
  public native function set altFormats(value:String):void;

  /**
   The default time format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to 'g:i A', e.g., '3:15 PM'). For 24-hour time format try 'H:i' instead.
   */
  public native function get format():String;

  /**
   * @private
   */
  public native function set format(value:String):void;

  /**
   The number of minutes between each time value in the list (defaults to 15).
   */
  public native function get increment():Number;

  /**
   * @private
   */
  public native function set increment(value:Number):void;

  /**
   The error text to display when the time in the field is invalid (defaults to '{value} is not a valid time').
   */
  override public native function get invalidText():String;

  /**
   * @private
   */
  override public native function set invalidText(value:String):void;

  /**
   The error text to display when the time is after maxValue (defaults to 'The time in this field must be equal to or before {0}').
   */
  public native function get maxText():String;

  /**
   * @private
   */
  public native function set maxText(value:String):void;

  /**
   The maximum allowed time. Can be either a Javascript date object with a valid time value or a string time in a valid format -- see <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-format">format</a> and <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-altFormats">altFormats</a> (defaults to undefined).
   */
  public native function get maxValue():*;

  /**
   * @private
   */
  public native function set maxValue(value:*):void;

  /**
   The error text to display when the date in the cell is before minValue (defaults to 'The time in this field must be equal to or after {0}').
   */
  public native function get minText():String;

  /**
   * @private
   */
  public native function set minText(value:String):void;

  /**
   The minimum allowed time. Can be either a Javascript date object with a valid time value or a string time in a valid format -- see <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-format">format</a> and <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-altFormats">altFormats</a> (defaults to undefined).
   */
  public native function get minValue():*;

  /**
   * @private
   */
  public native function set minValue(value:*):void;


}
}
    