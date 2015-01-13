package ext.list {
import ext.config.sorter;
import ext.util.Observable;

/**
 * Supporting Class for Ext.list.ListView

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.sorter
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.list.Sorter Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "list.Sorter")]
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
   */
  public native function get sortClasses():Array;

}
}
    