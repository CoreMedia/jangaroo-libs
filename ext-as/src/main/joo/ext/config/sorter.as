package ext.config {


/**
 * Supporting Class for Ext.list.ListView

 * <p>This class serves as a typed config object for constructor of class Sorter.</p>
 *
 * @see ext.list.Sorter
 */
[ExtConfig(target="ext.list.Sorter")]
public class sorter extends observable {

  public function sorter(config:Object = null) {

    super(config);
  }


  /**
   The CSS classes applied to a header when it is sorted. (defaults to <tt>["sort-asc", "sort-desc"]</tt>)
   */
  public native function get sortClasses():Array;

  /**
   * @private
   */
  public native function set sortClasses(value:Array):void;


}
}
    