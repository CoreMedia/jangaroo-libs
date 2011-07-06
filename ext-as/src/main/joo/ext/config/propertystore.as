package ext.config {


/**
 * A custom wrapper for the <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>'s <a href="Ext.data.Store.html">Ext.data.Store</a>. This class handles the mapping between the custom data source objects supported by the grid and the <a href="Ext.grid.PropertyRecord.html">Ext.grid.PropertyRecord</a> format required for compatibility with the underlying store. Generally this class should not need to be used directly -- the grid's data should be accessed from the underlying store via the <a href="output/Ext.grid.PropertyStore.html#Ext.grid.PropertyStore-store">store</a> property.
 * <p>This class serves as a typed config object for constructor of class PropertyStore.</p>
 *
 * @see ext.grid.PropertyStore
 */
[ExtConfig(target="ext.grid.PropertyStore")]
public class propertystore extends observable {

  public function propertystore(config:Object = null) {

    super(config);
  }


}
}
    