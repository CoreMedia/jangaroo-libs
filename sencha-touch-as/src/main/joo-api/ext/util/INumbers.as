package ext.util {

import ext.form.Number;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Numbers.</p>
 * @see ext.util.#Numbers ext.util.Numbers
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Number.html#cls-Ext.util.Numbers Ext JS source
 */
public interface INumbers {

  /**
   * Checks whether or not the current number is within a desired range. If the number is already within the range it is returned, otherwise the min or max value is returned depending on which side of the range is exceeded. Note that this method returns the constrained value but does not change the current number.
   *
   * @param number The number to check
   * @param min The minimum number in the range
   * @param max The maximum number in the range
   * @return The constrained value if outside the range, otherwise the current value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Number.html#method-Ext.util.Numbers-constrain Ext JS source
   */
  function constrain(number:ext.form.Number, min:ext.form.Number, max:ext.form.Number):ext.form.Number;

  /**
   * Formats a number using fixed-point notation
   *
   * @param value The number to format
   * @param precision The number of digits to show after the decimal point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Number.html#method-Ext.util.Numbers-toFixed Ext JS source
   */
  function toFixed(value:ext.form.Number, precision:ext.form.Number):void;

}
}
    