package ext.list {
import ext.config.columnresizer;
import ext.util.Observable;

/**
 * Supporting Class for Ext.list.ListView

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.columnresizer
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.list.ColumnResizer Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.list.ColumnResizer")]
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
   */
  public native function get minPct():Number;

}
}
    