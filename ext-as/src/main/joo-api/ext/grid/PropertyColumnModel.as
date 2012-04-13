package ext.grid {
/**
 * A custom column model for the <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>. Generally it should not need to be used directly.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.propertycolumnmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PropertyColumnModel Sencha Docs Ext JS 3.4
 */
public class PropertyColumnModel extends ColumnModel {

  /**
   *
   *
   * @param grid The grid this store will be bound to
   * @param source The source data config object
   * @see ext.config.propertycolumnmodel
   */
  public function PropertyColumnModel(grid:GridPanel, source:Object) {
    super(null);
  }

}
}
    