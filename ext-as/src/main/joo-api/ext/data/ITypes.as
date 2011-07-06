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
 * <p>This interface defines the type of the singleton Types.</p>
 * @see ext.data.#Types ext.data.Types
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#cls-Ext.data.Types Ext JS source
 */
public interface ITypes {

  /**
   This data type means that no conversion is applied to the raw data before it is placed into a Record.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-AUTO Ext JS source
   */
  function get AUTO():Object;

  /**
   This data type means that the raw data is converted into a boolean before it is placed into a Record. The string "true" and the number 1 are converted to boolean <code>true</code>.
   <p>The synonym <code>BOOLEAN</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-BOOL Ext JS source
   */
  function get BOOL():Object;

  /**
   This data type means that the raw data is converted into a boolean before it is placed into a Record. The string "true" and the number 1 are converted to boolean <code>true</code>.
   <p>The synonym <code>BOOL</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-BOOLEAN Ext JS source
   */
  function get BOOLEAN():Object;

  /**
   This data type means that the raw data is converted into a Date before it is placed into a Record. The date format is specified in the constructor of the <a href="Ext.data.Field.html">Ext.data.Field</a> to which this type is being applied.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-DATE Ext JS source
   */
  function get DATE():Object;

  /**
   This data type means that the raw data is converted into a number before it is placed into a Record. <p>The synonym <code>NUMBER</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-FLOAT Ext JS source
   */
  function get FLOAT():Object;

  /**
   This data type means that the raw data is converted into an integer before it is placed into a Record. <p>The synonym <code>INTEGER</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-INT Ext JS source
   */
  function get INT():Object;

  /**
   This data type means that the raw data is converted into an integer before it is placed into a Record. <p>The synonym <code>INT</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-INTEGER Ext JS source
   */
  function get INTEGER():Object;

  /**
   This data type means that the raw data is converted into a number before it is placed into a Record. <p>The synonym <code>FLOAT</code> is equivalent.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-NUMBER Ext JS source
   */
  function get NUMBER():Object;

  /**
   This data type means that the raw data is converted into a String before it is placed into a Record.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-STRING Ext JS source
   */
  function get STRING():Object;

  /**
   A regular expression for stripping non-numeric characters from a numeric value. Defaults to <tt>/[\$,%]/g</tt>. This should be overridden for localization.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Types.html#prop-Ext.data.Types-stripRe Ext JS source
   */
  function get stripRe():RegExp;

  /**
   * @private
   */
  function set stripRe(value:RegExp):void;

}
}
    