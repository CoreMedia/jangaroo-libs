package ext.form {
import ext.config.timefield;

/**
 * Provides a time input field with a time dropdown and automatic time validation. Example usage: <pre><code>new Ext.form.TimeField({
 minValue: '9:00 AM',
 maxValue: '6:00 PM',
 increment: 30
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'timefield' / the EXML element &lt;timefield>.</p>
 * @see ext.config.timefield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TimeField Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.form.TimeField")]
public class TimeField extends ComboBox {

  /**
   * Create a new TimeField
   *
   * @param config
   * @see ext.config.timefield
   */
  public function TimeField(config:timefield) {
    super(null);
  }

  /**
   Multiple date formats separated by "|" to try when parsing a user input value and it doesn't match the defined format (defaults to 'g:ia|g:iA|g:i a|g:i A|h:i|g:i|H:i|ga|ha|gA|h a|g a|g A|gi|hi|gia|hia|g|H|gi a|hi a|giA|hiA|gi A|hi A').
   */
  public native function get altFormats():String;

  /**
   The default time format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to 'g:i A', e.g., '3:15 PM'). For 24-hour time format try 'H:i' instead.
   */
  public native function get format():String;

  /**
   The number of minutes between each time value in the list (defaults to 15).
   */
  public native function get increment():Number;

  /**
   The error text to display when the time is after maxValue (defaults to 'The time in this field must be equal to or before {0}').
   */
  public native function get maxText():String;

  /**
   The maximum allowed time. Can be either a Javascript date object with a valid time value or a string time in a valid format -- see <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-format">format</a> and <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-altFormats">altFormats</a> (defaults to undefined).
   */
  public native function get maxValue():*;

  /**
   The error text to display when the date in the cell is before minValue (defaults to 'The time in this field must be equal to or after {0}').
   */
  public native function get minText():String;

  /**
   The minimum allowed time. Can be either a Javascript date object with a valid time value or a string time in a valid format -- see <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-format">format</a> and <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-altFormats">altFormats</a> (defaults to undefined).
   */
  public native function get minValue():*;

  /**
   * Replaces any existing <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-maxValue">maxValue</a> with the new time and refreshes the store.
   *
   * @param value The maximum time that can be selected
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TimeField-method-setMaxValue Sencha Docs Ext JS 3.4
   */
  public native function setMaxValue(value:*):void;

  /**
   * Replaces any existing <a href="output/Ext.form.TimeField.html#Ext.form.TimeField-minValue">minValue</a> with the new time and refreshes the store.
   *
   * @param value The minimum time that can be selected
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TimeField-method-setMinValue Sencha Docs Ext JS 3.4
   */
  public native function setMinValue(value:*):void;

}
}
    