package ext.data {


/**
 * This is s static class containing the system-supplied data types which may be given to a <a href="Ext.data.Field.html">Field</a>.
 <p>The properties in this class are used as type indicators in the <a href="Ext.data.Field.html">Field</a> class, so to test whether a Field is of a certain type, compare the <a href="output/Ext.data.Field.html#Ext.data.Field-type">type</a> property against properties of this class.</p><p>Developers may add their own application-specific data types to this class. Definition names must be UPPERCASE. each type definition must contain three properties:</p><div class="mdetail-params"><ul><li><code>convert</code> : <i>Function</i><div class="sub-desc">A function to convert raw data values from a data block into the data to be stored in the Field. The function is passed the collowing parameters: <div class="mdetail-params"><ul><li><b>v</b> : Mixed<div class="sub-desc">The data value as read by the Reader, if undefined will use the configured <tt><a href="output/Ext.data.Field.html#Ext.data.Field-defaultValue">defaultValue</a></tt>.</div></li><li><b>rec</b> : Mixed<div class="sub-desc">The data object containing the row as read by the Reader. Depending on the Reader type, this could be an Array (<a href="Ext.data.ArrayReader.html">ArrayReader</a>), an object (<a href="Ext.data.JsonReader.html">JsonReader</a>), or an XML element (<a href="Ext.data.XMLReader.html">XMLReader</a>).</div></li></ul></div></div></li><li><code>sortType</code> : <i>Function</i> <div class="sub-desc">A function to convert the stored data into comparable form, as defined by <a href="Ext.data.SortTypes.html">Ext.data.SortTypes</a>.</div></li><li><code>type</code> : <i>String</i> <div class="sub-desc">A textual data type name.</div></li></ul></div><p>For example, to create a VELatLong field (See the Microsoft Bing Mapping API) containing the latitude/longitude value of a datapoint on a map from a JsonReader data block which contained the properties <code>lat</code> and <code>long</code>, you would define a new data type like this:</p><pre><code>// Add a new Field data type which stores a VELatLong object in the Record.
 Ext.data.Types.VELATLONG = {
 convert: function(v, data) {
 return new VELatLong(data.lat, data.long);
 },
 sortType: function(v) {
 return v.Latitude;  // When sorting, order by latitude
 },
 type: 'VELatLong'
 };
 </code></pre><p>Then, when declaring a Record, use</p><pre><code>var types = Ext.data.Types; // allow shorthand type access
 UnitRecord = Ext.data.Record.create([
 { name: 'unitName', mapping: 'UnitName' },
 { name: 'curSpeed', mapping: 'CurSpeed', type: types.INT },
 { name: 'latitude', mapping: 'lat', type: types.FLOAT },
 { name: 'latitude', mapping: 'lat', type: types.FLOAT },
 { name: 'position', type: types.VELATLONG }
 ]);
 </code></pre>
 * @see ext.data.ITypes
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#cls-Ext.data.Types Ext JS source
 */
public const Types:ITypes;

}
