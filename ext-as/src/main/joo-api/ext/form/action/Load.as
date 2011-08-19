package ext.form.action {
import ext.form.Action;

/**
 * A class which handles loading of data from a server into the Fields of an <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>.
 <p>Instances of this class are only created by a <a href="Ext.form.BasicForm.html">Form</a> when <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a>ing.</p><p><u><b>Response Packet Criteria</b></u></p><p>A response packet <b>must</b> contain:</p><div class="mdetail-params"><ul><li><b><code>success</code></b> property : Boolean</li><li><b><code>data</code></b> property : Object</li><li style="list-style: none"><div class="sub-desc">The <code>data</code> property contains the values of Fields to load. The individual value object for each Field is passed to the Field's <a href="output/Ext.form.Field.html#Ext.form.Field-setValue">setValue</a> method.</div></li></ul></div><p><u><b>JSON Packets</b></u></p><p>By default, response packets are assumed to be JSON, so for the following form load call:</p><pre><code>var myFormPanel = new Ext.form.FormPanel({
 title: 'Client and routing info',
 items: [{
 fieldLabel: 'Client',
 name: 'clientName'
 }, {
 fieldLabel: 'Port of loading',
 name: 'portOfLoading'
 }, {
 fieldLabel: 'Port of discharge',
 name: 'portOfDischarge'
 }]
 });
 myFormPanel.<a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-getForm">getForm</a>().<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a>({
 url: '/getRoutingInfo.php',
 params: {
 consignmentRef: myConsignmentRef
 },
 failure: function(form, action) {
 Ext.Msg.alert("Load failed", action.result.errorMessage);
 }
 });
 </code></pre>a <b>success response</b> packet may look like this:<br/><br/><pre><code>{
 success: true,
 data: {
 clientName: "Fred. Olsen Lines",
 portOfLoading: "FXT",
 portOfDischarge: "OSL"
 }
 }</code></pre>while a <b>failure response</b> packet may look like this:<br/><br/><pre><code>{
 success: false,
 errorMessage: "Consignment reference not found"
 }</code></pre><p>Other data may be placed into the response for processing the <a href="Ext.form.BasicForm.html">Form</a>'s callback or event handler methods. The object decoded from this JSON is available in the <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a> property.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.load
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#cls-Ext.form.Action.Load Ext JS source
 */
public class Load extends Action {

  /**
   *
   *
   * @see ext.config.load
   */
  public function Load() {
    super(null);
  }

}
}
    