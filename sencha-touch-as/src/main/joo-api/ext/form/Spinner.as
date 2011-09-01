package ext.form {

import ext.config.spinnerfield;

/**
 * Fires when the value is changed via either spinner buttons
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Spinner</code>

 *       </li>

 *       <li>
 *           <code>value:ext.form.Number</code>

 *       </li>

 *       <li>
 *           <code>direction:String</code>
 'up' or 'down'
 *       </li>

 * </ul>
 */
[Event(name="spin")]

/**
 * Fires when the value is changed via the spinner down button
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Spinner</code>

 *       </li>

 *       <li>
 *           <code>value:ext.form.Number</code>

 *       </li>

 * </ul>
 */
[Event(name="spindown")]

/**
 * Fires when the value is changed via the spinner up button
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Spinner</code>

 *       </li>

 *       <li>
 *           <code>value:ext.form.Number</code>

 *       </li>

 * </ul>
 */
[Event(name="spinup")]


/**
 * Wraps an HTML5 number field. Example usage:
 <pre><code>new Ext.form.Spinner({
 minValue: 0,
 maxValue: 100,
 incrementValue: 2,
 cycle: true
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'spinnerfield' / the EXML element &lt;spinnerfield>.</p>
 * @see ext.config.spinnerfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Spinner.html#cls-Ext.form.Spinner Ext JS source
 */
public class Spinner extends ext.form.Number {

  /**
   * Create a new Spinner.
   *
   * @param config The config object
   * @see ext.config.spinnerfield
   */
  public function Spinner(config:spinnerfield = null) {
    super(null);
  }

  /**
   True if autorepeating should start slowly and accelerate. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get accelerateOnTapHold():Boolean;

  /**
   When set to true, it will loop the values of a minimum or maximum is reached. If the maximum value is reached, the value will be set to the minimum. If the minimum value is reached, the value will be set to the maximum. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cycle():Boolean;

  /**
   True to disable the input field, meaning that only the spinner buttons can be used. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disableInput():Boolean;

  /**
   Value that is added or subtracted from the current value when a spinner is used. Defaults to <tt>1</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get incrementValue():ext.form.Number;

  /**
   The maximum allowed value (defaults to Number.MAX_VALUE)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxValue():ext.form.Number;

  /**
   The minimum allowed value (defaults to Number.NEGATIVE_INFINITY)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minValue():ext.form.Number;

}
}
    