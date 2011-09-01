package ext.config {


/**
 * Simple form panel which enables easy getting and setting of field values. Can load model instances. Example usage:
 <pre><code>var form = new Ext.form.FormPanel({
 items: [
 {
 xtype: 'textfield',
 name : 'first',
 label: 'First name'
 },
 {
 xtype: 'textfield',
 name : 'last',
 label: 'Last name'
 },
 {
 xtype: 'numberfield',
 name : 'age',
 label: 'Age'
 },
 {
 xtype: 'urlfield',
 name : 'url',
 label: 'Website'
 }
 ]
 });
 </code></pre><p>Loading model instances:</p><pre><code>Ext.regModel('User', {
 fields: [
 {name: 'first', type: 'string'},
 {name: 'last',  type: 'string'},
 {name: 'age',   type: 'int'},
 {name: 'url',   type: 'string'}
 ]
 });

 var user = Ext.ModelMgr.create({
 first: 'Ed',
 last : 'Spencer',
 age  : 24,
 url  : 'http://extjs.com'
 }, 'User');

 form.load(user);
 </code></pre>
 *
 * <p>This class represents the xtype 'form' and serves as a
 * typed config object for constructor of class FormPanel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.FormPanel
 */
[ExtConfig(target="ext.form.FormPanel", xtype="form")]
public class form extends panel {

  public function form(config:Object = null) {

    super(config);
  }


  /**
   Optional hash of params to be sent (when standardSubmit configuration is false) on every submit.
   */
  public native function get baseParams():Object;

  /**
   * @private
   */
  public native function set baseParams(value:Object):void;

  /**
   Wether or not we want to perform a standard form submit. Defaults to false
   */
  public native function get standardSubmit():Boolean;

  /**
   * @private
   */
  public native function set standardSubmit(value:Boolean):void;

  /**
   When this is set to true, the form will automatically submit itself whenever the 'action' event fires on a field in this form. The action event usually fires whenever you press go or enter inside a textfield.
   */
  public native function get submitOnAction():Object;

  /**
   * @private
   */
  public native function set submitOnAction(value:Object):void;

  /**
   The default Url for submit actions
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;

  /**
   The defined <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-waitMsg">waitMsg</a> template. Used for precise control over the masking agent used to mask the FormPanel (or other Element) during form Ajax/submission actions. For more options, see <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-showMask">showMask</a> method.
   */
  public native function get waitTpl():Object;

  /**
   * @private
   */
  public native function set waitTpl(value:Object):void;


}
}
    