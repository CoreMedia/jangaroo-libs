package ext.list {

import ext.config.sorter;
import ext.util.Observable;

/**
 * Supporting Class for Ext.list.ListView

 * @see ext.config.sorter
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sorter.html#cls-Ext.list.Sorter Ext JS source
 */
public class Sorter extends Observable {

  /**
   *
   *
   * @param config
   * @see ext.config.sorter
   */
  public function Sorter(config:sorter) {
    super();
  }

  /**
   The CSS classes applied to a header when it is sorted. (defaults to <tt>["sort-asc", "sort-desc"]</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get sortClasses():Array;

}
}
    