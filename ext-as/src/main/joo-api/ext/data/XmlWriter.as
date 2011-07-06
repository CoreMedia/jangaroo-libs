package ext.data {


/**
 * DataWriter extension for writing an array or single <a href="Ext.data.Record.html">Ext.data.Record</a> object(s) in preparation for executing a remote CRUD action via XML. XmlWriter uses an instance of <a href="Ext.XTemplate.html">Ext.XTemplate</a> for maximum flexibility in defining your own custom XML schema if the default schema is not appropriate for your needs. See the <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-tpl">tpl</a> configuration-property.
 * @see ext.config.xmlwriter
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#cls-Ext.data.XmlWriter Ext JS source
 */
public class XmlWriter extends DataWriter {

  /**
   *
   *
   * @see ext.config.xmlwriter
   */
  public function XmlWriter() {
    super(null, null);
  }

  /**
   [xrequest] (Optional) The name of the XML document root-node. <b>Note:</b> this parameter is required only when sending extra <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">baseParams</a> to the server during a write-request -- if no baseParams are set, the <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">Ext.data.XmlReader.record</a> meta-property can suffice as the XML document root-node for write-actions involving just a <b>single record</b>. For requests involving <b>multiple</b> records and <b>NO</b> baseParams, the <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-root">Ext.data.XmlWriter.root</a> property can act as the XML document root.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get documentRoot():String;

  /**
   [false] Set to <tt>true</tt> to force XML documents having a root-node as defined by <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-documentRoot">documentRoot</a>, even with no baseParams defined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get forceDocumentRoot():Boolean;

  /**
   [records] The name of the containing element which will contain the nodes of an write-action involving <b>multiple</b> records. Each xml-record written to the server will be wrapped in an element named after <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">Ext.data.XmlReader.record</a> property. eg: <pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
   &lt;user&gt;&lt;first&gt;Barney&lt;/first&gt;&lt;/user&gt;
   </code></pre>However, when <b>multiple</b> records are written in a batch-operation, these records must be wrapped in a containing Element. eg: <pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
   &lt;records&gt;
   &lt;first&gt;Barney&lt;/first&gt;&lt;/user&gt;
   &lt;records&gt;&lt;first&gt;Barney&lt;/first&gt;&lt;/user&gt;
   &lt;/records&gt;
   </code></pre>Defaults to <tt>records</tt>. Do not confuse the nature of this property with that of <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-documentRoot">documentRoot</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get root():String;

  /**
   The XML template used to render <a href="output/Ext.data.Api.html#Ext.data.Api-actions">write-actions</a> to your server. <p>One can easily provide his/her own custom <a href="output/Ext.XTemplate.html#Ext.XTemplate-constructor">template-definition</a> if the default does not suffice.</p><p>Defaults to:</p><pre><code>&lt;?xml version="{version}" encoding="{encoding}"?&gt;
   &lt;tpl if="documentRoot"&gt;&lt;{documentRoot}&gt;
   &lt;tpl for="baseParams"&gt;
   &lt;tpl for="."&gt;
   &lt;{name}&gt;{value}&lt;/{name}&gt;
   &lt;/tpl&gt;
   &lt;/tpl&gt;
   &lt;tpl if="records.length &gt; 1"&gt;&lt;{root}&gt;',
   &lt;tpl for="records"&gt;
   &lt;{parent.record}&gt;
   &lt;tpl for="."&gt;
   &lt;{name}&gt;{value}&lt;/{name}&gt;
   &lt;/tpl&gt;
   &lt;/{parent.record}&gt;
   &lt;/tpl&gt;
   &lt;tpl if="records.length &gt; 1"&gt;&lt;/{root}&gt;&lt;/tpl&gt;
   &lt;tpl if="documentRoot"&gt;&lt;/{documentRoot}&gt;&lt;/tpl&gt;
   </code></pre><p>Templates will be called with the following API</p><ul><li>{String} version [1.0] The xml version.</li><li>{String} encoding [ISO-8859-15] The xml encoding.</li><li>{String/false} documentRoot The XML document root-node name or <tt>false</tt> if not required. See <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-documentRoot">documentRoot</a> and <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-forceDocumentRoot">forceDocumentRoot</a>.</li><li>{String} record The meta-data parameter defined on your <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-record">Ext.data.XmlReader.record</a> configuration represents the name of the xml-tag containing each record.</li><li>{String} root The meta-data parameter defined by <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-root">Ext.data.XmlWriter.root</a> configuration-parameter. Represents the name of the xml root-tag when sending <b>multiple</b> records to the server.</li><li>{Array} records The records being sent to the server, ie: the subject of the write-action being performed. The records parameter will be always be an array, even when only a single record is being acted upon. Each item within the records array will contain an array of field objects having the following properties: <ul><li>{String} name The field-name of the record as defined by your <a href="output/Ext.data.Record.html#Ext.data.Record-create">Ext.data.Record definition</a>. The "mapping" property will be used, otherwise it will match the "name" property. Use this parameter to define the XML tag-name of the property.</li><li>{Mixed} value The record value of the field enclosed within XML tags specified by name property above.</li></ul></li><li>{Array} baseParams. The baseParams as defined upon <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">Ext.data.Store.baseParams</a>. Note that the baseParams have been converted into an array of [{name : "foo", value: "bar"}, ...] pairs in the same manner as the <b>records</b> parameter above. See <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-documentRoot">documentRoot</a> and <a href="output/Ext.data.XmlWriter.html#Ext.data.XmlWriter-forceDocumentRoot">forceDocumentRoot</a>.</li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tpl():*;

  /**
   [ISO-8859-15] The <tt>encoding</tt> written to header of xml documents. <pre><code>&lt;?xml version="1.0" encoding="ISO-8859-15"?&gt;</code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get xmlEncoding():String;

  /**
   [1.0] The <tt>version</tt> written to header of xml documents. <pre><code>&lt;?xml version="1.0" encoding="ISO-8859-15"?&gt;</code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get xmlVersion():String;

  /**
   * createRecord
   *
   * @param rec
   * @return Array of <tt>name:value</tt> pairs for attributes of the <a href="Ext.data.Record.html">Ext.data.Record</a>. See <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">Ext.data.DataWriter.toHash</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#method-Ext.data.XmlWriter-createRecord Ext JS source
   */
  protected native function createRecord(rec:Record):Array;

  /**
   * destroyRecord
   *
   * @param rec
   * @return Array containing a attribute-object (name/value pair) representing the <a href="output/Ext.data.DataReader.html#Ext.data.DataReader-idProperty">idProperty</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#method-Ext.data.XmlWriter-destroyRecord Ext JS source
   */
  protected native function destroyRecord(rec:Record):Array;

  /**
   * XmlWriter implementation of the final stage of a write action.
   *
   * @param baseParams as defined by <a href="output/Ext.data.Store.html#Ext.data.Store-baseParams">Ext.data.Store.baseParams</a>. The baseParms must be encoded by the extending class, eg: <a href="Ext.data.JsonWriter.html">Ext.data.JsonWriter</a>, <a href="Ext.data.XmlWriter.html">Ext.data.XmlWriter</a>.
   * @param params Http params to be sent to server.
   * @param data object populated according to DataReader meta-data.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#method-Ext.data.XmlWriter-render Ext JS source
   */
  override public native function render(baseParams:Object, params:Object, data:*):void;

  /**
   * updateRecord
   *
   * @param rec
   * @return Array of {name:value} pairs for attributes of the <a href="Ext.data.Record.html">Ext.data.Record</a>. See <a href="output/Ext.data.DataWriter.html#Ext.data.DataWriter-toHash">Ext.data.DataWriter.toHash</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XmlWriter.html#method-Ext.data.XmlWriter-updateRecord Ext JS source
   */
  protected native function updateRecord(rec:Record):Array;

}
}
    