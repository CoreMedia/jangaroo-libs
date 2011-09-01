package ext.data {


/**
 * The JSON Reader is used by a Proxy to read a server response that is sent back in JSON format. This usually happens as a result of loading a Store - for example we might create something like this:
 <pre><code>Ext.regModel('User', {
 fields: ['id', 'name', 'email']
 });

 var store = new Ext.data.Store({
 model: 'User',
 proxy: {
 type: 'ajax',
 url : 'users.json',
 reader: {
 type: 'json'
 }
 }
 });
 </code></pre><p>The example above creates a 'User' model. Models are explained in the <a href="Ext.data.Model.html">Model</a> docs if you're not already familiar with them.</p><p>We created the simplest type of JSON Reader possible by simply telling our <a href="Ext.data.Store.html">Store</a>'s <a href="Ext.data.Proxy.html">Proxy</a> that we want a JSON Reader. The Store automatically passes the configured model to the Store, so it is as if we passed this instead:</p><pre><code>reader: {
 type : 'json',
 model: 'User'
 }
 </code></pre><p>The reader we set up is ready to read data from our server - at the moment it will accept a response like this:</p><pre><code>[
 {
 "id": 1,
 "name": "Ed Spencer",
 "email": "ed&#64;sencha.com"
 },
 {
 "id": 2,
 "name": "Abe Elias",
 "email": "abe&#64;sencha.com"
 }
 ]
 </code></pre><p><u>Reading other JSON formats</u></p><p>If you already have your JSON format defined and it doesn't look quite like what we have above, you can usually pass JsonReader a couple of configuration options to make it parse your format. For example, we can use the <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a> configuration to parse data that comes back like this:</p><pre><code>{
 "users": [
 {
 "id": 1,
 "name": "Ed Spencer",
 "email": "ed&#64;sencha.com"
 },
 {
 "id": 2,
 "name": "Abe Elias",
 "email": "abe&#64;sencha.com"
 }
 ]
 }
 </code></pre><p>To parse this we just pass in a <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-root">root</a> configuration that matches the 'users' above:</p><pre><code>reader: {
 type: 'json',
 root: 'users'
 }
 </code></pre><p>Sometimes the JSON structure is even more complicated. Document databases like CouchDB often provide metadata around each record inside a nested structure like this:</p><pre><code>{
 "total": 122,
 "offset": 0,
 "users": [
 {
 "id": "ed-spencer-1",
 "value": 1,
 "user": {
 "id": 1,
 "name": "Ed Spencer",
 "email": "ed&#64;sencha.com"
 }
 }
 ]
 }
 </code></pre><p>In the case above the record data is nested an additional level inside the "users" array as each "user" item has additional metadata surrounding it ('id' and 'value' in this case). To parse data out of each "user" item in the JSON above we need to specify the <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-record">record</a> configuration like this:</p><pre><code>reader: {
 type  : 'json',
 root  : 'users',
 record: 'user'
 }
 </code></pre><p><u>Response metadata</u></p><p>The server can return additional data in its response, such as the <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">total number of records</a> and the <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-successProperty">success status of the response</a>. These are typically included in the JSON response like this:</p><pre><code>{
 "total": 100,
 "success": true,
 "users": [
 {
 "id": 1,
 "name": "Ed Spencer",
 "email": "ed&#64;sencha.com"
 }
 ]
 }
 </code></pre><p>If these properties are present in the JSON response they can be parsed out by the JsonReader and used by the Store that loaded it. We can set up the names of these properties by specifying a final pair of configuration options:</p><pre><code>reader: {
 type : 'json',
 root : 'users',
 totalProperty  : 'total',
 successProperty: 'success'
 }
 </code></pre><p>These final options are not necessary to make the Reader work, but can be useful when the server needs to report an error or if it needs to indicate that there is a lot of data available of which only a subset is currently being returned.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.jsonreader
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonReader.html#cls-Ext.data.JsonReader Ext JS source
 */
public class JsonReader extends Reader {

  /**
   *
   *
   * @see ext.config.jsonreader
   */
  public function JsonReader() {
    super(null);
  }

  /**
   DEPRECATED - will be removed in Ext JS 5.0. This is just a copy of this.rawData - use that instead
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonReader.html#prop-Ext.data.JsonReader-jsonData Ext JS source
   */
  public native function get jsonData():*;

  /**
   * @private
   */
  public native function set jsonData(value:*):void;

  /**
   The optional location within the JSON response that the record data itself can be found at. See the JsonReader intro docs for more details. This is not often needed and defaults to undefined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get record():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonReader.html#method-Ext.data.JsonReader-createAccessor Ext JS source
   */
  public native function createAccessor():void;

  /**
   *
   *
   * @param dataRoot data-root from server response
   * @param returnRecords [false] Set true to return instances of Ext.data.Record
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonReader.html#method-Ext.data.JsonReader-extractData Ext JS source
   */
  override public native function extractData(dataRoot:*, returnRecords:Boolean):void;

  /**
   * Reads a JSON object and returns a ResultSet. Uses the internal getTotal and getSuccess extractors to retrieve meta data from the response, and extractData to turn the JSON data into model instances.
   *
   * @param data The raw data object
   * @return A ResultSet containing model instances and meta data about the results
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JsonReader.html#method-Ext.data.JsonReader-readRecords Ext JS source
   */
  override public native function readRecords(data:*):ResultSet;

}
}
    