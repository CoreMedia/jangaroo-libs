package ext {

import ext.config.datepicker;
import ext.form.Number;

/**
 * A date picker component which shows a DatePicker on the screen. This class extends from <a href="Ext.Picker.html">Ext.Picker</a> and <a href="Ext.Sheet.html">Ext.Sheet</a> so it is a popup.
 <p>This component has no required properties.</p><h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.DatePicker.html#Ext.DatePicker-yearFrom">yearFrom</a></li><li><a href="output/Ext.DatePicker.html#Ext.DatePicker-yearTo">yearTo</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.DatePicker/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var datePicker = new Ext.DatePicker();
 datePicker.show();
 </code></pre><p>you may want to adjust the <a href="output/Ext.DatePicker.html#Ext.DatePicker-yearFrom">yearFrom</a> and <a href="output/Ext.DatePicker.html#Ext.DatePicker-yearTo">yearTo</a> properties:</p><pre><code>var datePicker = new Ext.DatePicker({
 yearFrom: 2000,
 yearTo  : 2015
 });
 datePicker.show();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'datepicker' / the EXML element &lt;datepicker>.</p>
 * @see ext.config.datepicker
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#cls-Ext.DatePicker Ext JS source
 */
public class DatePicker extends Picker {

  /**
   * Create a new List
   *
   * @param config The config object
   * @see ext.config.datepicker
   */
  public function DatePicker(config:datepicker) {
    super(null);
  }

  /**
   The label to show for the day column. Defaults to 'Day'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dayText():String;

  /**
   The label to show for the month column. Defaults to 'Month'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monthText():String;

  /**
   An array of strings that specifies the order of the slots. Defaults to <tt>['month', 'day', 'year']</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get slotOrder():Array;

  /**
   The start year for the date picker. Defaults to 1980
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get yearFrom():ext.form.Number;

  /**
   The label to show for the year column. Defaults to 'Year'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get yearText():String;

  /**
   The last year for the date picker. Defaults to the current year.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get yearTo():ext.form.Number;

  /**
   * Gets the current value as a Date object
   *
   * @return value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-getValue Ext JS source
   */
  override public native function getValue():Object;

  /**
   * Sets the values of the DatePicker's slots
   *
   * @param values The values in a {name:'value'} format
   * @param animated True to animate setting the values
   * @return this This DatePicker
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker.html#method-Ext.DatePicker-setValue Ext JS source
   */
  override public native function setValue(values:Object, animated:Boolean):Picker;

}
}
    