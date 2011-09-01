package ext.data {


/**
 * Base Writer class used by most subclasses of <a href="Ext.data.ServerProxy.html">Ext.data.ServerProxy</a>. This class is responsible for taking a set of <a href="Ext.data.Operation.html">Ext.data.Operation</a> objects and a <a href="Ext.data.Request.html">Ext.data.Request</a> object and modifying that request based on the Operations.
 <p>For example a <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a> would format the Operations and their <a href="Ext.data.Model.html">Ext.data.Model</a> instances based on the config options passed to the <a href="Ext.data.JsonWriter.html">JsonWriter's</a> constructor.</p><p>Writers are not needed for any kind of local storage - whether via a <a href="Ext.data.WebStorageProxy.html">Web Storage proxy</a> (see <a href="Ext.data.LocalStorageProxy.html">localStorage</a> and <a href="Ext.data.SessionStorageProxy.html">sessionStorage</a>) or just in memory via a <a href="Ext.data.MemoryProxy.html">MemoryProxy</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Writer.html#cls-Ext.data.Writer Ext JS source
 */
public class Writer {

  /**
   *
   *
   * @param config Optional config object
   */
  public function Writer(config:Object) {
    super();
  }

  /**
   * Formats the data for each record before sending it to the server. This method should be overridden to format the data in a way that differs from the default.
   *
   * @param record The record that we are writing to the server.
   * @return An object literal of name/value keys to be written to the server. By default this method returns the data property on the record.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Writer.html#method-Ext.data.Writer-getRecordData Ext JS source
   */
  public native function getRecordData(record:Object):Object;

  /**
   * Prepares a Proxy's Ext.data.Request object
   *
   * @param request The request object
   * @return The modified request object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Writer.html#method-Ext.data.Writer-write Ext JS source
   */
  public native function write(request:Request):Request;

}
}
    