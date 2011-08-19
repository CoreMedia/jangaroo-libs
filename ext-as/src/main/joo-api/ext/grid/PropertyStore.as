package ext.grid {
import ext.util.Observable;

/**
 * A custom wrapper for the <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>'s <a href="Ext.data.Store.html">Ext.data.Store</a>. This class handles the mapping between the custom data source objects supported by the grid and the <a href="Ext.grid.PropertyRecord.html">Ext.grid.PropertyRecord</a> format required for compatibility with the underlying store. Generally this class should not need to be used directly -- the grid's data should be accessed from the underlying store via the <a href="output/Ext.grid.PropertyStore.html#Ext.grid.PropertyStore-store">store</a> property.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.propertystore
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#cls-Ext.grid.PropertyStore Ext JS source
 */
public class PropertyStore extends Observable {

  /**
   *
   *
   * @param grid The grid this store will be bound to
   * @param source The source data config object
   * @see ext.config.propertystore
   */
  public function PropertyStore(grid:GridPanel, source:Object) {
    super();
  }

}
}
    