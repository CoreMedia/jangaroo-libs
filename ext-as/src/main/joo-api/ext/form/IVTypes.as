package ext.form {


/**
 * This is a singleton object which contains a set of commonly used field validation functions. The validations provided are basic and intended to be easily customizable and extended.
 <p>To add custom VTypes specify the <code><a href="output/Ext.form.TextField.html#Ext.form.TextField-vtype">vtype</a></code> validation test function, and optionally specify any corresponding error text to display and any keystroke filtering mask to apply. For example:</p><pre><code>// custom Vtype for vtype:'time'
 var timeTest = /^([1-9]|1[0-9]):([0-5][0-9])(\s[a|p]m)$/i;
 Ext.apply(Ext.form.VTypes, {
 //  vtype validation function
 time: function(val, field) {
 return timeTest.test(val);
 },
 // vtype Text property: The error text to display when the validation function returns false
 timeText: 'Not a valid time.  Must be in the format "12:34 PM".',
 // vtype Mask property: The keystroke filter mask
 timeMask: /[\d\s:amp]/i
 });
 </code></pre>Another example: <pre><code>// custom Vtype for vtype:'IPAddress'
 Ext.apply(Ext.form.VTypes, {
 IPAddress:  function(v) {
 return /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/.test(v);
 },
 IPAddressText: 'Must be a numeric IP address',
 IPAddressMask: /[\d\.]/i
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton VTypes.</p>
 * @see ext.form.#VTypes ext.form.VTypes
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#cls-Ext.form.VTypes Ext JS source
 */
public interface IVTypes {

  /**
   The keystroke filter mask to be applied on alpha input. Defaults to: <tt>/[a-z_]/i</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-alphaMask Ext JS source
   */
  function get alphaMask():RegExp;

  /**
   * @private
   */
  function set alphaMask(value:RegExp):void;

  /**
   The error text to display when the alpha validation function returns false. Defaults to: <tt>'This field should only contain letters and _'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-alphaText Ext JS source
   */
  function get alphaText():String;

  /**
   * @private
   */
  function set alphaText(value:String):void;

  /**
   The keystroke filter mask to be applied on alphanumeric input. Defaults to: <tt>/[a-z0-9_]/i</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-alphanumMask Ext JS source
   */
  function get alphanumMask():RegExp;

  /**
   * @private
   */
  function set alphanumMask(value:RegExp):void;

  /**
   The error text to display when the alphanumeric validation function returns false. Defaults to: <tt>'This field should only contain letters, numbers and _'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-alphanumText Ext JS source
   */
  function get alphanumText():String;

  /**
   * @private
   */
  function set alphanumText(value:String):void;

  /**
   The keystroke filter mask to be applied on email input. See the <a href="output/Ext.form.VTypes.html#Ext.form.VTypes-email">email</a> method for information about more complex email validation. Defaults to: <tt>/[a-z0-9_\.\-\+\'&#64;]/i</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-emailMask Ext JS source
   */
  function get emailMask():RegExp;

  /**
   * @private
   */
  function set emailMask(value:RegExp):void;

  /**
   The error text to display when the email validation function returns false. Defaults to: <tt>'This field should be an e-mail address in the format "user&#64;example.com"'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-emailText Ext JS source
   */
  function get emailText():String;

  /**
   * @private
   */
  function set emailText(value:String):void;

  /**
   The error text to display when the url validation function returns false. Defaults to: <tt>'This field should be a URL in the format "http:/'+'/www.example.com"'</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#prop-Ext.form.VTypes-urlText Ext JS source
   */
  function get urlText():String;

  /**
   * @private
   */
  function set urlText(value:String):void;

  /**
   * The function used to validate alpha values
   *
   * @param value The value
   * @return true if the RegExp test passed, and false if not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#method-Ext.form.VTypes-alpha Ext JS source
   */
  function alpha(value:String):Boolean;

  /**
   * The function used to validate alphanumeric values
   *
   * @param value The value
   * @return true if the RegExp test passed, and false if not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#method-Ext.form.VTypes-alphanum Ext JS source
   */
  function alphanum(value:String):Boolean;

  /**
   * The function used to validate email addresses. Note that this is a very basic validation -- complete validation per the email RFC specifications is very complex and beyond the scope of this class, although this function can be overridden if a more comprehensive validation scheme is desired. See the validation section of the <a href="http://en.wikipedia.org/wiki/E-mail_address">Wikipedia article on email addresses</a> for additional information. This implementation is intended to validate the following emails:<tt>'barney&#64;example.de', 'barney.rubble&#64;example.com', 'barney-rubble&#64;example.coop', 'barney+rubble&#64;example.com'</tt> .
   *
   * @param value The email address
   * @return true if the RegExp test passed, and false if not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#method-Ext.form.VTypes-email Ext JS source
   */
  function email(value:String):Boolean;

  /**
   * The function used to validate URLs
   *
   * @param value The URL
   * @return true if the RegExp test passed, and false if not.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/VTypes.html#method-Ext.form.VTypes-url Ext JS source
   */
  function url(value:String):Boolean;

}
}
    