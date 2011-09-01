package ext.config {


/**
 * In-memory proxy. This proxy simply uses a local variable for data storage/retrieval, so its contents are lost on every page refresh.
 <p>Usually this Proxy isn't used directly, serving instead as a helper to a <a href="Ext.data.Store.html">Store</a> where a reader is required to load data. For example, say we have a Store for a User model and have some inline data we want to load, but this data isn't in quite the right format: we can use a MemoryProxy with a JsonReader to read it into our Store:</p><pre><code>//this is the model we will be using in the store
 Ext.regModel('User', {
 fields: [
 {name: 'id',    type: 'int'},
 {name: 'name',  type: 'string'},
 {name: 'phone', type: 'string', mapping: 'phoneNumber'}
 ]
 });

 //this data does not line up to our model fields - the phone field is called phoneNumber
 var data = {
 users: [
 {
 id: 1,
 name: 'Ed Spencer',
 phoneNumber: '555 1234'
 },
 {
 id: 2,
 name: 'Abe Elias',
 phoneNumber: '666 1234'
 }
 ]
 };

 //note how we set the 'root' in the reader to match the data structure above
 var store = new Ext.data.Store({
 autoLoad: true,
 model: 'User',
 data : data,
 proxy: {
 type: 'memory',
 reader: {
 type: 'json',
 root: 'users'
 }
 }
 });
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class MemoryProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.MemoryProxy
 */
[ExtConfig(target="ext.data.MemoryProxy")]
public class memoryproxy extends clientproxy {

  public function memoryproxy(config:Object = null) {

    super(config);
  }


  /**
   Optional array of Records to load into the Proxy
   */
  public native function get data():Array;

  /**
   * @private
   */
  public native function set data(value:Array):void;


}
}
    