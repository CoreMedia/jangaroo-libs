package ext.form {
import ext.Element;
import ext.data.Record;
import ext.util.Observable;
import ext.util.MixedCollection;

/**
 * <p>Encapsulates the DOM &lt;form> element at the heart of the <b class='link' title='ext.form.FormPanel'>FormPanel</b> class, and provides
 * input field management, validation, submission, and form loading services.</p>
 * <p>By default, Ext Forms are submitted through Ajax, using an instance of <b class='link'>ext.form.action.Submit</b>.
 * To enable normal browser submission of an Ext Form, use the <b class='link' title='#standardSubmit'>standardSubmit</b> config option.</p>
 * <p><b><u>File Uploads</u></b></p>
 * <p><b class='link' title='#fileUpload File'>uploads</b> are not performed using Ajax submission, that
 * is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard
 * manner with the DOM <code>&lt;form></code> element temporarily modified to have its
 * <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer
 * to a dynamically generated, hidden <code>&lt;iframe></code> which is inserted into the document
 * but removed after the return data has been gathered.</p>
 * <p>The server response is parsed by the browser to create the document for the IFRAME. If the
 * server is using JSON to send the return object, then the
 * <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header
 * must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p>
 * <p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode
 * "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p>
 * <p>The response text is retrieved from the document, and a fake XMLHttpRequest object
 * is created containing a <code>responseText</code> property in order to conform to the
 * requirements of event handlers and callbacks.</p>
 * <p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a>
 * and some server technologies (notably JEE) may require some custom processing in order to
 * retrieve parameter names and parameter values from the packet content.</p>
*/
public class BasicForm extends Observable {
/**
 * @constructor
 * @param el The form element or its id
 * @param config Configuration options
 */
public function BasicForm(el : *, config : Object) {
  super();
  el+=config;
}
    /**
     * @cfg {String} method
     * The request method to use (GET or POST) for form actions if one isn't supplied in the action options.
     */
    /**
     * @cfg {DataReader} reader
     * An ext.data.DataReader (e.g. <b class='link'>ext.data.XmlReader</b>) to be used to read
     * data when executing 'load' actions. This is optional as there is built-in
     * support for processing JSON.  For additional information on using an XMLReader
     * see the example provided in examples/form/xml-form.html.
     */
    /**
     * @cfg {DataReader} errorReader
     * <p>An ext.data.DataReader (e.g. <b class='link'>ext.data.XmlReader</b>) to be used to
     * read field error messages returned from 'submit' actions. This is optional
     * as there is built-in support for processing JSON.</p>
     * <p>The Records which provide messages for the invalid Fields must use the
     * Field name (or id) as the Record ID, and must contain a field called 'msg'
     * which contains the error message.</p>
     * <p>The errorReader does not have to be a full-blown implementation of a
     * DataReader. It simply needs to implement a <code>read(xhr)</code> function
     * which returns an Array of Records in an object with the following
     * structure:</p><pre><code>
{
    records&#58; recordArray
}
</code></pre>
     */
    /**
     * @cfg {String} url
     * The URL to use for form actions if one isn't supplied in the
     * <code><b class='link' title='#doAction'>doAction</b> options</code>.
     */
    /**
     * @cfg {Boolean} fileUpload
     * Set to true if this form is a file upload.
     * <p>File uploads are not performed using normal 'Ajax' techniques, that is they are <b>not</b>
     * performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the
     * DOM <code>&lt;form></code> element temporarily modified to have its
     * <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer
     * to a dynamically generated, hidden <code>&lt;iframe></code> which is inserted into the document
     * but removed after the return data has been gathered.</p>
     * <p>The server response is parsed by the browser to create the document for the IFRAME. If the
     * server is using JSON to send the return object, then the
     * <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a> header
     * must be set to "text/html" in order to tell the browser to insert the text unchanged into the document body.</p>
     * <p>Characters which are significant to an HTML parser must be sent as HTML entities, so encode
     * "&lt;" as "&amp;lt;", "&amp;" as "&amp;amp;" etc.</p>
     * <p>The response text is retrieved from the document, and a fake XMLHttpRequest object
     * is created containing a <code>responseText</code> property in order to conform to the
     * requirements of event handlers and callbacks.</p>
     * <p>Be aware that file upload packets are sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form</a>
     * and some server technologies (notably JEE) may require some custom processing in order to
     * retrieve parameter names and parameter values from the packet content.</p>
     */
    /**
     * @cfg {Object} baseParams
     * <p>Parameters to pass with all requests. e.g. baseParams: {id: '123', foo: 'bar'}.</p>
     * <p>Parameters are encoded as standard HTTP parameters using <b class='link'>Ext#urlEncode</b>.</p>
     */
    /**
     * @cfg {Number} timeout Timeout for form actions in seconds (default is 30 seconds).
     */
    public var timeout : Number;
    /**
     * @cfg {Object} api (Optional) If specified load and submit actions will be handled
     * with <b class='link'>ext.form.action.DirectLoad</b> and <b class='link'>ext.form.action.DirectSubmit</b>.
     * Methods which have been imported by ext.Direct can be specified here to load and submit
     * forms.
     * Such as the following:<pre><code>
api&#58; {
    load&#58; App.ss.MyProfile.load,
    submit&#58; App.ss.MyProfile.submit
}
</code></pre>
     * <p>Load actions can use <code><b class='link' title='#paramOrder'>paramOrder</b></code> or <code><b class='link' title='#paramsAsHash'>paramsAsHash</b></code>
     * to customize how the load method is invoked.
     * Submit actions will always use a standard form submit. The formHandler configuration must
     * be set on the associated server-side method which has been imported by ext.Direct</p>
     */
    /**
     * @cfg {Array/String} paramOrder <p>A list of params to be executed server side.
     * Defaults to <code>undefined</code>. Only used for the <code><b class='link' title='#api'>api</b></code>
     * <code>load</code> configuration.</p>
     * <br><p>Specify the params in the order in which they must be executed on the
     * server-side as either (1) an Array of String values, or (2) a String of params
     * delimited by either whitespace, comma, or pipe. For example,
     * any of the following would be acceptable:</p><pre><code>
paramOrder&#58; ['param1','param2','param3']
paramOrder&#58; 'param1 param2 param3'
paramOrder&#58; 'param1,param2,param3'
paramOrder&#58; 'param1|param2|param'
     </code></pre>
     */
    public var paramOrder : *;
    /**
     * @cfg {Boolean} paramsAsHash Only used for the <code><b class='link' title='#api'>api</b></code>
     * <code>load</code> configuration. Send parameters as a collection of named
     * arguments (defaults to <code>false</code>). Providing a
     * <code><b class='link' title='#paramOrder'>paramOrder</b></code> nullifies this configuration.
     */
    public var paramsAsHash : Boolean;
    protected var activeAction ;
    /**
     * @cfg {Boolean} trackResetOnLoad If set to <code>true</code>, <b class='link' title='#reset'>reset</b>() resets to the last loaded
     * or <b class='link' title='#setValues'>setValues</b>() data instead of when the form was first created.  Defaults to <code>false</code>.
     */
    public var trackResetOnLoad  : Boolean;
    /**
     * @cfg {Boolean} standardSubmit If set to true, standard HTML form submits are used instead of XHR (Ajax) style
     * form submissions. (defaults to false)<br>
     * <p><b>Note:</b> When using standardSubmit, the options to <b class='link' title='#submit'>submit</b> are ignored because Ext's
     * Ajax infrastracture is bypassed. To pass extra parameters (baseParams and params), you will need to
     * create hidden fields within the form.</p>
     * <p>The url config option is also bypassed, so set the action as well:</p>
     * <pre><code>
PANEL.getForm().getEl().dom.action = 'URL'
     * </code></pre>
     * An example encapsulating the above:
     * <pre><code>
new ext.FormPanel({
    standardSubmit&#58; true,
    baseParams&#58; {
        foo&#58; 'bar'
    },
    url&#58; 'myProcess.php',
    items&#58; [{
        xtype&#58; 'textfield',
        name&#58; 'userName'
    }],
    buttons&#58; [{
        text&#58; 'Save',
        handler&#58; function(){
            var O = this.ownerCt;
            if (O.getForm().isValid()) {
                if (O.url)
                    O.getForm().getEl().dom.action = O.url;
                if (O.baseParams) {
                    for (i in O.baseParams) {
                        O.add({
                            xtype&#58; 'hidden',
                            name&#58; i,
                            value&#58; O.baseParams[i]
                        })
                    }
                    O.doLayout();
                }
                O.getForm().submit();
            }
        }
    }]
});
     * </code></pre>
     */
    /**
     * By default wait messages are displayed with ext.MessageBox.wait. You can target a specific
     * element by passing it or its id or mask the form itself by passing in true.
     * @property waitMsgTarget
     */
    protected native function initEl(el) : void;
    /**
     * A {@link Ext.util.MixedCollection MixedCollection} containing all the Ext.form.Fields in this form.
     */
    public native function get items():MixedCollection;
    /**
     * Get the HTML form Element
     * @return 
     */
    public native function getEl() : Element;
    protected native function onSubmit(e) : void;
    protected native function destroy() : void;
    /**
     * Returns true if client-side validation on the form is successful.
     * @return 
     */
    public native function isValid() : Boolean;
    /**
     * <p>Returns true if any fields in this form have changed from their original values.</p>
     * <p>Note that if this BasicForm was configured with <b class='link' title='#trackResetOnLoad'>trackResetOnLoad</b> then the
     * Fields' <i>original values</i> are updated when the values are loaded by <b class='link' title='#setValues'>setValues</b>
     * or <b class='link' title='#loadRecord'>loadRecord</b>.</p>
     * @return 
     */
    public native function isDirty() : Boolean;
    /**
     * Performs a predefined action (<b class='link'>ext.form.action.Submit</b> or
     * <b class='link'>ext.form.action.Load</b>) or a custom extension of <b class='link'>ext.form.Action</b>
     * to perform application-specific processing.
     * @param actionName The name of the predefined action type,
     * or instance of <b class='link'>ext.form.Action</b> to perform.
     * @param options The options to pass to the <b class='link'>ext.form.Action</b>.
     * All of the config options listed below are supported by both the
     * <b class='link' title='ext.form.action.Submit'>submit</b> and <b class='link' title='ext.form.action.Load'>load</b>
     * actions unless otherwise noted (custom actions could also accept
     * other config options):<ul>
     *
     * <li><b>url</b> : String<div class="sub-desc">The url for the action (defaults
     * to the form's <b class='link' title='#url'>url</b>.)</div></li>
     *
     * <li><b>method</b> : String<div class="sub-desc">The form method to use (defaults
     * to the form's method, or POST if not defined)</div></li>
     *
     * <li><b>params</b> : String/Object<div class="sub-desc"><p>The params to pass
     * (defaults to the form's baseParams, or none if not defined)</p>
     * <p>Parameters are encoded as standard HTTP parameters using <b class='link'>Ext#urlEncode</b>.</p></div></li>
     *
     * <li><b>headers</b> : Object<div class="sub-desc">Request headers to set for the action
     * (defaults to the form's default headers)</div></li>
     *
     * <li><b>success</b> : Function<div class="sub-desc">The callback that will
     * be invoked after a successful response (see top of
     * <b class='link' title='ext.form.action.Submit'>submit</b> and <b class='link' title='ext.form.action.Load'>load</b>
     * for a description of what constitutes a successful response).
     * The function is passed the following parameters:<ul>
     * <li><code>form</code> : ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li>
     * <li><code>action</code> : The <b class='link' title='ext.form.Action'>Action</b> object which performed the operation.
     * <div class="sub-desc">The action object contains these properties of interest:<ul>
     * <li><code><b class='link' title='ext.form.Action#response'>response</b></code></li>
     * <li><code><b class='link' title='ext.form.Action#result'>result</b></code> : interrogate for custom postprocessing</li>
     * <li><code><b class='link' title='ext.form.Action#type'>type</b></code></li>
     * </ul></div></li></ul></div></li>
     *
     * <li><b>failure</b> : Function<div class="sub-desc">The callback that will be invoked after a
     * failed transaction attempt. The function is passed the following parameters:<ul>
     * <li><code>form</code> : The <b class='link'>ext.form.BasicForm</b> that requested the action.</li>
     * <li><code>action</code> : The <b class='link' title='ext.form.Action'>Action</b> object which performed the operation.
     * <div class="sub-desc">The action object contains these properties of interest:<ul>
     * <li><code><b class='link' title='ext.form.Action#failureType'>failureType</b></code></li>
     * <li><code><b class='link' title='ext.form.Action#response'>response</b></code></li>
     * <li><code><b class='link' title='ext.form.Action#result'>result</b></code> : interrogate for custom postprocessing</li>
     * <li><code><b class='link' title='ext.form.Action#type'>type</b></code></li>
     * </ul></div></li></ul></div></li>
     *
     * <li><b>scope</b> : Object<div class="sub-desc">The scope in which to call the
     * callback functions (The <code>this</code> reference for the callback functions).</div></li>
     *
     * <li><b>clientValidation</b> : Boolean<div class="sub-desc">Submit Action only.
     * Determines whether a Form's fields are validated in a final call to
     * <b class='link' title='ext.form.BasicForm#isValid'>isValid</b> prior to submission. Set to <code>false</code>
     * to prevent this. If undefined, pre-submission field validation is performed.</div></li></ul>
     *
     * @return this
     */
    public native function doAction(actionName : *, options : Object = undefined) : BasicForm;
    /**
     * Shortcut to <b class='link' title='#doAction'>do</b> a <b class='link' title='ext.form.action.Submit submit'>action</b>.
     * @param options The options to pass to the action (see <b class='link' title='#doAction'>doAction</b> for details).<br>
     * <p><b>Note:</b> this is ignored when using the <b class='link' title='#standardSubmit'>standardSubmit</b> option.</p>
     * <p>The following code:</p><pre><code>
myFormPanel.getForm().submit({
    clientValidation&#58; true,
    url&#58; 'updateConsignment.php',
    params&#58; {
        newStatus&#58; 'delivered'
    },
    success&#58; function(form, action) {
       ext.Msg.alert('Success', action.result.msg);
    },
    failure&#58; function(form, action) {
        switch (action.failureType) {
            case ext.form.action.CLIENT_INVALID:
                ext.Msg.alert('Failure', 'Form fields may not be submitted with invalid values');
                break;
            case ext.form.action.CONNECT_FAILURE:
                ext.Msg.alert('Failure', 'Ajax communication failed');
                break;
            case ext.form.action.SERVER_INVALID:
               ext.Msg.alert('Failure', action.result.msg);
       }
    }
});
</code></pre>
     * would process the following server response for a successful submission:<pre><code>
{
    "success":true, // note this is Boolean, not string
    "msg":"Consignment updated"
}
</code></pre>
     * and the following server response for a failed submission:<pre><code>
{
    "success":false, // note this is Boolean, not string
    "msg":"You do not have permission to perform this operation"
}
</code></pre>
     * @return this
     */
    public native function submit(options : Object) : BasicForm;
    /**
     * Shortcut to <b class='link' title='#doAction'>do</b> a <b class='link' title='ext.form.action.Load load'>action</b>.
     * @param options The options to pass to the action (see <b class='link' title='#doAction'>doAction</b> for details)
     * @return this
     */
    public native function load(options : Object) : BasicForm;
    /**
     * Persists the values in this form into the passed <b class='link'>ext.data.Record</b> object in a beginEdit/endEdit block.
     * @param record The record to edit
     * @return this
     */
    public native function updateRecord(record : Record) : BasicForm;
    /**
     * Loads an <b class='link'>ext.data.Record</b> into this form by calling <b class='link' title='#setValues'>setValues</b> with the
     * <b class='link' title='ext.data.Record#data record'>data</b>.
     * See also <b class='link' title='#trackResetOnLoad'>trackResetOnLoad</b>.
     * @param record The record to load
     * @return this
     */
    public native function loadRecord(record : Record) : BasicForm;
    protected native function beforeAction(action) : void;
    protected native function afterAction(action, success) : void;
    /**
     * Find a <b class='link'>ext.form.Field</b> in this form.
     * @param id The value to search for (specify either a <b class='link' title='ext.Component#id'>id</b>,
     * <b class='link' title='Ext.grid.Column#dataIndex'>dataIndex</b>, <b class='link' title='ext.form.Field#getName name or'>hiddenName</b>).
     * @return 
     */
    public native function findField(id : String) : Field;
    /**
     * Mark fields in this form invalid in bulk.
     * @param errors Either an array in the form [{id:'fieldId', msg:'The message'},...] or an object hash of {id: msg, id2: msg2}
     * @return this
     */
    public native function markInvalid(errors : *) : BasicForm;
    /**
     * Set values for fields in this form in bulk.
     * @param values Either an array in the form:<pre><code>
[{id:'clientName', value:'Fred. Olsen Lines'},
 {id:'portOfLoading', value:'FXT'},
 {id:'portOfDischarge', value:'OSL'} ]</code></pre>
     * or an object hash of the form:<pre><code>
{
    clientName&#58; 'Fred. Olsen Lines',
    portOfLoading&#58; 'FXT',
    portOfDischarge&#58; 'OSL'
}</code></pre>
     * @return this
     */
    public native function setValues(values : *) : BasicForm;
    /**
     * <p>Returns the fields in this form as an object with key/value pairs as they would be submitted using a standard form submit.
     * If multiple fields exist with the same name they are returned as an array.</p>
     * <p><b>Note:</b> The values are collected from all enabled HTML input elements within the form, <u>not</u> from
     * the Ext Field objects. This means that all returned values are Strings (or Arrays of Strings) and that the
     * value can potentially be the emptyText of a field.</p>
     * @param asString Pass true to return the values as a string. (defaults to false, returning an Object)
     * @return 
     */
    public native function getValues(asString : Boolean = undefined) : *;
    public native function getFieldValues() : void;
    /**
     * Clears all invalid messages in this form.
     * @return this
     */
    public native function clearInvalid() : BasicForm;
    /**
     * Resets this form.
     * @return this
     */
    public native function reset() : BasicForm;
    /**
     * Add Ext.form Components to this form's Collection. This does not result in rendering of
     * the passed Component, it just enables the form to validate Fields, and distribute values to
     * Fields.
     * <p><b>You will not usually call this function. In order to be rendered, a Field must be added
     * to a <b class='link' title='ext.Container'>Container</b>, usually an <b class='link' title='ext.form.FormPanel'>FormPanel</b>.
     * The FormPanel to which the field is added takes care of adding the Field to the BasicForm's
     * collection.</b></p>
     * @param field1
     * @param field2
     * @param etc
     * @return this
     */
    public native function add(field1 : Field, field2 : Field = undefined, etc : Field = undefined) : BasicForm;
    /**
     * Removes a field from the items collection (does NOT remove its markup).
     * @param field
     * @return this
     */
    public native function remove(field : Field) : BasicForm;
    /**
     * Iterates through the <b class='link' title='ext.form.Field'>Field</b>s which have been <b class='link' title='#add'>add</b>ed to this BasicForm,
     * checks them for an id attribute, and calls <b class='link'>ext.form.Field#applyToMarkup</b> on the existing dom element with that id.
     * @return this
     */
    public native function render() : BasicForm;
    /**
     * Calls <b class='link'>Ext#apply</b> for all fields in this form with the passed object.
     * @param values
     * @return this
     */
    public native function applyToFields(values : Object) : BasicForm;
    /**
     * Calls <b class='link'>Ext#applyIf</b> for all field in this form with the passed object.
     * @param values
     * @return this
     */
    public native function applyIfToFields(values : Object) : BasicForm;
    public native function callFieldMethod(fnName, args) : void;
}}
