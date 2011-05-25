package ext.grid {
/**
 * A specific <b class='link'>ext.data.Record</b> type that represents a name/value pair and is made to work with the
 * <b class='link'>Ext.grid.PropertyGrid</b>.  Typically, PropertyRecords do not need to be created directly as they can be
 * created implicitly by simply using the appropriate data configs either via the <b class='link'>Ext.grid.PropertyGrid#source</b>
 * config property or by calling <b class='link'>Ext.grid.PropertyGrid#setSource</b>.  However, if the need arises, these records
 * can also be created explicitly as shwon below.  Example usage:
 * <pre><code>
var rec = new Ext.grid.PropertyRecord({
    name: 'Birthday',
    value: new Date(Date.parse('05/26/1972'))
});
// Add record to an already populated grid
grid.store.addSorted(rec);
</code></pre>
*/
public class PropertyRecord {
/**
 * @constructor
 * @param config A data object in the format: {name: [name], value: [value]}.  The specified value's type
 * will be read automatically by the grid to determine the type of editor to use when displaying it.
 */
public native function PropertyRecord(config:Object = null);
}}
