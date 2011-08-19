package ext.config {

import joo.JavaScriptObject;

/**
 * Abstract base class for reading structured data from a data source and converting it into an object containing <a href="Ext.data.Record.html">Ext.data.Record</a> objects and metadata for use by an <a href="Ext.data.Store.html">Ext.data.Store</a>. This class is intended to be extended and should not be created directly. For existing implementations, see <a href="Ext.data.ArrayReader.html">Ext.data.ArrayReader</a>, <a href="Ext.data.JsonReader.html">Ext.data.JsonReader</a> and <a href="Ext.data.XmlReader.html">Ext.data.XmlReader</a>.
 *
 * <p>This class serves as a
 * typed config object for constructor of class DataReader.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.DataReader
 */
[ExtConfig(target="ext.data.DataReader")]
public class datareader extends JavaScriptObject {

  public function datareader(config:Object = null) {

    super(config);
  }


  /**
   Either an Array of <a href="Ext.data.Field.html">Field</a> definition objects (which will be passed to <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>, or a <a href="Ext.data.Record.html">Record</a> constructor created from <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record.create</a>.

   */
  public native function get fields():*;

  /**
   * @private
   */
  public native function set fields(value:*):void;

  /**
   [undefined] Optional name of a property within a server-response that represents a user-feedback message.
   */
  public native function get messageProperty():String;

  /**
   * @private
   */
  public native function set messageProperty(value:String):void;


}
}
    