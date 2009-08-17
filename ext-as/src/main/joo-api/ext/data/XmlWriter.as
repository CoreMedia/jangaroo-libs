package ext.data {

/**
 * DataWriter extension for writing an array or single <b class='link'>ext.data.Record</b> object(s) in preparation for executing a remote CRUD action via XML.
 */
public class XmlWriter extends DataWriter {
  public function XmlWriter(meta : Object, recordType : Object) {
    super(meta, recordType);
  }

  /**
   * Final action of a write event.  Apply the written data-object to params.
   * @param action [ext.data.Api.create|read|update|destroy]
   * @param rs
   * @param http params
   * @param data object populated according to DataReader meta-data "root" and "idProperty"
   */
    override public native function render(action : String, rs : Array/*Record*/, http : Object, data : Object) : void;
    /**
     * createRecord
     * @param rec
     */
    override public native function createRecord(rec : Record) : void;
    /**
     * updateRecord
     * @param rec
     */
    override public native function updateRecord(rec : Record) : void;
    /**
     * destroyRecord
     * @param rec
     */
    override public native function destroyRecord(rec : Record) : void;

}}
