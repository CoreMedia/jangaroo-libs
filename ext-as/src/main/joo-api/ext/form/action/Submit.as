package ext.form.action {

import ext.data.DataReader;
import ext.form.Action;

/**
 * A class which handles submission of data from <a href="Ext.form.BasicForm.html">Form</a>s and processes the returned response.
 <p>Instances of this class are only created by a <a href="Ext.form.BasicForm.html">Form</a> when <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>ting.</p><p><u><b>Response Packet Criteria</b></u></p><p>A response packet may contain:</p><div class="mdetail-params"><ul><li><b><code>success</code></b> property : Boolean <div class="sub-desc">The <code>success</code> property is required.</div></li><li><b><code>errors</code></b> property : Object <div class="sub-desc">The <code>errors</code> property, which is optional, contains error messages for invalid fields.</div></li></ul></div><p><u><b>JSON Packets</b></u></p><p>By default, response packets are assumed to be JSON, so a typical response packet may look like this:</p><pre><code>{
 success: false,
 errors: {
 clientCode: "Client not found",
 portOfLoading: "This field must not be null"
 }
 }</code></pre><p>Other data may be placed into the response for processing by the <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>'s callback or event handler methods. The object decoded from this JSON is available in the <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a> property.</p><p>Alternatively, if an <a href="output/Ext.form.Action.Submit.html#Ext.form.Action.Submit-errorReader">errorReader</a> is specified as an <a href="Ext.data.XmlReader.html">XmlReader</a>:</p><pre><code>   errorReader: new Ext.data.XmlReader({
 record : 'field',
 success: '&#64;success'
 }, [
 'id', 'msg'
 ]
 )
 </code></pre><p>then the results may be sent back in XML format:</p><pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
 &lt;message success="false"&gt;
 &lt;errors&gt;
 &lt;field&gt;
 &lt;id&gt;clientCode&lt;/id&gt;
 &lt;msg&gt;&lt;![CDATA[Code not found. &lt;br /&gt;&lt;i&gt;This is a test validation message from the server &lt;/i&gt;]]&gt;&lt;/msg&gt;
 &lt;/field&gt;
 &lt;field&gt;
 &lt;id&gt;portOfLoading&lt;/id&gt;
 &lt;msg&gt;&lt;![CDATA[Port not found. &lt;br /&gt;&lt;i&gt;This is a test validation message from the server &lt;/i&gt;]]&gt;&lt;/msg&gt;
 &lt;/field&gt;
 &lt;/errors&gt;
 &lt;/message&gt;
 </code></pre><p>Other elements may be placed into the response XML for processing by the <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>'s callback or event handler methods. The XML document is available in the <a href="output/Ext.form.Action.Submit.html#Ext.form.Action.Submit-errorReader">errorReader</a>'s <a href="output/Ext.data.XmlReader.html#Ext.data.XmlReader-xmlData">xmlData</a> property.</p>
 * @see ext.config.submit
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action1.html#cls-Ext.form.Action.Submit Ext JS source
 */
public class Submit extends Action {

  /**
   *
   *
   * @see ext.config.submit
   */
  public function Submit() {
    super();
  }

  /**
   Determines whether a Form's fields are validated in a final call to <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-isValid">isValid</a> prior to submission. Pass <tt>false</tt> in the Form's submit options to prevent this. If not defined, pre-submission field validation is performed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get clientValidation():Boolean;

  /**
   Optional. JSON is interpreted with no need for an errorReader.
   <p>A Reader which reads a single record from the returned data. The DataReader's <b>success</b> property specifies how submission success is determined. The Record's data provides the error messages to apply to any invalid form Fields.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get errorReader():DataReader;

}
}
    