package ext.form {

import ext.DatePicker;
import ext.config.datepickerfield;

/**
 * Fires when a date is selected
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.DatePicker</code>

 *       </li>

 *       <li>
 *           <code>date:Date</code>
 The new date
 *       </li>

 * </ul>
 */
[Event(name="change")]


/**
 * Specialized field which has a button which when pressed, shows a <a href="Ext.DatePicker.html">Ext.DatePicker</a>.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'datepickerfield' / the EXML element &lt;datepickerfield>.</p>
 * @see ext.config.datepickerfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#cls-Ext.form.DatePicker Ext JS source
 */
public class DatePicker extends Field {

  /**
   * Create a new DatePicker.
   *
   * @param config The config object
   * @see ext.config.datepickerfield
   */
  public function DatePicker(config:datepickerfield = null) {
    super(null);
  }

  /**
   Whether or not to destroy the picker widget on hide. This save memory if it's not used frequently, but increase delay time on the next show due to re-instantiation. Defaults to false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get destroyPickerOnHide():Boolean;

  /**
   An object that is used when creating the internal <a href="Ext.DatePicker.html">Ext.DatePicker</a> component or a direct instance of <a href="Ext.DatePicker.html">Ext.DatePicker</a> Defaults to null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get picker():*;

  /**
   Default value for the field and the internal <a href="Ext.DatePicker.html">Ext.DatePicker</a> component. Accepts an object of 'year', 'month' and 'day' values, all of which should be numbers, or a <a href="Date.html">Date</a>. Example: {year: 1989, day: 1, month: 5} = 1st May 1989 or new Date()
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get value():*;

  /**
   * Get an instance of the internal date picker; will create a new instance if not exist.
   *
   * @return datePicker
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#method-Ext.form.DatePicker-getDatePicker Ext JS source
   */
  public native function getDatePicker():ext.DatePicker;

  /**
   * Returns the value of the field, which will be a <a href="Date.html">Date</a> unless the <tt>format</tt> parameter is true.
   *
   * @param format True to format the value with <tt>Ext.util.Format.defaultDateFormat</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#method-Ext.form.DatePicker-getValue Ext JS source
   */
  public native function getValueDatePicker(format:Boolean):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#method-Ext.form.DatePicker-onMaskTap Ext JS source
   */
  public native function onMaskTap():void;

  /**
   * Called when the picker changes its value
   *
   * @param picker The date picker
   * @param value The new value from the date picker
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#method-Ext.form.DatePicker-onPickerChange Ext JS source
   */
  public native function onPickerChange(picker:ext.DatePicker, value:Object):void;

  /**
   * Destroys the picker when it is hidden, if <a href="output/Ext.form.DatePicker.html#Ext.form.DatePicker-destroyPickerOnHide">destroyPickerOnHide</a> is set to true
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DatePicker1.html#method-Ext.form.DatePicker-onPickerHide Ext JS source
   */
  public native function onPickerHide():void;

}
}
    