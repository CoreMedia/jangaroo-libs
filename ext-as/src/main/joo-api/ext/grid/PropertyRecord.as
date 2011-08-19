package ext.grid {


/**
 * A specific <a href="Ext.data.Record.html">Ext.data.Record</a> type that represents a name/value pair and is made to work with the <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>. Typically, PropertyRecords do not need to be created directly as they can be created implicitly by simply using the appropriate data configs either via the <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-source">Ext.grid.PropertyGrid.source</a> config property or by calling <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-setSource">Ext.grid.PropertyGrid.setSource</a>. However, if the need arises, these records can also be created explicitly as shown below. Example usage: <pre><code>var rec = new Ext.grid.PropertyRecord({
 name: 'Birthday',
 value: new Date(Date.parse('05/26/1972'))
 });
 // Add record to an already populated grid
 grid.store.addSorted(rec);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#cls-Ext.grid.PropertyRecord Ext JS source
 */
public class PropertyRecord {

  /**
   *
   *
   * @param config A data object in the format: {name: [name], value: [value]}. The specified value's type will be read automatically by the grid to determine the type of editor to use when displaying it.
   */
  public function PropertyRecord(config:Object) {
    super();
  }

}
}
    