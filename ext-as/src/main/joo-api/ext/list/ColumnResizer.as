package ext.list {

import ext.config.columnresizer;
import ext.util.Observable;

/**
 * Supporting Class for Ext.list.ListView

 * @see ext.config.columnresizer
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnResizer.html#cls-Ext.list.ColumnResizer Ext JS source
 */
public class ColumnResizer extends Observable {

  /**
   *
   *
   * @param config
   * @see ext.config.columnresizer
   */
  public function ColumnResizer(config:columnresizer) {
    super();
  }

  /**
   The minimum percentage to allot for any column (defaults to <tt>.05</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minPct():Number;

}
}
    