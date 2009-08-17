package ext.data {
/**
 * Abstract base class for reading structured data from a data source and converting
 * it into an object containing <b class='link'>ext.data.Record</b> objects and metadata for use
 * by an <b class='link'>ext.data.Store</b>.  This class is intended to be extended and should not
 * be created directly. For existing implementations, see <b class='link'>ext.data.ArrayReader</b>,
 * <b class='link'>ext.data.JsonReader</b> and <b class='link'>ext.data.XmlReader</b>.
*/
public class DataReader {
/**
 * @constructor Create a new DataReader
 * @param meta Metadata configuration options (implementation-specific).
 * @param recordType
 * <p>Either an Array of <b class='link' title='ext.data.Field'>Field</b> definition objects (which
 * will be passed to <b class='link'>ext.data.Record#create</b>, or a <b class='link' title='ext.data.Record'>Record</b>
 * constructor created using <b class='link'>ext.data.Record#create</b>.</p>
 */
public function DataReader(meta : Object, recordType : *) {
  super(meta, recordType);
}
    /**
     * This DataReader's configured metadata as passed to the constructor.
     * @property meta
     */
  public native function get meta() : Object;
    /**
     * @cfg {Array/Object} fields
     * <p>Either an Array of <b class='link' title='ext.data.Field'>Field</b> definition objects (which
     * will be passed to <b class='link'>ext.data.Record#create</b>, or a <b class='link' title='ext.data.Record'>Record</b>
     * constructor created from <b class='link'>ext.data.Record#create</b>.</p>
     */
    /**
     * Abstract method, overridden in <b class='link'>ext.data.JsonReader</b>
     */
    public native function buildExtractors()  : void;
    /**
     * Used for un-phantoming a record after a successful database insert.  Sets the records pk along with new data from server.
     * You <b>must</b> return at least the database pk using the idProperty defined in your DataReader configuration.  The incoming
     * data from server will be merged with the data in the local record.
     * In addition, you <b>must</b> return record-data from the server in the same order received.
     * Will perform a commit as well, un-marking dirty-fields.  Store's "update" event will be suppressed.
     * @param record The phantom record to be realized.
     * @param data The new record data to apply.  Must include the primary-key from database defined in idProperty field.
     */
    public native function realize(record : *, data : *) : void;
    /**
     * Used for updating a non-phantom or "real" record's data with fresh data from server after remote-save.
     * You <b>must</b> return a complete new record from the server.  If you don't, your local record's missing fields
     * will be populated with the default values specified in your ext.data.Record.create specification.  Without a defaultValue,
     * local fields will be populated with empty string "".  So return your entire record's data after both remote create and update.
     * In addition, you <b>must</b> return record-data from the server in the same order received.
     * Will perform a commit as well, un-marking dirty-fields.  Store's "update" event will be suppressed as the record receives
     * a fresh new data-hash.
     * @param rs
     * @param data
     */
    public native function update(rs : *, data : *) : void;
    /**
     * Returns true if the supplied data-hash <b>looks</b> and quacks like data.  Checks to see if it has a key
     * corresponding to idProperty defined in your DataReader config containing non-empty pk.
     * @param data
     * @return 
     */
    public native function isData(data : Object) : Boolean;
/**
*/
}}
