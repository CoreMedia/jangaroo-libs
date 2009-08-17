package ext.data {

/**
 * <p>Data reader class to create an Array of <b class='link'>ext.data.Record</b> objects from a JSON response
 * based on mappings in a provided <b class='link'>ext.data.Record</b> constructor.</p>
 * <p>Example code:</p>
 * <pre><code>
var Employee = ext.data.Record.create([
    {name: 'firstname'},                  // map the Record's "firstname" field to the row object's key of the same name
    {name: 'job', mapping: 'occupation'}  // map the Record's "job" field to the row object's "occupation" key
]);
var myReader = new ext.data.JsonReader(
    {                             // The metadata property, with configuration options:
        totalProperty: "results", //   the property which contains the total dataset size (optional)
        root: "rows",             //   the property which contains an Array of record data objects
        idProperty: "id"          //   the property within each row object that provides an ID for the record (optional)
    },
    Employee  // <b class='link'>ext.data.Record</b> constructor that provides mapping for JSON object
);
</code></pre>
 * <p>This would consume a JSON data object of the form:</p><pre><code>
{
    results: 2,  // Reader's configured totalProperty
    rows: [      // Reader's configured root
        { id: 1, firstname: 'Bill', occupation: 'Gardener' },         // a row object
        { id: 2, firstname: 'Ben' , occupation: 'Horticulturalist' }  // another row object
    ]
}
</code></pre>
 * <p><b><u>Automatic configuration using metaData</u></b></p>
 * <p>It is possible to change a JsonReader's metadata at any time by including a <b><tt>metaData</tt></b>
 * property in the JSON data object. If the JSON data object has a <b><tt>metaData</tt></b> property, a
 * <b class='link' title='ext.data.Store'>Store</b> object using this Reader will reconfigure itself to use the newly provided
 * field definition and fire its <b class='link' title='ext.data.Store#metachange'>metachange</b> event. The metachange event
 * handler may interrogate the <b><tt>metaData</tt></b> property to perform any configuration required.
 * Note that reconfiguring a Store potentially invalidates objects which may refer to Fields or Records
 * which no longer exist.</p>
 * <p>The <b><tt>metaData</tt></b> property in the JSON data object may contain:</p>
 * <div class="mdetail-params"><ul>
 * <li>any of the configuration options for this class</li>
 * <li>a <b><tt><b class='link' title='ext.data.Record#fields'>fields</b></tt></b> property which the JsonReader will
 * use as an argument to the <b class='link' title='ext.data.Record#create data Record create'>method</b> in order to
 * configure the layout of the Records it will produce.</li>
 * <li>a <b><tt><b class='link' title='ext.data.Store#sortInfo'>sortInfo</b></tt></b> property which the JsonReader will
 * use to set the <b class='link'>ext.data.Store</b>'s <b class='link' title='ext.data.Store#sortInfo'>sortInfo</b> property</li>
 * <li>any user-defined properties needed</li>
 * </ul></div>
 * <p>To use this facility to send the same data as the example above (without having to code the creation
 * of the Record constructor), you would create the JsonReader like this:</p><pre><code>
var myReader = new ext.data.JsonReader();
</code></pre>
 * <p>The first data packet from the server would configure the reader by containing a
 * <b><tt>metaData</tt></b> property <b>and</b> the data. For example, the JSON data object might take
 * the form:</p>
<pre><code>
{
    metaData: {
        idProperty: 'id',
        root: 'rows',
        totalProperty: 'results',
        fields: [
            {name: 'name'},
            {name: 'job', mapping: 'occupation'}
        ],
        sortInfo: {field: 'name', direction:'ASC'}, // used by store to set its sortInfo
        foo: 'bar' // custom property
    },
    results: 2,
    rows: [ // an Array
        { 'id': 1, 'name': 'Bill', occupation: 'Gardener' },
        { 'id': 2, 'name': 'Ben', occupation: 'Horticulturalist' }
    ]
}
</code></pre>
*/
public class JsonReader extends DataReader {
/**
 * @cfg {String} totalProperty [total] Name of the property from which to retrieve the total number of records
 * in the dataset. This is only needed if the whole dataset is not passed in one go, but is being
 * paged from the remote server.  Defaults to <tt>total</tt>.
 */
  public var totalProperty : String;
/**  
 * @cfg {String} successProperty [success] Name of the property from which to
 * retrieve the success attribute. Defaults to <tt>success</tt>.  See
 * <b class='link'>ext.data.DataProxy</b>.<b class='link' title='ext.data.DataProxy#exception'>exception</b>
 * for additional information.
 */
  public var successProperty : String;
/**
 * @cfg {String} root [undefined] <b>Required</b>.  The name of the property
 * which contains the Array of row objects.  Defaults to <tt>undefined</tt>.
 * An exception will be thrown if the root property is undefined. The data packet
 * value for this property should be an empty array to clear the data or show
 * no data.
 */
/**
 * @cfg {String} idProperty [id] Name of the property within a row object that contains a record identifier value.  Defaults to <tt>id</tt>
 */
  public var idProperty : String;
/**
 * @constructor
 * Create a new JsonReader
 * @param meta Metadata configuration options.
 * @param recordType
 * <p>Either an Array of <b class='link' title='ext.data.Field'>Field</b> definition objects (which
 * will be passed to <b class='link'>ext.data.Record#create</b>, or a <b class='link' title='ext.data.Record'>Record</b>
 * constructor created from <b class='link'>ext.data.Record#create</b>.</p>
 */
public function JsonReader(meta : Object, recordType : *) {
  super(meta, recordType);
}
    /**
     * This JsonReader's metadata as passed to the constructor, or as passed in
     * the last data packet's <b><tt>metaData</tt></b> property.
     * @property meta
     */
  override public native function get meta() : Object;
    /**
     * This method is only used by a DataProxy which has retrieved data from a remote server.
     * @param response The XHR object which contains the JSON data in its responseText.
     * @return data A data block which is used by an ext.data.Store object as
     * a cache of ext.data.Records.
     */
    public native function read(response : Object) : Object;
    public native function onMetaChange(meta, recordType, o) : void;
    /**
     * @ignore
     */
    public native function simpleAccess(obj, subsc) : void;
    /**
     * @ignore
     */
    public native function getJsonAccessor() : void;
    /**
     * Create a data block containing ext.data.Records from a JSON object.
     * @param o An object which contains an Array of row objects in the property specified
     * in the config as 'root, and optionally a property, specified in the config as 'totalProperty'
     * which contains the total size of the dataset.
     * @return data A data block which is used by an ext.data.Store object as
     * a cache of ext.data.Records.
     */
    public native function readRecords(o : Object) : Object;
        /**
         * After any data loads, the raw JSON data is available for further custom processing.  If no data is
         * loaded or there is a load exception this property will be undefined.
         */
    override public native function buildExtractors() : void;
    public native function extractValues(data, items, len) : void;
    /**
     * Decode a json response from server.
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param response
     */
    public native function readResponse(action : String, response : Object) : void;
/**
*/
}}
