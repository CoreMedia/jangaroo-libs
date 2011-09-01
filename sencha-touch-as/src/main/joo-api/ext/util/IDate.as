package ext.util {

import ext.form.Number;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Date.</p>
 * @see ext.util.#Date ext.util.Date
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Date.html#cls-Ext.util.Date Ext JS source
 */
public interface IDate {

  /**
   * Returns the number of milliseconds between two dates
   *
   * @param dateA
   * @param dateB Defaults to now
   * @return The diff in milliseconds
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Date.html#method-Ext.util.Date-getElapsed Ext JS source
   */
  function getElapsed(dateA:Date, dateB:Date = null):ext.form.Number;

}
}
    