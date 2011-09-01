package ext.data {

import ext.form.Number;

/**
 * Simple wrapper class that represents a set of records returned by a Proxy.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.resultset
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ResultSet.html#cls-Ext.data.ResultSet Ext JS source
 */
public class ResultSet {

  /**
   * Creates the new ResultSet
   *
   * @see ext.config.resultset
   */
  public function ResultSet() {
    super();
  }

  /**
   DEPRECATED - will be removed in Ext JS 5.0. This is just a copy of this.total - use that instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ResultSet.html#prop-Ext.data.ResultSet-totalRecords Ext JS source
   */
  public native function get totalRecords():*;

  /**
   * @private
   */
  public native function set totalRecords(value:*):void;

  /**
   The number of records in this ResultSet. Note that total may differ from this number
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get count():ext.form.Number;

  /**
   True if the records have already been loaded. This is only meaningful when dealing with SQL-backed proxies
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loaded():Boolean;

  /**
   The array of record instances. Required
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get records():Array;

  /**
   True if the ResultSet loaded successfully, false if any errors were encountered
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get success():Boolean;

  /**
   The total number of records reported by the data source. This ResultSet may form a subset of those records (see count)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get total():ext.form.Number;

}
}
    