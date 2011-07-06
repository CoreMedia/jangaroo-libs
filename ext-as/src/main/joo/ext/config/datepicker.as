package ext.config {


/**
 * A popup date picker. This class is used by the <a href="Ext.form.DateField.html">DateField</a> class to allow browsing and selection of valid dates.
 <p>All the string values documented below may be overridden by including an Ext locale file in your page.</p>
 * <p>This class serves as a typed config object for constructor of class DatePicker.</p>
 *
 * @see ext.DatePicker
 */
[ExtConfig(target="ext.DatePicker")]
public class datepicker extends component {

  public function datepicker(config:Object = null) {

    super(config);
  }


  /**
   The text to display on the cancel button (defaults to <code>'Cancel'</code>)
   */
  public native function get cancelText():String;

  /**
   * @private
   */
  public native function set cancelText(value:String):void;

  /**
   An array of textual day names which can be overridden for localization support (defaults to Date.dayNames)
   */
  public native function get dayNames():Array;

  /**
   * @private
   */
  public native function set dayNames(value:Array):void;

  /**
   An array of 'dates' to disable, as strings. These strings will be used to build a dynamic regular expression so they are very powerful. Some examples: <ul><li>['03/08/2003', '09/16/2003'] would disable those exact dates</li><li>['03/08', '09/16'] would disable those days for every year</li><li>['^03/08'] would only match the beginning (useful if you are using short years)</li><li>['03/../2006'] would disable every day in March 2006</li><li>['^03'] would disable every day in every March</li></ul>Note that the format of the dates included in the array should exactly match the <a href="output/Ext.DatePicker.html#Ext.DatePicker-format">format</a> config. In order to support regular expressions, if you are using a date format that has '.' in it, you will have to escape the dot when restricting dates. For example: ['03\\.08\\.03'].
   */
  public native function get disabledDates():Array;

  /**
   * @private
   */
  public native function set disabledDates(value:Array):void;

  /**
   JavaScript regular expression used to disable a pattern of dates (defaults to null). The <a href="output/Ext.DatePicker.html#Ext.DatePicker-disabledDates">disabledDates</a> config will generate this regex internally, but if you specify disabledDatesRE it will take precedence over the disabledDates value.
   */
  public native function get disabledDatesRE():RegExp;

  /**
   * @private
   */
  public native function set disabledDatesRE(value:RegExp):void;

  /**
   The tooltip text to display when the date falls on a disabled date (defaults to <code>'Disabled'</code>)
   */
  public native function get disabledDatesText():String;

  /**
   * @private
   */
  public native function set disabledDatesText(value:String):void;

  /**
   An array of days to disable, 0-based. For example, [0, 6] disables Sunday and Saturday (defaults to null).
   */
  public native function get disabledDays():Array;

  /**
   * @private
   */
  public native function set disabledDays(value:Array):void;

  /**
   The tooltip to display when the date falls on a disabled day (defaults to <code>'Disabled'</code>)
   */
  public native function get disabledDaysText():String;

  /**
   * @private
   */
  public native function set disabledDaysText(value:String):void;

  /**
   The default date format string which can be overridden for localization support. The format must be valid according to <a href="output/Date.html#Date-parseDate">Date.parseDate</a> (defaults to <code>'m/d/y'</code>).
   */
  public native function get format():String;

  /**
   * @private
   */
  public native function set format(value:String):void;

  /**
   A function that will handle the select event of this picker. The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>picker</code> : DatePicker<div class="sub-desc">This DatePicker.</div></li><li><code>date</code> : Date<div class="sub-desc">The selected date.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   Maximum allowable date (JavaScript date object, defaults to null)
   */
  public native function get maxDate():Date;

  /**
   * @private
   */
  public native function set maxDate(value:Date):void;

  /**
   The error text to display if the maxDate validation fails (defaults to <code>'This date is after the maximum date'</code>)
   */
  public native function get maxText():String;

  /**
   * @private
   */
  public native function set maxText(value:String):void;

  /**
   Minimum allowable date (JavaScript date object, defaults to null)
   */
  public native function get minDate():Date;

  /**
   * @private
   */
  public native function set minDate(value:Date):void;

  /**
   The error text to display if the minDate validation fails (defaults to <code>'This date is before the minimum date'</code>)
   */
  public native function get minText():String;

  /**
   * @private
   */
  public native function set minText(value:String):void;

  /**
   An array of textual month names which can be overridden for localization support (defaults to Date.monthNames)
   */
  public native function get monthNames():Array;

  /**
   * @private
   */
  public native function set monthNames(value:Array):void;

  /**
   The header month selector tooltip (defaults to <code>'Choose a month (Control+Up/Down to move years)'</code>)
   */
  public native function get monthYearText():String;

  /**
   * @private
   */
  public native function set monthYearText(value:String):void;

  /**
   The next month navigation button tooltip (defaults to <code>'Next Month (Control+Right)'</code>)
   */
  public native function get nextText():String;

  /**
   * @private
   */
  public native function set nextText(value:String):void;

  /**
   The text to display on the ok button (defaults to <code>' OK '</code> to give the user extra clicking room)
   */
  public native function get okText():String;

  /**
   * @private
   */
  public native function set okText(value:String):void;

  /**
   The previous month navigation button tooltip (defaults to <code>'Previous Month (Control+Left)'</code>)
   */
  public native function get prevText():String;

  /**
   * @private
   */
  public native function set prevText(value:String):void;

  /**
   The scope (<code><b>this</b></code> reference) in which the <code><a href="output/Ext.DatePicker.html#Ext.DatePicker-handler">handler</a></code> function will be called. Defaults to this DatePicker instance.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   False to hide the footer area containing the Today button and disable the keyboard handler for spacebar that selects the current date (defaults to <code>true</code>).
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
   The text to display on the button that selects the current date (defaults to <code>'Today'</code>)
   */
  public native function get todayText():String;

  /**
   * @private
   */
  public native function set todayText(value:String):void;

  /**
   A string used to format the message for displaying in a tooltip over the button that selects the current date. Defaults to <code>'{0} (Spacebar)'</code> where the <code>{0}</code> token is replaced by today's date.
   */
  public native function get todayTip():String;

  /**
   * @private
   */
  public native function set todayTip(value:String):void;


}
}
    