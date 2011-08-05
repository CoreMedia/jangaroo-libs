package ext.config {

import joo.JavaScriptObject;

/**
 * The subclasses of this class provide actions to perform upon <a href="Ext.form.BasicForm.html">Form</a>s.
 <p>Instances of this class are only created by a <a href="Ext.form.BasicForm.html">Form</a> when the Form needs to perform an action such as submit or load. The Configuration options listed for this class are set through the Form's action methods: <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a></p><p>The instance of Action which performed the action is passed to the success and failure callbacks of the Form's action methods (<a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-submit">submit</a>, <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-load">load</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-doAction">doAction</a>), and to the <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-actioncomplete">actioncomplete</a> and <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-actionfailed">actionfailed</a> event handlers.</p>
 * <p>This class serves as a typed config object for constructor of class Action.</p>
 *
 * @see ext.form.Action
 */
[ExtConfig(target="ext.form.Action")]
public class formaction extends JavaScriptObject {

  public function formaction(config:Object = null) {
    super(config);
  }


  /**
   The function to call when a failure packet was recieved, or when an error ocurred in the Ajax communication. The function is passed the following parameters:<ul class="mdetail-params"><li><b>form</b> : Ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li><li><b>action</b> : Ext.form.Action<div class="sub-desc">The Action class. If an Ajax error ocurred, the failure type will be in <a href="output/Ext.form.Action.html#Ext.form.Action-failureType">failureType</a>. The <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a> property of this object may be examined to perform custom postprocessing.</div></li></ul>
   */
  public native function get failure():Function;

  /**
   * @private
   */
  public native function set failure(value:Function):void;

  /**
   The HTTP method to use to access the requested URL. Defaults to the <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a>'s method, or if that is not specified, the underlying DOM form's method.
   */
  public native function get method():String;

  /**
   * @private
   */
  public native function set method(value:String):void;

  /**
   Extra parameter values to pass. These are added to the Form's <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-baseParams">Ext.form.BasicForm.baseParams</a> and passed to the specified URL along with the Form's input fields.
   <p>Parameters are encoded as standard HTTP parameters using <a href="output/Ext.html#Ext-urlEncode">Ext.urlEncode</a>.</p>
   */
  public native function get params():*;

  /**
   * @private
   */
  public native function set params(value:*):void;

  /**
   When set to <tt><b>true</b></tt>, causes the Form to be <a href="Ext.form.BasicForm.reset.html">reset</a> on Action success. If specified, this happens <b>before</b> the <a href="output/Ext.form.Action.html#Ext.form.Action-success">success</a> callback is called and before the Form's <a href="Ext.form.BasicForm.actioncomplete.html">actioncomplete</a> event fires.
   */
  public native function get reset():Boolean;

  /**
   * @private
   */
  public native function set reset(value:Boolean):void;

  /**
   The scope in which to call the callback functions (The <tt>this</tt> reference for the callback functions).
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   If set to <tt>true</tt>, the emptyText value will be sent with the form when it is submitted. Defaults to <tt>true</tt>.
   */
  public native function get submitEmptyText():Boolean;

  /**
   * @private
   */
  public native function set submitEmptyText(value:Boolean):void;

  /**
   The function to call when a valid success return packet is recieved. The function is passed the following parameters:<ul class="mdetail-params"><li><b>form</b> : Ext.form.BasicForm<div class="sub-desc">The form that requested the action</div></li><li><b>action</b> : Ext.form.Action<div class="sub-desc">The Action class. The <a href="output/Ext.form.Action.html#Ext.form.Action-result">result</a> property of this object may be examined to perform custom postprocessing.</div></li></ul>
   */
  public native function get success():Function;

  /**
   * @private
   */
  public native function set success(value:Function):void;

  /**
   The number of seconds to wait for a server response before failing with the <a href="output/Ext.form.Action.html#Ext.form.Action-failureType">failureType</a> as <a href="output/Ext.form.Action.html#Ext.form.Action-Action.CONNECT_FAILURE">Action.CONNECT_FAILURE</a>. If not specified, defaults to the configured <tt><a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-timeout">timeout</a></tt> of the <a href="Ext.form.BasicForm.html">form</a>.
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   The URL that the Action is to invoke.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   The message to be displayed by a call to <a href="output/Ext.MessageBox.html#Ext.MessageBox-wait">Ext.MessageBox.wait</a> during the time the action is being processed.
   */
  public native function get waitMsg():String;

  /**
   * @private
   */
  public native function set waitMsg(value:String):void;

  /**
   The title to be displayed by a call to <a href="output/Ext.MessageBox.html#Ext.MessageBox-wait">Ext.MessageBox.wait</a> during the time the action is being processed.
   */
  public native function get waitTitle():String;

  /**
   * @private
   */
  public native function set waitTitle(value:String):void;


}
}
    