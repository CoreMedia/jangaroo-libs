package ext.data {


/**
 * Abstract base class for reading structured data from a data source and converting it into an object containing <a href="Ext.data.Record.html">Ext.data.Record</a> objects and metadata for use by an <a href="Ext.data.Store.html">Ext.data.Store</a>. This class is intended to be extended and should not be created directly. For existing implementations, see <a href="Ext.data.ArrayReader.html">Ext.data.ArrayReader</a>, <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a> and <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>.
 * @see ext.config.datareader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#cls-Ext.data.DataReader Ext JS source
 */
public class DataReader {

  /**
   * Create a new DataReader
   *
   * @param meta Metadata configuration options (implementation-specific).
   * @param recordType Either an Array of <a href="Ext.data.Field.html">Field</a> definition objects (which will be passed to <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or a <a href="Ext.data.Record.html">Record</a> constructor created using <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.

   * @see ext.config.datareader
   */
  public function DataReader(meta:Object, recordType:*) {
    super();
  }

  /**
   This DataReader's configured metadata as passed to the constructor.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#prop-Ext.data.DataReader-meta Ext JS source
   */
  public native function get meta():*;

  /**
   * @private
   */
  public native function set meta(value:*):void;

  /**
   Either an Array of <a href="Ext.data.Field.html">Field</a> definition objects (which will be passed to <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or a <a href="Ext.data.Record.html">Record</a> constructor created from <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fields():*;

  /**
   [undefined] Optional name of a property within a server-response that represents a user-feedback message.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get messageProperty():String;

  /**
   * Abstract method, overridden in DataReader extensions such as <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a> and <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-buildExtractors Ext JS source
   */
  public native function buildExtractors():void;

  /**
   * returns extracted, type-cast rows of data. Iterates to call #extractValues for each row
   *
   * @param root data-root from server response
   * @param returnRecords [false] Set true to return instances of Ext.data.Record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-extractData Ext JS source
   */
  public native function extractData(root:*, returnRecords:Boolean = false):void;

  /**
   * Abstract method overridden in DataReader extensions such as <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a> and <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-extractValues Ext JS source
   */
  public native function extractValues():void;

  /**
   * Abstract method created in extension's buildExtractors impl.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-getId Ext JS source
   */
  public native function getId():void;

  /**
   * Abstract method created in extension's buildExtractors impl.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-getMessage Ext JS source
   */
  public native function getMessage():void;

  /**
   * Abstract method created in extension's buildExtractors impl.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-getRoot Ext JS source
   */
  public native function getRoot():void;

  /**
   * Abstract method created in extension's buildExtractors impl.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-getSuccess Ext JS source
   */
  public native function getSuccess():void;

  /**
   * Abstract method created in extension's buildExtractors impl.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-getTotal Ext JS source
   */
  public native function getTotal():void;

  /**
   * Returns true if the supplied data-hash <b>looks</b> and quacks like data. Checks to see if it has a key corresponding to idProperty defined in your DataReader config containing non-empty pk.
   *
   * @param data
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-isData Ext JS source
   */
  public native function isData(data:Object):Boolean;

  /**
   * Used for un-phantoming a record after a successful database insert. Sets the records pk along with new data from server. You <b>must</b> return at least the database pk using the idProperty defined in your DataReader configuration. The incoming data from server will be merged with the data in the local record. In addition, you <b>must</b> return record-data from the server in the same order received. Will perform a commit as well, un-marking dirty-fields. Store's "update" event will be suppressed.
   *
   * @param record The phantom record to be realized.
   * @param data The new record data to apply. Must include the primary-key from database defined in idProperty field.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-realize Ext JS source
   */
  public native function realize(record:*, data:*):void;

  /**
   * Used for updating a non-phantom or "real" record's data with fresh data from server after remote-save. If returning data from multiple-records after a batch-update, you <b>must</b> return record-data from the server in the same order received. Will perform a commit as well, un-marking dirty-fields. Store's "update" event will be suppressed as the record receives fresh new data-hash
   *
   * @param rs
   * @param data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DataReader.html#method-Ext.data.DataReader-update Ext JS source
   */
  public native function update(rs:*, data:*):void;

}
}
    