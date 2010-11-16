package ext.data {
/**
 * <p>This class encapsulates the field definition information specified in the field definition objects
 * passed to <b class='link'>ext.data.Record#create</b>.</p>
 * <p>Developers do not need to instantiate this class. Instances are created by <b class='link'>ext.data.Record.create</b>
 * and cached in the <b class='link' title='ext.data.Record#fields'>fields</b> property of the created Record constructor's <b>prototype.</b></p>
 */

public class Field {

  public function Field(config : *) {
    config = config+1;
  }

  /**
     * @cfg {String} name
     * The name by which the field is referenced within the Record. This is referenced by, for example,
     * the <code>dataIndex</code> property in column definition objects passed to <b class='link'>Ext.grid.ColumnModel</b>.
     * <p>Note: In the simplest case, if no properties other than <code>name</code> are required, a field
     * definition may consist of just a String for the field name.</p>
     */
    /**
     * @cfg {String} type
     * (Optional) The data type for conversion to displayable value if <code><b class='link' title='ext.data.Field#convert'>convert</b></code>
     * has not been specified. Possible values are
     * <div class="mdetail-params"><ul>
     * <li>auto (Default, implies no conversion)</li>
     * <li>string</li>
     * <li>int</li>
     * <li>float</li>
     * <li>boolean</li>
     * <li>date</li></ul></div>
     */
    /**
     * @cfg {Function} convert
     * (Optional) A function which converts the value provided by the Reader into an object that will be stored
     * in the Record. It is passed the following parameters:<div class="mdetail-params"><ul>
     * <li><b>v</b> : Mixed<div class="sub-desc">The data value as read by the Reader, if undefined will use
     * the configured <code><b class='link' title='ext.data.Field#defaultValue'>defaultValue</b></code>.</div></li>
     * <li><b>rec</b> : Mixed<div class="sub-desc">The data object containing the row as read by the Reader.
     * Depending on the Reader type, this could be an Array (<b class='link' title='ext.data.ArrayReader'>ArrayReader</b>), an object
     *  (<b class='link' title='ext.data.JsonReader'>JsonReader</b>), or an XML element (<b class='link' title='ext.data.XMLReader'>XMLReader</b>).</div></li>
     * </ul></div>
     * <pre><code>
// example of convert function
function fullName(v, record){
    return record.name.last + ', ' + record.name.first;
}

function location(v, record){
    return !record.city ? '' : (record.city + ', ' + record.state);
}

var Dude = ext.data.Record.create([
    {name: 'fullname',  convert: fullName},
    {name: 'firstname', mapping: 'name.first'},
    {name: 'lastname',  mapping: 'name.last'},
    {name: 'city', defaultValue: 'homeless'},
    'state',
    {name: 'location',  convert: location}
]);

// create the data store
var store = new ext.data.Store({
    reader: new ext.data.JsonReader(
        {
            idProperty: 'key',
            root: 'daRoot',
            totalProperty: 'total'
        },
        Dude  // recordType
    )
});

var myData = [
    { key: 1,
      name: { first: 'Fat',    last:  'Albert' }
      // notice no city, state provided in data object
    },
    { key: 2,
      name: { first: 'Barney', last:  'Rubble' },
      city: 'Bedrock', state: 'Stoneridge'
    },
    { key: 3,
      name: { first: 'Cliff',  last:  'Claven' },
      city: 'Boston',  state: 'MA'
    }
];
     * </code></pre>
     */
    /**
     * @cfg {String} dateFormat
     * (Optional) A format string for the <b class='link' title='Date#parseDate'>Date.parseDate</b> function, or "timestamp" if the
     * value provided by the Reader is a UNIX timestamp, or "time" if the value provided by the Reader is a
     * javascript millisecond timestamp.
     */
    public var dateFormat : String;
    /**
     * @cfg {Mixed} defaultValue
     * (Optional) The default value used <b>when a Record is being created by a <b class='link' title='ext.data.Reader'>Reader</b></b>
     * when the item referenced by the <code><b class='link' title='ext.data.Field#mapping'>mapping</b></code> does not exist in the data
     * object (i.e. undefined). (defaults to "")
     */
    public var defaultValue : *;
    /**
     * @cfg {String/Number} mapping
     * <p>(Optional) A path expression for use by the <b class='link'>ext.data.DataReader</b> implementation
     * that is creating the <b class='link' title='ext.data.Record'>Record</b> to extract the Field value from the data object.
     * If the path expression is the same as the field name, the mapping may be omitted.</p>
     * <p>The form of the mapping expression depends on the Reader being used.</p>
     * <div class="mdetail-params"><ul>
     * <li><b class='link'>ext.data.JsonReader</b><div class="sub-desc">The mapping is a string containing the javascript
     * expression to reference the data from an element of the data item's <b class='link' title='ext.data.JsonReader#root'>root</b> Array. Defaults to the field name.</div></li>
     * <li><b class='link'>ext.data.XmlReader</b><div class="sub-desc">The mapping is an <b class='link'>ext.DomQuery</b> path to the data
     * item relative to the DOM element that represents the <b class='link' title='ext.data.XmlReader#record'>record</b>. Defaults to the field name.</div></li>
     * <li><b class='link'>ext.data.ArrayReader</b><div class="sub-desc">The mapping is a number indicating the Array index
     * of the field's value. Defaults to the field specification's Array position.</div></li>
     * </ul></div>
     * <p>If a more complex value extraction strategy is required, then configure the Field with a <b class='link' title='#convert'>convert</b>
     * function. This is passed the whole row object, and may interrogate it in whatever way is necessary in order to
     * return the desired data.</p>
     */
    public var mapping : *;
    /**
     * @cfg {Function} sortType
     * (Optional) A function which converts a Field's value to a comparable value in order to ensure
     * correct sort ordering. Predefined functions are provided in <b class='link'>ext.data.SortTypes</b>. A custom
     * sort example:<pre><code>
// current sort     after sort we want
// +-+------+          +-+------+
// |1|First |          |1|First |
// |2|Last  |          |3|Second|
// |3|Second|          |2|Last  |
// +-+------+          +-+------+

sortType: function(value) {
   switch (value.toLowerCase()) // native toLowerCase():
   {
      case 'first': return 1;
      case 'second': return 2;
      default: return 3;
   }
}
     * </code></pre>
     */
    public var sortType  : Function;
    /**
     * @cfg {String} sortDir
     * (Optional) Initial direction to sort (<code>"ASC"</code> or  <code>"DESC"</code>).  Defaults to
     * <code>"ASC"</code>.
     */
    public var sortDir  : String;
	/**
	 * @cfg {Boolean} allowBlank 
	 * (Optional) Used for validating a <b class='link' title='ext.data.Record'>record</b>, defaults to <code>true</code>.
	 * An empty value here will cause <b class='link'>ext.data.Record</b>.<b class='link' title='ext.data.Record#isValid'>isValid</b>
	 * to evaluate to <code>false</code>.
	 */
	public var allowBlank  : Boolean;
}}
