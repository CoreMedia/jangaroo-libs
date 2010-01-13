package ext.form.action {

import ext.form.Action;

/**
 * <p>A class which handles loading of data from a server into the Fields of an <b class='link'>ext.form.BasicForm</b>.</p>
 * <p>Instances of this class are only created by a <b class='link' title='ext.form.BasicForm'>Form</b> when
 * <b class='link' title='ext.form.BasicForm#load'>load</b>ing.</p>
 * <p><u><b>Response Packet Criteria</b></u></p>
 * <p>A response packet <b>must</b> contain:
 * <div class="mdetail-params"><ul>
 * <li><b><code>success</code></b> property : Boolean</li>
 * <li><b><code>data</code></b> property : Object</li>
 * <div class="sub-desc">The <code>data</code> property contains the values of Fields to load.
 * The individual value object for each Field is passed to the Field's
 * <b class='link' title='ext.form.Field#setValue'>setValue</b> method.</div></li>
 * </ul></div>
 * <p><u><b>JSON Packets</b></u></p>
 * <p>By default, response packets are assumed to be JSON, so for the following form load call:<pre><code>
var myFormPanel = new ext.form.FormPanel({
    title&#58; 'Client and routing info',
    items&#58; [{
        fieldLabel&#58; 'Client',
        name&#58; 'clientName'
    }, {
        fieldLabel&#58; 'Port of loading',
        name&#58; 'portOfLoading'
    }, {
        fieldLabel&#58; 'Port of discharge',
        name&#58; 'portOfDischarge'
    }]
});
myFormPanel.<b class='link' title='ext.form.FormPanel#getForm'>getForm</b>().<b class='link' title='ext.form.BasicForm#load'>load</b>({
    url&#58; '/getRoutingInfo.php',
    params&#58; {
        consignmentRef&#58; myConsignmentRef
    },
    failure&#58; function(form, action() {
        ext.Msg.alert("Load failed", action.result.errorMessage);
    }
});
</code></pre>
 * a <b>success response</b> packet may look like this:</p><pre><code>
{
    success&#58; true,
    data&#58; {
        clientName&#58; "Fred. Olsen Lines",
        portOfLoading&#58; "FXT",
        portOfDischarge&#58; "OSL"
    }
}</code></pre>
 * while a <b>failure response</b> packet may look like this:</p><pre><code>
{
    success&#58; false,
    errorMessage&#58; "Consignment reference not found"
}</code></pre>
 * <p>Other data may be placed into the response for processing the <b class='link' title='ext.form.BasicForm'>Form</b>'s
 * callback or event handler methods. The object decoded from this JSON is available in the
 * <b class='link' title='ext.form.Action#result'>result</b> property.</p>
 */
public class Load extends Action {
  override public native function run(options) : void;
  override public native function success(response) : void;
  override public native function handleResponse(response) : void;
}}
