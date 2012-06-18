package ext.util {


/**
 * Represents a single sorter that can be applied to a Store
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.sorter
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sorter.html#cls-Ext.util.Sorter Ext JS source
 */
[Native]
public class Sorter {

  /**
   *
   *
   * @see ext.config.sorter
   */
  public function Sorter() {
    super();
  }

  /**
   The direction to sort by. Defaults to ASC
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   The property to sort by. Required unless <a href="output/Ext.util.Sorter.html#Ext.util.Sorter-sorter">sorter</a> is provided
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get property():String;

  /**
   Optional root property. This is mostly useful when sorting a Store, in which case we set the root to 'data' to make the filter pull the <a href="output/Ext.util.Sorter.html#Ext.util.Sorter-property">property</a> out of the data object of each item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get root():String;

  /**
   *
   *
   * @return A function which sorts by the property/direction combination provided
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sorter.html#method-Ext.util.Sorter-createSortFunction Ext JS source
   */
  public native function createSortFunction():Function;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sorter.html#method-Ext.util.Sorter-defaultSorterFn Ext JS source
   */
  public native function defaultSorterFn():void;

  /**
   *
   *
   * @param item The item
   * @return The root property of the object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sorter.html#method-Ext.util.Sorter-getRoot Ext JS source
   */
  public native function getRoot(item:Object):Object;

}
}
    