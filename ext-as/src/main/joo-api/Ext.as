package {

import ext.Component;
import ext.Element;

import js.HTMLElement;
import js.Node;

/**
 * Ext core utilities and functions.
*/
public class Ext {
/**
 * @singleton
 */
    /**
     * The version of the framework
     */
    public static var version  : String;
        /**
         * URL to a blank file used by Ext when in secure mode for iframe src and onReady src to prevent
         * the IE insecure content warning (defaults to javascript:false).
         */
        public static var SSL_SECURE_URL  : String;
        /**
         * True if the browser is in strict (standards-compliant) mode, as opposed to quirks mode
         */
        public static var isStrict  : Boolean;
        /**
         * True if the page is running over SSL
         */
        public static var isSecure  : Boolean;
        /**
         * True when the document is fully initialized and ready for action
         */
        public static var isReady  : Boolean;
        /**
         * True if the <b class='link'>ext.Fx</b> Class is available
         * @property enableFx
         */
        /**
         * True to automatically uncache orphaned ext.Elements periodically (defaults to true)
         */
        public static var enableGarbageCollector  : Boolean;
        /**
         * True to automatically purge event listeners after uncaching an element (defaults to false).
         * Note: this only happens if <b class='link'>#enableGarbageCollector</b> is true.
         */
        public static var enableListenerCollection  : Boolean;
        /**
         * Indicates whether to use native browser parsing for JSON methods.
         * This option is ignored if the browser does not support native JSON methods.
         * <b>Note: Native JSON methods will not work with objects that have functions.
         * Also, property names must be quoted, otherwise the data will not parse.</b> (Defaults to false)
         */
        public static var USE_NATIVE_JSON  : Boolean;
        /**
         * Copies all the properties of config to obj.
         * @param obj The receiver of the properties
         * @param config The source of the properties
         * @param defaults A different object that will also be applied for default values
         * @return {Object} returns obj
         */
        public static native function apply (obj : Object, config : Object, defaults : Object = null) : Object;
        /**
         * Copies all the properties of config to obj if they don't already exist.
         * @param obj The receiver of the properties
         * @param config The source of the properties
         * @return {Object} returns obj
         */
        public static native function applyIf(obj : Object, config : Object) : Object;
        /**
         * Generates unique ids. If the element already has an id, it is unchanged
         * @param el The element to generate an id for
         * @param prefix Id prefix (defaults "ext-gen")
         * @return {String} The generated Id.
         */
        public static native function id(el : * = undefined, prefix : String = undefined) : String;
        /**
         * Extends one class with another class and optionally overrides members with the passed literal. This class
         * also adds the function "override()" to the class that can be used to override
         * members on an instance.
         * * <p>
         * This function also supports a 2-argument call in which the subclass's constructor is
         * not passed as an argument. In this form, the parameters are as follows:</p><p>
         * <div class="mdetail-params"><ul>
         * <li><code>superclass</code>
         * <div class="sub-desc">The class being extended</div></li>
         * <li><code>overrides</code>
         * <div class="sub-desc">A literal with members which are copied into the subclass's
         * prototype, and are therefore shared among all instances of the new class.<p>
         * This may contain a special member named <tt><b>constructor</b></tt>. This is used
         * to define the constructor of the new class, and is returned. If this property is
         * <i>not</i> specified, a constructor is generated and returned which just calls the
         * superclass's constructor passing on its parameters.</p></div></li>
         * </ul></div></p><p>
         * For example, to create a subclass of the Ext GridPanel:
         * <pre><code>
MyGridPanel = Ext.extend(Ext.grid.GridPanel, {
    constructor: function(config) {
        // Your preprocessing here
        MyGridPanel.superclass.constructor.apply(this, arguments);
        // Your postprocessing here
    },

    yourMethod: function() {
        // etc.
    }
});
</code></pre>
         * </p>
         * @param subclass The class inheriting the functionality
         * @param superclass The class being extended
         * @param overrides A literal with members which are copied into the subclass's
         * prototype, and are therefore shared between all instances of the new class.
         * @return {Class} The subclass constructor.
         */
        public static native function extend(subclass : Class, superclass : *, overrides : Object = undefined) : Class;
        /**
         * Adds a list of functions to the prototype of an existing class, overwriting any existing methods with the same name.
         * Usage:<pre><code>
Ext.override(MyClass, {
    newMethod1: function(){
        // etc.
    },
    newMethod2: function(foo){
        // etc.
    }
});
</code></pre>
         * @param origclass The class to override
         * @param overrides The list of functions to add to origClass.  This should be specified as an object literal
         * containing one or more methods.
         */
        public static native function override(origclass : Object, overrides : Object) : void;
        /**
         * Creates namespaces to be used for scoping variables and classes so that they are not global.
         * Specifying the last node of a namespace implicitly creates all other nodes. Usage:
         * <pre><code>
Ext.namespace('Company', 'Company.data');
Ext.namespace('Company.data'); // equivalent and preferable to above syntax
Company.Widget = function() { ... }
Company.data.CustomStore = function(config) { ... }
</code></pre>
         * @param namespace1
         * @param etc
         * @return Object the last newly created or retrieved namespace
         */
        public static native function namespace(namespace1 : String, ...etc) : Object;
        /**
         * Takes an object and converts it to an encoded URL. e.g. Ext.urlEncode({foo: 1, bar: 2}); would return "foo=1&bar=2".  Optionally, property values can be arrays, instead of keys and the resulting string that's returned will contain a name/value pair for each array value.
         * @param o
         * @param pre A prefix to add to the url encoded string
         * @return 
         */
        public static native function urlEncode(o : Object, pre : String = undefined) : String;
        /**
         * Takes an encoded URL and and converts it to an object. Example: <pre><code>
Ext.urlDecode("foo=1&bar=2"); // returns {foo: "1", bar: "2"}
Ext.urlDecode("foo=1&bar=2&bar=3&bar=4", false); // returns {foo: "1", bar: ["2", "3", "4"]}
</code></pre>
         * @param string
         * @param overwrite Items of the same name will overwrite previous values instead of creating an an array (Defaults to false).
         * @return A literal with members
         */
        public static native function urlDecode(string : String, overwrite : Boolean = undefined) : Object;
        /**
         * Appends content to the query string of a URL, which handles logic for whether to place
         * a question mark or ampersand.
         * @param url The url to append to.
         * @param s The content to append to the url.
         * @return (String) The appended string
         */
        public static native function urlAppend(url : String, s : String) : void;
        /**
         * Converts any iterable (numeric indices and a length property) into a true array
         * Don't use this on strings. IE doesn't support "abc"[0] which this implementation depends on.
         * For strings, use this instead: "abc".match(/./g) => [a,b,c];
         * @param iterable the iterable object to be turned into a true Array.
         * @return (Array) array
         */
        public static native function toArray(iterable : Object) : void;
        /**
         * Iterates an array calling the passed function with each item, stopping if your function returns false. If the
         * passed array is not really an array, your function is called once with it.
         * The supplied function is called with (Object item, Number index, Array allItems).
         * @param array
         * @param fn
         * @param scope
         */
        public static native function each(array : *, fn : Function, scope : Object) : void;
        /**
         * Iterates either the elements in an array, or each of the properties in an object.
         * <b>Note</b>: If you are only iterating arrays, it is better to call <b class='link'>#each</b>.
         * @param object The object or array to be iterated
         * @param fn The function to be called for each iteration.
         * The iteration will stop if the supplied function returns false, or
         * all array elements / object properties have been covered. The signature
         * varies depending on the type of object being interated:
         * <div class="mdetail-params"><ul>
         * <li>Arrays : <tt>(Object item, Number index, Array allItems)</tt>
         * <div class="sub-desc">
         * When iterating an array, the supplied function is called with each item.</div></li>
         * <li>Objects : <tt>(String key, Object value)</tt>
         * <div class="sub-desc">
         * When iterating an object, the supplied function is called with each key-value pair in
         * the object.</div></li>
         * </ul></div>
         * @param scope The scope to call the supplied function with, defaults to
         * the specified <tt>object</tt>
         */
        public static native function iterate(object : *, fn : Function, scope : Object) : void;
        /**
         * Return the dom node for the passed String (id), dom node, or ext.Element.
         * Here are some examples:
         * <pre><code>
// gets dom node based on id
var elDom = Ext.getDom('elId');
// gets dom node based on the dom node
var elDom1 = Ext.getDom(elDom);

// If we don&#39;t know if we are working with an
// ext.Element or a dom node use Ext.getDom
function(el){
    var dom = Ext.getDom(el);
    // do something with the dom node
}
         * </code></pre>
         * <b>Note</b>: the dom node to be found actually needs to exist (be rendered, etc)
         * when this method is called to be successful.
         * @param el
         * @return 
         */
        public static native function getDom(el : *) : HTMLElement;
        /**
         * Returns the current document body as an <b class='link'>ext.Element</b>.
         * @return The document body
         */
        public static native function getBody() : Element;
        /**
         * Removes a DOM node from the document.  The body node will be ignored if passed in.
         * @param node The node to remove
         */
        public static native function removeNode(node : Node) : void;
        /**
         * <p>Returns true if the passed value is empty.</p>
         * <p>The value is deemed to be empty if it is<div class="mdetail-params"><ul>
         * <li>null</li>
         * <li>undefined</li>
         * <li>an empty array</li>
         * <li>a zero length string (Unless the <tt>allowBlank</tt> parameter is <tt>true</tt>)</li>
         * </ul></div>
         * @param value The value to test
         * @param allowBlank true to allow empty strings (defaults to false)
         * @return 
         */
        public static native function isEmpty(value : *, allowBlank : Boolean = undefined) : Boolean;
        /**
         * Returns true if the passed object is a JavaScript array, otherwise false.
         * @param object The object to test
         * @return 
         */
        public static native function isArray(object : Object) : Boolean;
        /**
         * Returns true if the passed object is a JavaScript Object, otherwise false.
         * @param object The object to test
         * @return 
         */
        public static native function isObject(object : Object) : Boolean;
        /**
         * Returns true if the passed object is a JavaScript 'primitive', a string, number or boolean.
         * @param value The value to test
         * @return 
         */
        public static native function isPrimitive(value : *) : Boolean;
        /**
         * Returns true if the passed object is a JavaScript Function, otherwise false.
         * @param object The object to test
         * @return 
         */
        public static native function isFunction(object : Object) : Boolean;
        /**
         * Returns true if the passed object is a number. Returns false for non-finite numbers.
         * @param v The object to test
         * @return 
         */
        public static native function isNumber(v : Object) : Boolean;
        /**
         * Returns true if the passed object is a string.
         * @param v The object to test
         * @return 
         */
        public static native function isString(v : Object) : Boolean;
        /**
         * Returns true if the passed object is a boolean.
         * @param v The object to test
         * @return 
         */
        public static native function isBoolean(v : Object) : Boolean;
        /**
         * Returns true if the passed object is not undefined.
         * @param v The object to test
         * @return 
         */
        public static native function isDefined(v : Object) : Boolean;
        /**
         * True if the detected browser is Opera.
         */
        public static var isOpera  : Boolean;
        /**
         * True if the detected browser uses WebKit.
         */
        public static var isWebKit : Boolean;
        /**
         * True if the detected browser is Chrome.
         */
        public static var isChrome  : Boolean;
        /**
         * True if the detected browser is Safari.
         */
        public static var isSafari  : Boolean;
        /**
         * True if the detected browser is Safari 3.x.
         */
        /**
         * True if the detected browser is Safari 4.x.
         */
        /**
         * True if the detected browser is Safari 2.x.
         */
        /**
         * True if the detected browser is Internet Explorer.
         */
        public static var isIE  : Boolean;
        /**
         * True if the detected browser is Internet Explorer 6.x.
         */
        /**
         * True if the detected browser is Internet Explorer 7.x.
         */
        /**
         * True if the detected browser is Internet Explorer 8.x.
         */
        /**
         * True if the detected browser uses the Gecko layout engine (e.g. Mozilla, Firefox).
         */
        public static var isGecko  : Boolean;
        /**
         * True if the detected browser uses a pre-Gecko 1.9 layout engine (e.g. Firefox 2.x).
         */
        /**
         * True if the detected browser uses a Gecko 1.9+ layout engine (e.g. Firefox 3.x).
         */
        /**
         * True if the detected browser is Internet Explorer running in non-strict mode.
         */
        public static var isBorderBox  : Boolean;
        /**
         * True if the detected platform is Linux.
         */
        public static var isLinux  : Boolean;
        /**
         * True if the detected platform is Windows.
         */
        public static var isWindows  : Boolean;
        /**
         * True if the detected platform is Mac OS.
         */
        public static var isMac  : Boolean;
        /**
         * True if the detected platform is Adobe Air.
         */
        public static var isAir  : Boolean;
    /**
     * Creates namespaces to be used for scoping variables and classes so that they are not global.
     * Specifying the last node of a namespace implicitly creates all other nodes. Usage:
     * <pre><code>
Ext.ns('Company', 'Company.data');
Ext.ns('Company.data'); // equivalent and preferable to above syntax
Company.Widget = function() { ... }
Company.data.CustomStore = function(config) { ... }
</code></pre>
     * @param namespace1
     * @param etc
     * @return Object the last newly created or retrieved namespace
     */
    public static native function ns(namespace1 : String, ...etc) : Object;
/**
*/
/**
 */
    /**
     * Namespace alloted for extensions to the framework.
     * @property ux
     */
        /**
        * A reusable empty function
        * @property
        */
        public static native function emptyFn() : void;
        /**
         * URL to a 1x1 transparent gif image used by Ext to create inline icons with CSS background images. 
         * In older versions of IE, this defaults to "http://extjs.com/s.gif" and you should change this to a URL on your server.
         * For other browsers it uses an inline data URL.
         */
        public static var BLANK_IMAGE_URL  : String;
        public static native function extendX(supr, fn) : void;
        /**
         * Returns the current HTML document object as an <b class='link'>ext.Element</b>.
         * @return The document
         */
        public static native function getDoc() : Element;
        /**
         * Returns true if the passed object is a JavaScript date object, otherwise false.
         * @param object The object to test
         * @return 
         */
        public static native function isDate(object : Object) : Boolean;
        /**
         * Utility method for validating that a value is numeric, returning the specified default value if it is not.
         * @param value Should be a number, but any type will be handled appropriately
         * @param defaultValue The value to return if the original value is non-numeric
         * @return Value, if numeric, else defaultValue
         */
        public static native function num(value : *, defaultValue : Number) : Number;
        /**
         * <p>Utility method for returning a default value if the passed value is empty.</p>
         * <p>The value is deemed to be empty if it is<div class="mdetail-params"><ul>
         * <li>null</li>
         * <li>undefined</li>
         * <li>an empty array</li>
         * <li>a zero length string (Unless the <tt>allowBlank</tt> parameter is <tt>true</tt>)</li>
         * </ul></div>
         * @param value The value to test
         * @param defaultValue The value to return if the original value is empty
         * @param allowBlank true to allow zero length strings to qualify as non-empty (defaults to false)
         * @return value, if non-empty, else defaultValue
         */
        public static native function value(value : *, defaultValue : *, allowBlank : Boolean = undefined) : *;
        /**
         * Escapes the passed string for use in a regular expression
         * @param str
         * @return 
         */
        public static native function escapeRe(str : String) : String;
        public static native function sequence(o, name, fn, scope) : void;
        /**
         * Applies event listeners to elements by selectors when the document is ready.
         * The event name is specified with an <tt>&#64;</tt> suffix.
         * <pre><code>
Ext.addBehaviors({
    // add a listener for click on all anchors in element with id foo
    '#foo a&#64;click' : function(e, t){
        // do something
    },
    
    // add the same listener to multiple selectors (separated by comma BEFORE the &#64;)
    '#foo a, #bar span.some-class&#64;mouseover' : function(){
        // do something
    }
});
         * </code></pre> 
         * @param obj The list of behaviors to apply
         */
        public static native function addBehaviors(obj : Object) : void;
        public static native function combine() : void;
        /**
         * Copies a set of named properties fom the source object to the destination object.
         * <p>example:<pre><code>
package {
import ext.BoxComponent;
public class ImageComponent extends BoxComponent {
  override protected function initComponent():void {
    this.autoEl = { tag: 'img' };
    super.initComponent();
    this.initialBox = Ext.copyTo({}, this.initialConfig, 'x,y,width,height');
  }
}
}
         * </code></pre> 
         * @param dest The destination object.
         * @param source The source object.
         * @param names Either an Array of property names, or a comma-delimited list
         * of property names to copy.
         * @return {Object} The modified object.
        */
        public static native function copyTo(dest : Object, source : Object, names : *) : Object;
        /**
         * Attempts to destroy any objects passed to it by removing all event listeners, removing them from the
         * DOM (if applicable) and calling their destroy functions (if available).  This method is primarily
         * intended for arguments of type <b class='link'>ext.Element</b> and <b class='link'>ext.Component</b>, but any subclass of
         * <b class='link'>Ext.util.Observable</b> can be passed in.  Any number of elements and/or components can be
         * passed into this function in a single call as separate arguments.
         * @param arg1 An <b class='link'>ext.Element</b>, <b class='link'>ext.Component</b>, or an Array of either of these to destroy
         * @param arg2
         * @param etc
         */
        public static native function destroy(arg1 : *, arg2 : * = undefined, ...etc) : void;
        /**
         * Attempts to destroy and then remove a set of named properties of the passed object.
         * @param o The object (most likely a Component) who's properties you wish to destroy.
         * @param arg1 The name of the property to destroy and remove from the object.
         * @param etc More property names to destroy and remove.
         */
        public static native function destroyMembers(o : Object, arg1 : *, ...etc) : void;
        /**
         * Creates a copy of the passed Array with falsy values removed.
         * @param arr The Array from which to remove falsy values.
         * @return {Array} The new, compressed Array.
         */
        public static native function clean(arr : *) : Array;
        /**
         * Creates a copy of the passed Array, filtered to contain only unique values.
         * @param arr The Array to filter
         * @return {Array} The new Array containing unique values.
         */
        public static native function unique(arr : Array) : Array;
        /**
         * Recursively flattens into 1-d Array. Injects Arrays inline.
         * @param arr The array to flatten
         * @return {Array} The new, flattened array.
         */
        public static native function flatten(arr : Array) : Array;
        /**
         * Returns the minimum value in the Array.
         * @param arr The Array from which to select the minimum value.
         * @param comp a function to perform the comparision which determines minimization.
         *                   If omitted the "<" operator will be used. Note: gt = 1; eq = 0; lt = -1
         * @return {Object} The minimum value in the Array.
         */
        public static native function min(arr : *, comp : Function = undefined) : Object;
        /**
         * Returns the maximum value in the Array
         * @param arr The Array from which to select the maximum value.
         * @param comp a function to perform the comparision which determines maximization.
         *                   If omitted the ">" operator will be used. Note: gt = 1; eq = 0; lt = -1
         * @return {Object} The maximum value in the Array.
         */
        public static native function max(arr : *, comp : Function = undefined) : Object;
        /**
         * Calculates the mean of the Array
         * @param arr The Array to calculate the mean value of.
         * @return {Number} The mean.
         */
        public static native function mean(arr : Array) : Number;
        /**
         * Calculates the sum of the Array
         * @param arr The Array to calculate the sum value of.
         * @return {Number} The sum.
         */
        public static native function sum(arr : Array) : Number;
        /**
         * Partitions the set into two sets: a true set and a false set.
         * Example: 
         * Example2: 
         * <pre><code>
// Example 1:
Ext.partition([true, false, true, true, false]); // [[true, true, true], [false, false]]

// Example 2:
Ext.partition(
    Ext.query("p"),
    function(val){
        return val.className == "class1"
    }
);
// true are those paragraph elements with a className of "class1",
// false set are those that do not have that className.
         * </code></pre>
         * @param arr The array to partition
         * @param truth a function to determine truth.  If this is omitted the element
         *                   itself must be able to be evaluated for its truthfulness.
         * @return {Array} [true-Array, false-Array]
         */
        public static native function partition(arr : *, truth : Function = undefined) : Array;
        /**
         * Invokes a method on each item in an Array.
         * <pre><code>
// Example:
Ext.invoke(Ext.query("p"), "getAttribute", "id");
// [el1.getAttribute("id"), el2.getAttribute("id"), ..., elN.getAttribute("id")]
         * </code></pre>
         * @param arr The Array of items to invoke the method on.
         * @param methodName The method name to invoke.
         * @param rest Arguments to send into the method invocation.
         * @return {Array} The results of invoking the method on each item in the array.
         */
        public static native function invoke(arr : *, methodName : String, ...rest) : Array;
        /**
         * Plucks the value of a property from each item in the Array
         * <pre><code>
// Example:
Ext.pluck(Ext.query("p"), "className"); // [el1.className, el2.className, ..., elN.className]
         * </code></pre>
         * @param arr The Array of items to pluck the value from.
         * @param prop The property name to pluck from each element.
         * @return {Array} The value from each item in the Array.
         */
        public static native function pluck(arr : *, prop : String) : Array;
        /**
         * <p>Zips N sets together.</p>
         * <pre><code>
// Example 1:
Ext.zip([1,2,3],[4,5,6]); // [[1,4],[2,5],[3,6]]
// Example 2:
Ext.zip(
    [ "+", "-", "+"],
    [  12,  10,  22],
    [  43,  15,  96],
    function(a, b, c){
        return "$" + a + "" + b + "." + c
    }
); // ["$+12.43", "$-10.15", "$+22.96"]
         * </code></pre>
         * @param array First Array to contribute values.
         * @param arr Further Array(s) to contribute values.
         *   If the last item in the argument list is a function, it will drive how the items are zipped together.
         * @return {Array} The zipped set.
         */
        public static native function zip(array:Array, ...arr):Array;
        /**
         * This is shorthand reference to <b class='link'>ext.ComponentMgr#get</b>.
         * Looks up an existing <b class='link' title='ext.Component'>Component</b> by <b class='link' title='ext.Component#id'>id</b>
         * @param id The component <b class='link' title='ext.Component#id'>id</b>
         * @return {Component} The Component, <tt>undefined</tt> if not found, or <tt>null</tt> if a
         * Class was found.
        */
        public static native function getCmp(id : String) : Component;
        /**
         * By default, Ext intelligently decides whether floating elements should be shimmed. If you are using flash,
         * you may want to set this to true.
         */
        public static var useShims : Boolean;
        /**
         * Returns the type of object that is passed in. If the object passed in is null or undefined it
         * return false otherwise it returns one of the following values:<div class="mdetail-params"><ul>
         * <li><b>string</b>: If the object passed is a string</li>
         * <li><b>number</b>: If the object passed is a number</li>
         * <li><b>boolean</b>: If the object passed is a boolean value</li>
         * <li><b>date</b>: If the object passed is a Date object</li>
         * <li><b>function</b>: If the object passed is a function reference</li>
         * <li><b>object</b>: If the object passed is an object</li>
         * <li><b>array</b>: If the object passed is an array</li>
         * <li><b>regexp</b>: If the object passed is a regular expression</li>
         * <li><b>element</b>: If the object passed is a DOM Element</li>
         * <li><b>nodelist</b>: If the object passed is a DOM NodeList</li>
         * <li><b>textnode</b>: If the object passed is a DOM text node and contains something other than whitespace</li>
         * <li><b>whitespace</b>: If the object passed is a DOM text node and contains only whitespace</li>
         * </ul></div>
         * @param object
         * @return 
         */
        public static native function type(object : *) : String;
        public static native function intercept(o, name, fn, scope) : void;
        public static native function callback(cb, scope, args, delay) : void;

  /**
   * Shorthand for <b class='link'>ext.ComponentMgr#registerType</b>
   * @param xtype The <b class='link' title='Ext.component#xtype mnemonic'>string</b> by which the Component class
   * may be looked up.
   * @param cls The new Component class.
   */
  public static native function reg(xtype : String, cls : Class) : void;
  
  /**
   * Shorthand for <b class='link'>ext.ComponentMgr#registerPlugin</b>
   * @param ptype The <b class='link' title='Ext.component#ptype mnemonic'>string</b> by which the Plugin class
   * may be looked up.
   * @param cls The new Plugin class.
   */
  public static native function preg(ptype : String, cls : Class) : void;
  /**
   * Selects an array of DOM nodes by CSS/XPath selector. Shorthand of <b class='link'>ext.DomQuery#select</b>
   * @param path The selector/xpath query
   * @param root The start of the query (defaults to document).
   * @return 
   */
  public static native function query(path : String, root : Node = undefined, type = undefined) : Array;

  /**
   * Retrieves ext.Element objects.
   * <p><b>This method does not retrieve <b class='link' title='ext.Component'>Component</b>s.</b> This method
   * retrieves ext.Element objects which encapsulate DOM elements. To retrieve a Component by
   * its ID, use <b class='link'>ext.ComponentMgr#get</b>.</p>
   * <p>Uses simple caching to consistently return the same object. Automatically fixes if an
   * object was recreated with the same id via AJAX or DOM.</p>
   * Shorthand of <b class='link'>ext.Element#get</b>
   * @param el The id of the node, a DOM Node or an existing Element.
   * @return {Element} The Element object (or null if no matching element was found)
   */
  public static native function get(el : *) : Element;
  /**
   * <p>Gets the globally shared flyweight Element, with the passed node as the active element. Do not store a reference to this element -
   * the dom node can be overwritten by other code. Shorthand of <b class='link'>ext.Element#fly</b></p>
   * <p>Use this to make one-time references to DOM elements which are not going to be accessed again either by
   * application code, or by Ext's classes. If accessing an element which will be processed regularly, then <b class='link'>Ext#get</b>
   * will be more appropriate to take advantage of the caching provided by the ext.Element class.</p>
   * @param el The dom node or id
   * @param named Allows for creation of named reusable flyweights to prevent conflicts
   * (e.g. internally Ext uses "_global")
   * @return {Element} The shared Element object (or null if no matching element was found)
   */
  public static native function fly(el : *, named : String = null) : Element;
  /**
    * Fires when the document is ready (before onload and before images are loaded).  Shorthand of <b class='link'>Ext.EventManager#onDocumentReady</b>.
    * @param fn The method the event invokes
    * @param scope An object that becomes the scope of the handler
    * @param options (optional) An object containing standard <b class='link'>#addListener</b> options
   */
  public static native function onReady(fn : Function, scope : Object = undefined, options : Boolean = undefined) : void;
}}
