package ext {

import ext.data.Model;
import ext.data.Store;
import ext.form.Number;

import js.HTMLElement;

/**
 * Ext core utilities and functions.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Ext.</p>
 * @see ext.#Ext ext.Ext
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#cls-Ext Ext JS source
 */
public interface IExt {

  /**
   URL to a blank file used by Ext when in secure mode for iframe src and onReady src to prevent the IE insecure content warning (<tt>'about:blank'</tt>, except for IE in secure mode, which is <tt>'javascript:""'</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-SSL_SECURE_URL Ext JS source
   */
  function get SSL_SECURE_URL():String;

  /**
   A reusable empty function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-emptyFn Ext JS source
   */
  function get emptyFn():Function;

  /**
   * @private
   */
  function set emptyFn(value:Function):void;

  /**
   True to automatically uncache orphaned Ext.Elements periodically (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-enableGarbageCollector Ext JS source
   */
  function get enableGarbageCollector():Boolean;

  /**
   * @private
   */
  function set enableGarbageCollector(value:Boolean):void;

  /**
   True to automatically purge event listeners during garbageCollection (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-enableListenerCollection Ext JS source
   */
  function get enableListenerCollection():Boolean;

  /**
   * @private
   */
  function set enableListenerCollection(value:Boolean):void;

  /**
   True when the document is fully initialized and ready for action
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-isReady Ext JS source
   */
  function get isReady():Boolean;

  /**
   * @private
   */
  function set isReady(value:Boolean):void;

  /**
   True if the page is running over SSL
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#prop-Ext-isSecure Ext JS source
   */
  function get isSecure():Boolean;

  /**
   * @private
   */
  function set isSecure(value:Boolean):void;

  /**
   The version of the framework
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#prop-Ext-version Ext JS source
   */
  function get version():String;

  /**
   * @private
   */
  function set version(value:String):void;

  /**
   *
   *
   * @param config The meta tag configuration object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#method-Ext-addMetaTags Ext JS source
   */
  function addMetaTags(config:Object):void;

  /**
   * Copies all the properties of config to obj.
   *
   * @param object The receiver of the properties
   * @param config The source of the properties
   * @param defaults A different object that will also be applied for default values
   * @return returns obj
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-apply Ext JS source
   */
  function apply(object:Object, config:Object, defaults:Object = null):Object;

  /**
   * Copies all the properties of config to obj if they don't already exist.
   *
   * @param obj The receiver of the properties
   * @param config The source of the properties
   * @return returns obj
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-applyIf Ext JS source
   */
  function applyIf(obj:Object, config:Object):Object;

  /**
   * Shorthand for <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-create">Ext.ComponentMgr.create</a> Creates a new Component from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-xtype">xtype</a> to determine the class to instantiate.
   *
   * @param config A configuration object for the Component you wish to create.
   * @param defaultType The constructor to provide the default Component type if the config object does not contain a <code>xtype</code>. (Optional if the config contains a <code>xtype</code>).
   * @return The newly instantiated Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentMgr.html#method-Ext-create Ext JS source
   */
  function create(config:Object, defaultType:Class):Component;

  /**
   * Shorthand for <a href="output/Ext.util.JSON.html#Ext.util.JSON-decode">Ext.util.JSON.decode</a>
   *
   * @param json The JSON string
   * @param safe Whether to return null or throw an exception if the JSON is invalid.
   * @return The resulting object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#method-Ext-decode Ext JS source
   */
  function decode(json:String, safe:Boolean = false):Object;

  /**
   * Shorthand for <a href="output/Ext.util.Functions.html#Ext.util.Functions-createDelegate">Ext.util.Functions.createDelegate</a>
   *
   * @param fn The function to delegate.
   * @param scope The scope (<code><b>this</b></code> reference) in which the function is executed. <b>If omitted, defaults to the browser window.</b>
   * @param args Overrides arguments for the call. (Defaults to the arguments passed by the caller)
   * @param appendArgs if True args are appended to call args instead of overriding, if a number the args are inserted at the specified position
   * @return The new function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#method-Ext-defer Ext JS source
   */
  function defer(fn:Function, scope:Object = null, args:Array = null, appendArgs:* = null):Function;

  /**
   * Attempts to destroy any objects passed to it by removing all event listeners, removing them from the DOM (if applicable) and calling their destroy functions (if available). This method is primarily intended for arguments of type <a href="Ext.Element.html">Ext.Element</a> and <a href="Ext.Component.html">Ext.Component</a>, but any subclass of <a href="Ext.util.Observable.html">Ext.util.Observable</a> can be passed in. Any number of elements and/or components can be passed into this function in a single call as separate arguments.
   *
   * @param arg1 An <a href="Ext.Element.html">Ext.Element</a>, <a href="Ext.Component.html">Ext.Component</a>, or an Array of either of these to destroy
   * @param arg2
   * @param etc
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-destroy Ext JS source
   */
  function destroy(arg1:*, arg2:* = null, ...etc:Array):void;

  /**
   * Shorthand for <a href="output/Ext.Dispatcher.html#Ext.Dispatcher-dispatch">Ext.Dispatcher.dispatch</a>. Dispatches a request to a controller action
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#method-Ext-dispatch Ext JS source
   */
  function dispatch():void;

  /**
   * Iterates an array calling the supplied function.
   *
   * @param array The array to be iterated. If this argument is not really an array, the supplied function is called once.
   * @param fn The function to be called with each item. If the supplied function returns false, iteration stops and this method returns the current <code>index</code>. This function is called with the following arguments: <div class="mdetail-params"><ul><li><code>item</code> : <i>Mixed</i> <div class="sub-desc">The item at the current <code>index</code> in the passed <code>array</code></div></li><li><code>index</code> : <i>Number</i> <div class="sub-desc">The current index within the array</div></li><li><code>allItems</code> : <i>Array</i> <div class="sub-desc">The <code>array</code> passed as the first argument to <code>Ext.each</code>.</div></li></ul></div>
   * @param scope The scope (<code>this</code> reference) in which the specified function is executed. Defaults to the <code>item</code> at the current <code>index</code>util within the passed <code>array</code>.
   * @return description for the fn parameter.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-each Ext JS source
   */
  function each(array:*, fn:Function, scope:Object):int;

  /**
   * Shorthand for <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">Ext.util.JSON.encode</a>
   *
   * @param o The variable to encode
   * @return The JSON string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/JSON.html#method-Ext-encode Ext JS source
   */
  function encode(o:*):String;

  /**
   * Extends one class to create a subclass and optionally overrides members with the passed literal. This method also adds the function "override()" to the subclass that can be used to override members of the class.
   For example, to create a subclass of Ext GridPanel: <pre><code>MyGridPanel = Ext.extend(Ext.grid.GridPanel, {
   constructor: function(config) {

   //      Create configuration for this Grid.
   var store = new Ext.data.Store({...});
   var colModel = new Ext.grid.ColumnModel({...});

   //      Create a new config object containing our computed properties
   //      &#42;plus&#42; whatever was in the config parameter.
   config = Ext.apply({
   store: store,
   colModel: colModel
   }, config);

   MyGridPanel.superclass.constructor.call(this, config);

   //      Your postprocessing here
   },

   yourMethod: function() {
   // etc.
   }
   });
   </code></pre><p>This function also supports a 3-argument call in which the subclass's constructor is passed as an argument. In this form, the parameters are as follows:</p><div class="mdetail-params"><ul><li><code>subclass</code> : Function <div class="sub-desc">The subclass constructor.</div></li><li><code>superclass</code> : Function <div class="sub-desc">The constructor of class being extended</div></li><li><code>overrides</code> : Object <div class="sub-desc">A literal with members which are copied into the subclass's prototype, and are therefore shared among all instances of the new class.</div></li></ul></div>
   *
   * @param superclass The constructor of class being extended.
   * @param overrides A literal with members which are copied into the subclass's prototype, and are therefore shared between all instances of the new class.
   <p>This may contain a special member named <tt><b>constructor</b></tt>. This is used to define the constructor of the new class, and is returned. If this property is <i>not</i> specified, a constructor is generated and returned which just calls the superclass's constructor passing on its parameters.</p><p style="font-weight: bold">It is essential that you call the superclass constructor in any provided constructor. See example code.</p>
   * @return The subclass constructor from the <code>overrides</code> parameter, or a generated one if not provided.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-extend Ext JS source
   */
  function extend(superclass:Function, overrides:Object):Function;

  /**
   * Gets the globally shared flyweight Element, with the passed node as the active element. Do not store a reference to this element - the dom node can be overwritten by other code. Shorthand of <a href="output/Ext.Element.html#Ext.Element-fly">Ext.Element.fly</a>
   <p>Use this to make one-time references to DOM elements which are not going to be accessed again either by application code, or by Ext's classes. If accessing an element which will be processed regularly, then <a href="output/Ext.html#Ext-get">Ext.get</a> will be more appropriate to take advantage of the caching provided by the Ext.Element class.</p>
   *
   * @param el The dom node or id
   * @param named Allows for creation of named reusable flyweights to prevent conflicts (e.g. internally Ext uses "_global")
   * @return The shared Element object (or null if no matching element was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext-fly Ext JS source
   */
  function fly(el:*, named:String = null):Element;

  /**
   * Retrieves Ext.Element objects. <p><b>This method does not retrieve <a href="Ext.Component.html">Component</a>s.</b> This method retrieves Ext.Element objects which encapsulate DOM elements. To retrieve a Component by its ID, use <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">Ext.ComponentMgr.get</a>.</p><p>Uses simple caching to consistently return the same object. Automatically fixes if an object was recreated with the same id via AJAX or DOM.</p>Shorthand of <a href="output/Ext.Element.html#Ext.Element-get">Ext.Element.get</a>
   *
   * @param el The id of the node, a DOM Node or an existing Element.
   * @return The Element object (or null if no matching element was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext-get Ext JS source
   */
  function get(el:*):Element;

  /**
   * Returns the current document body as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document body
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-getBody Ext JS source
   */
  function getBody():Element;

  /**
   * This is shorthand reference to <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">Ext.ComponentMgr.get</a>. Looks up an existing <a href="Ext.Component.html">Component</a> by <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @return The Component, <tt>undefined</tt> if not found, or <tt>null</tt> if a Class was found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-getCmp Ext JS source
   */
  function getCmp(id:String):Component;

  /**
   * Returns the current HTML document object as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-getDoc Ext JS source
   */
  function getDoc():Element;

  /**
   * Return the dom node for the passed String (id), dom node, or Ext.Element. Here are some examples: <pre><code>// gets dom node based on id
   var elDom = Ext.getDom('elId');
   // gets dom node based on the dom node
   var elDom1 = Ext.getDom(elDom);

   // If we don't know if we are working with an
   // Ext.Element or a dom node use Ext.getDom
   function(el){
   var dom = Ext.getDom(el);
   // do something with the dom node
   }
   </code></pre><b>Note</b>: the dom node to be found actually needs to exist (be rendered, etc) when this method is called to be successful.
   *
   * @param el
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#method-Ext-getDom Ext JS source
   */
  function getDom(el:*):HTMLElement;

  /**
   * Returns the current document head as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document head
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-getHead Ext JS source
   */
  function getHead():Element;

  /**
   * Returns the current orientation of the mobile device
   *
   * @return Either 'portrait' or 'landscape'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-getOrientation Ext JS source
   */
  function getOrientation():String;

  /**
   * Gets a registered Store by id (shortcut to <a href="output/Ext.StoreMgr.html#Ext.StoreMgr-lookup">lookup</a>)
   *
   * @param id The id of the Store, or a Store instance
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#method-Ext-getStore Ext JS source
   */
  function getStore(id:*):Store;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') from their HTML character equivalents.
   *
   * @param value The string to decode
   * @return The decoded text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-htmlDecode Ext JS source
   */
  function htmlDecode(value:String):String;

  /**
   * Convert certain characters (&amp;, &lt;, &gt;, and ') to their HTML character equivalents for literal display in web pages.
   *
   * @param value The string to encode
   * @return The encoded text
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-htmlEncode Ext JS source
   */
  function htmlEncode(value:String):String;

  /**
   * Generates unique ids. If the element already has an id, it is unchanged
   *
   * @param el The element to generate an id for
   * @param prefix Id prefix (defaults "ext-gen")
   * @return The generated Id.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-id Ext JS source
   */
  function id(el:* = null, prefix:String = null):String;

  /**
   * Returns true if the passed value is a JavaScript array, otherwise false.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isArray Ext JS source
   */
  function isArray(value:*):Boolean;

  /**
   * util Returns true if the passed value is a boolean.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isBoolean Ext JS source
   */
  function isBoolean(value:*):Boolean;

  /**
   * Returns true if the passed object is a JavaScript date object, otherwise false.
   *
   * @param object The object to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isDate Ext JS source
   */
  function isDate(object:Object):Boolean;

  /**
   * Returns true if the passed value is not undefined.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isDefined Ext JS source
   */
  function isDefined(value:*):Boolean;

  /**
   * Returns true if the passed value is an HTMLElement
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isElement Ext JS source
   */
  function isElement(value:*):Boolean;

  /**
   * Returns true if the passed value is empty.
   <p>The value is deemed to be empty if it is</p><div class="mdetail-params"><ul><li>null</li><li>undefined</li><li>an empty array</li><li>a zero length string (Unless the <tt>allowBlank</tt> parameter is <tt>true</tt>)</li></ul></div>
   *
   * @param value The value to test
   * @param allowBlank true to allow empty strings (defaults to false)
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isEmpty Ext JS source
   */
  function isEmpty(value:*, allowBlank:Boolean = false):Boolean;

  /**
   * Returns true if the passed value is a JavaScript Function, otherwise false.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isFunction Ext JS source
   */
  function isFunction(value:*):Boolean;

  /**
   * Returns true if the passed value is a number. Returns false for non-finite numbers.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isNumber Ext JS source
   */
  function isNumber(value:*):Boolean;

  /**
   * Returns true if the passed value is a JavaScript Object, otherwise false.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isObject Ext JS source
   */
  function isObject(value:*):Boolean;

  /**
   * Returns true if the passed value is a JavaScript 'primitive', a string, number or boolean.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isPrimitive Ext JS source
   */
  function isPrimitive(value:*):Boolean;

  /**
   * Returns true if the passed value is a string.
   *
   * @param value The value to test
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-isString Ext JS source
   */
  function isString(value:*):Boolean;

  /**
   * Iterates either the elements in an array, or each of the properties in an object. <b>Note</b>: If you are only iterating arrays, it is better to call <a href="output/Ext.html#Ext-each">each</a>.
   *
   * @param object The object or array to be iterated
   * @param fn The function to be called for each iteration. The iteration will stop if the supplied function returns false, or all array elements / object properties have been covered. The signature varies depending on the type of object being interated: <div class="mdetail-params"><ul><li>Arrays : <tt>(Object item, Number index, Array allItems)</tt> <div class="sub-desc">When iterating an array, the supplied function is called with each item.</div></li><li>Objects : <tt>(String key, Object value, Object)</tt> <div class="sub-desc">When iterating an object, the supplied function is called with each key-value pair in the object, and the iterated object</div></li></ul></div>
   * @param scope The scope (<code>this</code> reference) in which the specified function is executed. Defaults to the <code>object</code> being iterated.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-iterate Ext JS source
   */
  function iterate(object:*, fn:Function, scope:Object):void;

  /**
   * Creates namespaces to be used for scoping variables and classes so that they are not global. Specifying the last node of a namespace implicitly creates all other nodes. Usage: <pre><code>Ext.namespace('Company', 'Company.data');
   Ext.namespace('Company.data'); // equivalent and preferable to above syntax
   Company.Widget = function() { ... }
   Company.data.CustomStore = function(config) { ... }
   </code></pre>
   *
   * @param namespace1
   * @param namespace2
   * @param etc
   * @return The namespace object. (If multiple arguments are passed, this will be the last namespace created)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-namespace Ext JS source
   */
  function namespace(namespace1:String, namespace2:String, etc:String):Object;

  /**
   * Utility method for validating that a value is numeric, returning the specified default value if it is not.
   *
   * @param value Should be a number, but any type will be handled appropriately
   * @param defaultValue The value to return if the original value is non-numeric
   * @return Value, if numeric, else defaultValue
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-num Ext JS source
   */
  function num(value:*, defaultValue:ext.form.Number):ext.form.Number;

  /**
   * Adds a listener to be notified when the document is ready (before onload and before images are loaded). Shorthand of <a href="output/Ext.EventManager.html#Ext.EventManager-onDocumentReady">Ext.EventManager.onDocumentReady</a>.
   *
   * @param fn The method the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>. It is recommended that the options <code>{single: true}</code> be used so that the handler is removed on first invocation.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/EventManager.html#method-Ext-onReady Ext JS source
   */
  function onReady(fn:Function, scope:Object = null, options:Boolean = false):void;

  /**
   * Adds a list of functions to the prototype of an existing class, overwriting any existing methods with the same name. Usage:<pre><code>Ext.override(MyClass, {
   newMethod1: function(){
   // etc.
   },
   newMethod2: function(foo){
   // etc.
   }
   });
   </code></pre>
   *
   * @param origclass The class to override
   * @param overrides The list of functions to add to origClass. This should be specified as an object literal containing one or more methods.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-override Ext JS source
   */
  function override(origclass:Object, overrides:Object):void;

  /**
   * Plucks the value of a property from each item in the Array // Example: Ext.pluck(Ext.query("p"), "className"); // [el1.className, el2.className, ..., elN.className]
   *
   * @param arr The Array of items to pluck the value from.
   * @param prop The property name to pluck from each element.
   * @return The value from each item in the Array.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-pluck Ext JS source
   */
  function pluck(arr:*, prop:String):Array;

  /**
   * Shorthand for <a href="output/Ext.PluginMgr.html#Ext.PluginMgr-registerType">Ext.PluginMgr.registerType</a>
   *
   * @param ptype The <a href="output/Ext.component.html#Ext.component-ptype">mnemonic string</a> by which the Plugin class may be looked up.
   * @param cls The new Plugin class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PluginMgr.html#method-Ext-preg Ext JS source
   */
  function preg(ptype:String, cls:Class):void;

  /**
   * Shorthand for <a href="output/Ext.Dispatcher.html#Ext.Dispatcher-redirect">Ext.Dispatcher.redirect</a>. Dispatches a request to a controller action, adding to the History stack and updating the page url as necessary.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Dispatcher.html#method-Ext-redirect Ext JS source
   */
  function redirect():void;

  /**
   * Shorthand for <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerType">Ext.ComponentMgr.registerType</a>
   *
   * @param xtype The <a href="output/Ext.component.html#Ext.component-xtype">mnemonic string</a> by which the Component class may be looked up.
   * @param cls The new Component class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentMgr.html#method-Ext-reg Ext JS source
   */
  function reg(xtype:String, cls:Class):void;

  /**
   * Shorthand for <a href="output/Ext.ApplicationManager.html#Ext.ApplicationManager-register">Ext.ApplicationManager.register</a> Creates a new Application class from the specified config object. See <a href="Ext.Application.html">Ext.Application</a> for full examples.
   *
   * @param config A configuration object for the Model you wish to create.
   * @return The newly created Application
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ApplicationManager.html#method-Ext-regApplication Ext JS source
   */
  function regApplication(config:Object):Application;

  /**
   * Shorthand for <a href="output/Ext.ControllerMgr.html#Ext.ControllerMgr-register">Ext.ControllerMgr.register</a> Creates a new Controller class from the specified config object. See <a href="Ext.Controller.html">Ext.Controller</a> for full examples.
   *
   * @param config A configuration object for the Controller you wish to create.
   * @return The newly registered Controller
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ControllerManager.html#method-Ext-regController Ext JS source
   */
  function regController(config:Object):Controller;

  /**
   * Shorthand for <a href="output/Ext.layout.LayoutManager.html#Ext.layout.LayoutManager-registerType">Ext.layout.LayoutManager.registerType</a>
   *
   * @param type The <a href="output/Ext.layout.Layout.html#Ext.layout.Layout-type">mnemonic string</a> by which the Layout class may be looked up.
   * @param cls The new Layout class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LayoutManager.html#method-Ext-regLayout Ext JS source
   */
  function regLayout(type:String, cls:Class):void;

  /**
   * Shorthand for <a href="output/Ext.ModelMgr.html#Ext.ModelMgr-registerType">Ext.ModelMgr.registerType</a> Creates a new Model class from the specified config object. See <a href="Ext.data.Model.html">Ext.data.Model</a> for full examples.
   *
   * @param config A configuration object for the Model you wish to create.
   * @return The newly registered Model
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ModelMgr.html#method-Ext-regModel Ext JS source
   */
  function regModel(config:Object):Model;

  /**
   * Creates a new store for the given id and config, then registers it with the <a href="Ext.StoreMgr.html">Store Mananger</a>. Sample usage:
   <pre><code>Ext.regStore('AllUsers', {
   model: 'User'
   });

   //the store can now easily be used throughout the application
   new Ext.List({
   store: 'AllUsers',
   ... other config
   });
   </code></pre>
   *
   * @param id The id to set on the new store
   * @param config The store config
   * @param cls The new Component class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/StoreMgr.html#method-Ext-regStore Ext JS source
   */
  function regStore(id:String, config:Object, cls:Class):void;

  /**
   * Removes this element from the document, removes all DOM event listeners, and deletes the cache reference. All DOM event listeners are removed from this element. If <a href="output/Ext.html#Ext-enableNestedListenerRemoval">Ext.enableNestedListenerRemoval</a> is <code>true</code>, then DOM event listeners are also removed from all child nodes. The body node will be ignored if passed in.

   *
   * @param node The node to remove
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#method-Ext-removeNode Ext JS source
   */
  function removeNode(node:HTMLElement):void;

  /**
   * Repaints the whole page. This fixes frequently encountered painting issues in mobile Safari.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-repaint Ext JS source
   */
  function repaint():void;

  /**
   * Selects elements based on the passed CSS selector to enable <a href="Ext.Element.html">Element</a> methods to be applied to many related elements in one statement through the returned <a href="Ext.CompositeElement.html">CompositeElement</a> or <a href="Ext.CompositeElement.html">CompositeElement</a> object.
   *
   * @param selector The CSS selector or an array of elements
   * @param root The root element of the query or id of the root
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext-select Ext JS source
   */
  function select(selector:*, root:* = null):CompositeElement;

  /**
   * Sets up a page for use on a mobile device.
   *
   * @param config Valid configurations are: <ul><li>fullscreen - Boolean - Sets an appropriate meta tag for Apple devices to run in full-screen mode.</li><li>tabletStartupScreen - String - Startup screen to be used on an iPad. The image must be 768x1004 and in portrait orientation.</li><li>phoneStartupScreen - String - Startup screen to be used on an iPhone or iPod touch. The image must be 320x460 and in portrait orientation.</li><li>icon - Default icon to use. This will automatically apply to both tablets and phones. These should be 72x72.</li><li>tabletIcon - String - An icon for only tablets. (This config supersedes icon.) These should be 72x72.</li><li>phoneIcon - String - An icon for only phones. (This config supersedes icon.) These should be 57x57.</li><li>glossOnIcon - Boolean - Add gloss on icon on iPhone, iPad and iPod Touch</li><li>statusBarStyle - String - Sets the status bar style for fullscreen iPhone OS web apps. Valid options are default, black, or black-translucent.</li><li>onReady - Function - Function to be run when the DOM is ready.</li><li>scope - Scope - Scope for the onReady configuraiton to be run in.</li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext.html#method-Ext-setup Ext JS source
   */
  function setup(config:Object):void;

  /**
   * Converts any iterable (numeric indices and a length property) into a true array Don't use this on strings. IE doesn't support "abc"[0] which this implementation depends on. For strings, use this instead: "abc".match(/./g) =&gt; [a,b,c];
   *
   * @param array the iterable object to be turned into a true Array.
   * @param start a number that specifies where to start the selection.
   * @param end a number that specifies where to end the selection.
   * @return array
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-toArray Ext JS source
   */
  function toArray(array:Object, start:ext.form.Number, end:ext.form.Number):Array;

  /**
   * Appends content to the query string of a URL, handling logic for whether to place a question mark or ampersand.
   *
   * @param url The URL to append to.
   * @param s The content to append to the URL.
   * @return The resulting URL
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-urlAppend Ext JS source
   */
  function urlAppend(url:String, s:String):String;

  /**
   * Takes an encoded URL and and converts it to an object. Example: <pre><code>Ext.urlDecode("foo=1&amp;bar=2"); // returns {foo: "1", bar: "2"}
   Ext.urlDecode("foo=1&amp;bar=2&amp;bar=3&amp;bar=4", false); // returns {foo: "1", bar: ["2", "3", "4"]}
   </code></pre>
   *
   * @param string
   * @param overwrite Items of the same name will overwrite previous values instead of creating an an array (Defaults to false).
   * @return A literal with members
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-urlDecode Ext JS source
   */
  function urlDecode(string:String, overwrite:Boolean = false):Object;

  /**
   * Takes an object and converts it to an encoded URL. e.g. Ext.urlEncode({foo: 1, bar: 2}); would return "foo=1&amp;bar=2". Optionally, property values can be arrays, instead of keys and the resulting string that's returned will contain a name/value pair for each array value.
   *
   * @param o The object to encode
   * @param pre A prefix to add to the url encoded string
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Ext1.html#method-Ext-urlEncode Ext JS source
   */
  function urlEncode(o:Object, pre:String = null):String;

}
}
    