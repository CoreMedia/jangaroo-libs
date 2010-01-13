package ext.form.action {

import ext.form.Action;

/**
 * <p>A class which handles submission of data from <b class='link' title='ext.form.BasicForm'>Form</b>s
 * and processes the returned response.</p>
 * <p>Instances of this class are only created by a <b class='link' title='ext.form.BasicForm'>Form</b> when
 * <b class='link' title='ext.form.BasicForm#submit'>submit</b>ting.</p>
 * <p><u><b>Response Packet Criteria</b></u></p>
 * <p>A response packet may contain:
 * <div class="mdetail-params"><ul>
 * <li><b><code>success</code></b> property : Boolean
 * <div class="sub-desc">The <code>success</code> property is required.</div></li>
 * <li><b><code>errors</code></b> property : Object
 * <div class="sub-desc"><div class="sub-desc">The <code>errors</code> property,
 * which is optional, contains error messages for invalid fields.</div></li>
 * </ul></div>
 * <p><u><b>JSON Packets</b></u></p>
 * <p>By default, response packets are assumed to be JSON, so a typical response
 * packet may look like this:</p><pre><code>
{
    success&#58; false,
    errors&#58; {
        clientCode&#58; "Client not found",
        portOfLoading&#58; "This field must not be null"
    }
}</code></pre>
 * <p>Other data may be placed into the response for processing by the <b class='link'>ext.form.BasicForm</b>'s callback
 * or event handler methods. The object decoded from this JSON is available in the
 * <b class='link' title='ext.form.Action#result'>result</b> property.</p>
 * <p>Alternatively, if an <b class='link' title='#errorReader'>errorReader</b> is specified as an <b class='link' title='ext.data.XmlReader'>XmlReader</b>:</p><pre><code>
    errorReader&#58; new ext.data.XmlReader({
            record : 'field',
            success&#58; '@success'
        }, [
            'id', 'msg'
        ]
    )
</code></pre>
 * <p>then the results may be sent back in XML format:</p><pre><code>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
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
</code></pre>
 * <p>Other elements may be placed into the response XML for processing by the <b class='link'>ext.form.BasicForm</b>'s callback
 * or event handler methods. The XML document is available in the <b class='link' title='#errorReader'>errorReader</b>'s <b class='link' title='ext.data.XmlReader#xmlData'>xmlData</b> property.</p>
 */
    public class Submit extends Action {
    override public native function run(options) : void;
    override public native function success(response) : void;
    override public native function handleResponse(response) : void;
}}
