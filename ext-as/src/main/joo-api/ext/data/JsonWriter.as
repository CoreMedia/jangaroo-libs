package ext.data {

/**
 * DataWriter extension for writing an array or single <b class='link'>ext.data.Record</b> object(s) in preparation for executing a remote CRUD action.
 */
public class JsonWriter extends DataWriter {
  public function JsonWriter(meta : Object, recordType : Object) {
    super(meta, recordType);
  }
    /**
     * @cfg {Boolean} returnJson <b>Deprecated.  Use <b class='link'>ext.data.JsonWriter#encode</b> instead.
     */
    public var returnJson ;
    /**
     * @cfg {Boolean} encode <code>true</code> to <b class='link' title='Ext.util.JSON#encode'>encode</b> the
     * <b class='link' title='ext.data.DataWriter#toHash hashed'>data</b>. Defaults to <code>true</code>.  When using
     * <b class='link'>ext.data.DirectProxy</b>, set this to <code>false</code> since ext.Direct.JsonProvider will perform
     * its own json-encoding.  In addition, if you're using <b class='link'>ext.data.HttpProxy</b>, setting to <code>false</code>
     * will cause HttpProxy to transmit data using the <b>jsonData</b> configuration-params of <b class='link'>ext.Ajax#request</b>
     * instead of <b>params</b>.  When using a <b class='link'>ext.data.Store#restful</b> Store, some serverside frameworks are
     * tuned to expect data through the jsonData mechanism.  In those cases, one will want to set <b>encode: <code>false</code></b>
     */
    public var encode  : Boolean;
    /**
     * Final action of a write event.  Apply the written data-object to params.
     * @param action [ext.data.Api.actions.create|read|update|destroy]
     * @param rs
     * @param http params
     * @param data object populated according to DataReader meta-data "root" and "idProperty"
     */
    override public native function render(action : String, rs : Array/*Record*/, http : Object, data : Object) : void;
    /**
     * createRecord
     * @protected
     * @param rec
     */
    override public native function createRecord(rec : Record) : void;
    /**
     * updateRecord
     * @protected
     * @param rec
     */
    override public native function updateRecord(rec : Record) : void;
    /**
     * destroyRecord
     * @protected
     * @param rec
     */
    override public native function destroyRecord(rec : Record) : void;

}}
