package ext.config {

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
 * <p>This class represents the xtype 'datepicker' and serves as a
 * typed config object for constructor of class DatePicker.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.DatePicker
 */
[ExtConfig(target="ext.DatePicker", xtype="datepicker")]
public class datepicker extends picker {

  public function datepicker(config:Object = null) {

    super(config);
  }


  /**
   The label to show for the day column. Defaults to 'Day'.
   */
  public native function get dayText():String;

  /**
   * @private
   */
  public native function set dayText(value:String):void;

  /**
   The label to show for the month column. Defaults to 'Month'.
   */
  public native function get monthText():String;

  /**
   * @private
   */
  public native function set monthText(value:String):void;

  /**
   An array of strings that specifies the order of the slots. Defaults to <tt>['month', 'day', 'year']</tt>.
   */
  public native function get slotOrder():Array;

  /**
   * @private
   */
  public native function set slotOrder(value:Array):void;

  /**
   Default value for the field and the internal <a href="Ext.DatePicker.html">Ext.DatePicker</a> component. Accepts an object of 'year', 'month' and 'day' values, all of which should be numbers, or a <a href="Date.html">Date</a>. Examples: {year: 1989, day: 1, month: 5} = 1st May 1989. new Date() = current date
   */
  public native function get value():*;

  /**
   * @private
   */
  public native function set value(value:*):void;

  /**
   The start year for the date picker. Defaults to 1980
   */
  public native function get yearFrom():ext.form.Number;

  /**
   * @private
   */
  public native function set yearFrom(value:ext.form.Number):void;

  /**
   The label to show for the year column. Defaults to 'Year'.
   */
  public native function get yearText():String;

  /**
   * @private
   */
  public native function set yearText(value:String):void;

  /**
   The last year for the date picker. Defaults to the current year.
   */
  public native function get yearTo():ext.form.Number;

  /**
   * @private
   */
  public native function set yearTo(value:ext.form.Number):void;


}
}
    