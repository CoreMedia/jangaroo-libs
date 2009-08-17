package ext.form {
/**
 * <p>The subclasses of this class provide actions to perform upon <b class='link' title='ext.form.BasicForm'>Form</b>s.</p>
 * <p>Instances of this class are only created by a <b class='link' title='ext.form.BasicForm'>Form</b> when
 * the Form needs to perform an action such as submit or load. The Configuration options
 * listed for this class are set through the Form's action methods: <b class='link' title='ext.form.BasicForm#submit'>submit</b>,
 * <b class='link' title='ext.form.BasicForm#load'>load</b> and <b class='link' title='ext.form.BasicForm#doAction'>doAction</b></p>
 * <p>The instance of Action which performed the action is passed to the success
 * and failure callbacks of the Form's action methods (<b class='link' title='ext.form.BasicForm#submit'>submit</b>,
 * <b class='link' title='ext.form.BasicForm#load'>load</b> and <b class='link' title='ext.form.BasicForm#doAction'>doAction</b>),
 * and to the <b class='link' title='ext.form.BasicForm#actioncomplete'>actioncomplete</b> and
 * <b class='link' title='ext.form.BasicForm#actionfailed'>actionfailed</b> event handlers.</p>
 */
public class Action {
/**
 * Failure type returned when client side validation of the Form fails
 * thus aborting a submit action. Client side validation is performed unless
 * <b class='link'>#clientValidation</b> is explicitly set to <tt>false</tt>.
 * @static
 */
public static var CLIENT_INVALID  : String = 'client';
/**
 * <p>Failure type returned when server side processing fails and the <b class='link'>#result</b>'s
 * <tt style="font-weight:bold">success</tt> property is set to <tt>false</tt>.</p>
 * <p>In the case of a form submission, field-specific error messages may be returned in the
 * <b class='link'>#result</b>'s <tt style="font-weight:bold">errors</tt> property.</p>
 * @static
 */
public static var SERVER_INVALID  : String = 'server';
/**
 * Failure type returned when a communication error happens when attempting
 * to send a request to the remote server. The <b class='link'>#response</b> may be examined to
 * provide further information.
 * @static
 */
public static var CONNECT_FAILURE  : String = 'connect';
/**
 * Failure type returned when the response's <tt style="font-weight:bold">success</tt>
 * property is set to <tt>false</tt>, or no field values are returned in the response's
 * <tt style="font-weight:bold">data</tt> property.
 * @static
 */
public static var LOAD_FAILURE  : String = 'load';
/**
 * @cfg {String} url The URL that the Action is to invoke.
 */
/**
 * @cfg {Boolean} reset When set to <tt><b>true</b></tt>, causes the Form to be
 * <b class='link' title='ext.form.BasicForm.reset'>reset</b> on Action success. If specified, this happens
 * <b>before</b> the <b class='link'>#success</b> callback is called and before the Form's
 * <b class='link' title='ext.form.BasicForm.actioncomplete'>actioncomplete</b> event fires.
 */
/**
 * @cfg {String} method The HTTP method to use to access the requested URL. Defaults to the
 * <b class='link'>ext.form.BasicForm</b>'s method, or if that is not specified, the underlying DOM form's method.
 */
/**
 * @cfg {Mixed} params <p>Extra parameter values to pass. These are added to the Form's
 * <b class='link'>ext.form.BasicForm#baseParams</b> and passed to the specified URL along with the Form's
 * input fields.</p>
 * <p>Parameters are encoded as standard HTTP parameters using <b class='link'>Ext#urlEncode</b>.</p>
 */
/**
 * @cfg {Number} timeout The number of seconds to wait for a server response before
 * failing with the <b class='link'>#failureType</b> as <b class='link'>#Action.CONNECT_FAILURE</b>. If not specified,
 * defaults to the configured <tt><b class='link' title='ext.form.BasicForm#timeout'>timeout</b></tt> of the
 * <b class='link' title='ext.form.BasicForm'>form</b>.
 */
/**
 * @cfg {Function} success The function to call when a valid success return packet is recieved.
 * The function is passed the following parameters:<ul class="mdetail-params">
 * <li><b>form</b> : ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li>
 * <li><b>action</b> : ext.form.Action<div class="sub-desc">The Action class. The <b class='link'>#result</b>
 * property of this object may be examined to perform custom postprocessing.</div></li>
 * </ul>
 */
/**
 * @cfg {Function} failure The function to call when a failure packet was recieved, or when an
 * error ocurred in the Ajax communication.
 * The function is passed the following parameters:<ul class="mdetail-params">
 * <li><b>form</b> : ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li>
 * <li><b>action</b> : ext.form.Action<div class="sub-desc">The Action class. If an Ajax
 * error ocurred, the failure type will be in <b class='link'>#failureType</b>. The <b class='link'>#result</b>
 * property of this object may be examined to perform custom postprocessing.</div></li>
 * </ul>
 */
/**
 * @cfg {Object} scope The scope in which to call the callback functions (The <tt>this</tt> reference
 * for the callback functions).
 */
/**
 * @cfg {String} waitMsg The message to be displayed by a call to <b class='link'>ext.MessageBox#wait</b>
 * during the time the action is being processed.
 */
/**
 * @cfg {String} waitTitle The title to be displayed by a call to <b class='link'>ext.MessageBox#wait</b>
 * during the time the action is being processed.
 */
/**
 * The type of action this Action instance performs.
 * Currently only "submit" and "load" are supported.
 */
    public var type  : String;
/**
 * The type of failure detected will be one of these: <b class='link'>#CLIENT_INVALID</b>,
 * <b class='link'>#SERVER_INVALID</b>, <b class='link'>#CONNECT_FAILURE</b>, or <b class='link'>#LOAD_FAILURE</b>.  Usage:
 * <pre><code>
var fp = new ext.form.FormPanel({
...
buttons: [{
    text: 'Save',
    formBind: true,
    handler: function(){
        if(fp.getForm().isValid()){
            fp.getForm().submit({
                url: 'form-submit.php',
                waitMsg: 'Submitting your data...',
                success: function(form, action){
                    // server responded with success = true
                    var result = action.<b class='link'>#result</b>;
                },
                failure: function(form, action){
                    if (action.<b class='link'>#failureType</b> === ext.form.Action.<b class='link'>#CONNECT_FAILURE</b>) {
                        ext.Msg.alert('Error',
                            'Status:'+action.<b class='link'>#response</b>.status+': '+
                            action.<b class='link'>#response</b>.statusText);
                    }
                    if (action.failureType === ext.form.Action.<b class='link'>#SERVER_INVALID</b>){
                        // server responded with success = false
                        ext.Msg.alert('Invalid', action.<b class='link'>#result</b>.errormsg);
                    }
                }
            });
        }
    }
},{
    text: 'Reset',
    handler: function(){
        fp.getForm().reset();
    }
}]
 * </code></pre>
 * @property failureType
 */
 /**
 * The XMLHttpRequest object used to perform the action.
 * @property response
 */
 /**
 * The decoded response object containing a boolean <tt style="font-weight:bold">success</tt> property and
 * other, action-specific properties.
 * @property result
 */
    public native function run(options) : void;
    public native function success(response) : void;
    public native function handleResponse(response) : void;
    public native function failure(response) : void;
    protected native function processResponse(response) : void;
    public native function getUrl(appendParams) : void;
    protected native function getMethod() : void;
    protected native function getParams() : void;
    protected native function createCallback(opts) : void;
/**
*/
}}
