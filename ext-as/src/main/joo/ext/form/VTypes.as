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
 * @see ext.form.IVTypes
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.VTypes Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.VTypes")]
public const VTypes:IVTypes;

}
