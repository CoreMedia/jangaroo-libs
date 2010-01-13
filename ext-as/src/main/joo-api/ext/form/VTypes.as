package ext.form {
/**
 * <p>This is a singleton object which contains a set of commonly used field validation functions.
 * The validations provided are basic and intended to be easily customizable and extended.</p>
 * <p>To add custom VTypes specify the <code><b class='link' title='ext.form.TextField#vtype'>vtype</b></code> validation
 * test function, and optionally specify any corresponding error text to display and any keystroke
 * filtering mask to apply. For example:</p>
 * <pre><code>
&#47;/ custom Vtype for vtype:'time'
var timeTest = /^([1-9]|1[0-9]):([0-5][0-9])(\s[a|p]m)$/i;
Ext.apply(ext.form.VTypes, {
    &#47;/  vtype validation function
    time&#58; function(val, field) {
        return timeTest.test(val);
    },
    &#47;/ vtype Text property: The error text to display when the validation function returns false
    timeText&#58; 'Not a valid time.  Must be in the format "12:34 PM".',
    &#47;/ vtype Mask property: The keystroke filter mask
    timeMask&#58; /[\d\s:amp]/i
});
 * </code></pre>
 * Another example: 
 * <pre><code>
&#47;/ custom Vtype for vtype:'IPAddress'
Ext.apply(ext.form.VTypes, {
    IPAddress&#58;  function(v) {
        return /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/.test(v);
    },
    IPAddressText&#58; 'Must be a numeric IP address',
    IPAddressMask&#58; /[\d\.]/i
});
 * </code></pre>
*/
public class VTypes {
/**
 * @singleton
 */
        /**
         * The function used to validate email addresses.  Note that this is a very basic validation -- complete
         * validation per the email RFC specifications is very complex and beyond the scope of this class, although
         * this function can be overridden if a more comprehensive validation scheme is desired.  See the validation
         * section of the <a href="http://en.wikipedia.org/wiki/E-mail_address">Wikipedia article on email addresses</a> 
         * for additional information.  This implementation is intended to validate the following emails:<code>
         * 'barney@example.de', 'barney.rubble@example.com', 'barney-rubble@example.coop', 'barney+rubble@example.com'
         * </code>.
         * @param value The email address
         * @return true if the RegExp test passed, and false if not.
         */
        /**
         * The error text to display when the email validation function returns false.  Defaults to:
         * <code>'This field should be an e-mail address in the format "user@example.com"'</code>
         */
        /**
         * The keystroke filter mask to be applied on email input.  See the <b class='link' title='#email'>email</b> method for 
         * information about more complex email validation. Defaults to:
         * <code>/[a-z0-9_\.\-@]/i</code>
         */
        /**
         * The function used to validate URLs
         * @param value The URL
         * @return true if the RegExp test passed, and false if not.
         */
        /**
         * The error text to display when the url validation function returns false.  Defaults to:
         * <code>'This field should be a URL in the format "http:/'+'/www.example.com"'</code>
         */
        /**
         * The function used to validate alpha values
         * @param value The value
         * @return true if the RegExp test passed, and false if not.
         */
        /**
         * The error text to display when the alpha validation function returns false.  Defaults to:
         * <code>'This field should only contain letters and _'</code>
         */
        /**
         * The keystroke filter mask to be applied on alpha input.  Defaults to:
         * <code>/[a-z_]/i</code>
         */
        /**
         * The function used to validate alphanumeric values
         * @param value The value
         * @return true if the RegExp test passed, and false if not.
         */
        /**
         * The error text to display when the alphanumeric validation function returns false.  Defaults to:
         * <code>'This field should only contain letters, numbers and _'</code>
         */
        /**
         * The keystroke filter mask to be applied on alphanumeric input.  Defaults to:
         * <code>/[a-z0-9_]/i</code>
         */
}}
