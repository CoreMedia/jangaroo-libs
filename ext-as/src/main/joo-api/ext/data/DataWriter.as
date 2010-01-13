package ext.data {
/**
 * <p>ext.data.DataWriter facilitates create, update, and destroy actions between
 * an ext.data.Store and a server-side framework. A Writer enabled Store will
 * automatically manage the Ajax requests to perform CRUD actions on a Store.</p>
 * <p>ext.data.DataWriter is an abstract base class which is intended to be extended
 * and should not be created directly. For existing implementations, see
 * <b class='link'>ext.data.JsonWriter</b>.</p>
 * <p>Creating a writer is simple:</p>
 * <pre><code>
var writer = new ext.data.JsonWriter();
 * </code></pre>
 * <p>The proxy for a writer enabled store can be configured with a simple <code>url</code>:</p>
 * <pre><code>
&#47;/ Create a standard HttpProxy instance.
var proxy = new ext.data.HttpProxy({
    url&#58; 'app.php/users'
});
 * </code></pre>
 * <p>For finer grained control, the proxy may also be configured with an <code>api</code>:</p>
 * <pre><code>
&#47;/ Use the api specification
var proxy = new ext.data.HttpProxy({
    api&#58; {
        read    : 'app.php/users/read',
        create  : 'app.php/users/create',
        update  : 'app.php/users/update',
        destroy : 'app.php/users/destroy'
    }
});
 * </code></pre>
 * <p>Creating a Writer enabled store:</p>
 * <pre><code>
var store = new ext.data.Store({
    proxy&#58; proxy,
    reader&#58; reader,
    writer&#58; writer
});
 * </code></pre>
*/
public class DataWriter {
/**
 * @constructor Create a new DataWriter
 * @param meta Metadata configuration options (implementation-specific)
 * @param recordType Either an Array of field definition objects as specified
 * in <b class='link'>ext.data.Record#create</b>, or an <b class='link'>ext.data.Record</b> object created
 * using <b class='link'>ext.data.Record#create</b>.
 */
public function DataWriter(meta : Object, recordType : Object) {
  super(meta, recordType);
}
    /**
     * This DataWriter's configured metadata as passed to the constructor.
     * @property meta
     */
    /**
     * @cfg {Boolean} writeAllFields
     * <code>false</code> by default.  Set <code>true</code> to have DataWriter return ALL fields of a modified
     * record -- not just those that changed.
     * <code>false</code> to have DataWriter only request modified fields from a record.
     */
    public var writeAllFields  : Boolean;
    /**
     * @cfg {Boolean} listful
     * <code>false</code> by default.  Set <code>true</code> to have the DataWriter <b>always</b> write HTTP params as a list,
     * even when acting upon a single record.
     */
    public var listful  : Boolean;
    /**
     * Writes data in preparation for server-write action.  Simply proxies to DataWriter#update, DataWriter#create
     * DataWriter#destroy.
     * @param action [CREATE|UPDATE|DESTROY]
     * @param params The params-hash to write-to
     * @param rs The recordset write.
     */
    public native function write(action : String, params : Object, rs : *) : void;
    /**
     * abstract method meant to be overridden by all DataWriter extensions.  It's the extension's job to apply the "data" to the "params".
     * The data-object provided to render is populated with data according to the meta-info defined in the user's DataReader config,
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param rs Store recordset
     * @param params Http params to be sent to server.
     * @param data object populated according to DataReader meta-data.
     */
    public native function render(action : String, rs: Array, params : Object, data : Object) : void;
    /**
     * update
     * @param p Params-hash to apply result to.
     * @param rs Record(s) to write
     * @private
     */
    public native function update(p : Object, rs : *) : void;
    /**
     * @cfg {Function} saveRecord Abstract method that should be implemented in all subclasses
     * (e.g.: <b class='link' title='ext.data.JsonWriter#saveRecord'>JsonWriter.saveRecord</b>
     */
    public native function updateRecord(rec : Record)  : void;
    /**
     * create
     * @param p Params-hash to apply result to.
     * @param rs Record(s) to write
     * @private
     */
    public native function create(p : Object, rs : *) : void;
    /**
     * @cfg {Function} createRecord Abstract method that should be implemented in all subclasses
     * (e.g.: <b class='link' title='ext.data.JsonWriter#createRecord'>JsonWriter.createRecord</b>)
     */
    public native function createRecord(rec : Record) : void;
    /**
     * destroy
     * @param p Params-hash to apply result to.
     * @param rs Record(s) to write
     * @private
     */
    public native function destroy(p : Object, rs : *) : void;
    /**
     * @cfg {Function} destroyRecord Abstract method that should be implemented in all subclasses
     * (e.g.: <b class='link' title='ext.data.JsonWriter#destroyRecord'>JsonWriter.destroyRecord</b>)
     */
    public native function destroyRecord(rec : Record)  : void;
    /**
     * Converts a Record to a hash
     * @param rec
     */
    protected native function toHash(rec : Record) : void;
}}
