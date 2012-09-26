package ext {
import ext.data.Node;

import js.HTMLElement;

/**
 * Ext core utilities and functions.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Ext.</p>
 * @see ext.#Ext ext.Ext
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext Sencha Docs Ext JS 3.4
 */
public interface IExt {

  /**
   URL to a 1x1 transparent gif image used by Ext to create inline icons with CSS background images. In older versions of IE, this defaults to "http://extjs.com/s.gif" and you should change this to a URL on your server. For other browsers it uses an inline data URL.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-BLANK_IMAGE_URL Sencha Docs Ext JS 3.4
   */
  function get BLANK_IMAGE_URL():String;

  /**
   URL to a blank file used by Ext when in secure mode for iframe src and onReady src to prevent the IE insecure content warning (<tt>'about:blank'</tt>, except for IE in secure mode, which is <tt>'javascript:""'</tt>).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-SSL_SECURE_URL Sencha Docs Ext JS 3.4
   */
  function get SSL_SECURE_URL():String;

  /**
   Indicates whether to use native browser parsing for JSON methods. This option is ignored if the browser does not support native JSON methods. <b>Note: Native JSON methods will not work with objects that have functions. Also, property names must be quoted, otherwise the data will not parse.</b> (Defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-USE_NATIVE_JSON Sencha Docs Ext JS 3.4
   */
  function get USE_NATIVE_JSON():Boolean;

  /**
   A reusable empty function
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-emptyFn Sencha Docs Ext JS 3.4
   */
  function get emptyFn():Function;

  /**
   * @private
   */
  function set emptyFn(value:Function):void;

  /**
   HIGHLY EXPERIMENTAL True to force css based border-box model override and turning off javascript based adjustments. This is a runtime configuration and must be set before onReady.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-enableForcedBoxModel Sencha Docs Ext JS 3.4
   */
  function get enableForcedBoxModel():Boolean;

  /**
   * @private
   */
  function set enableForcedBoxModel(value:Boolean):void;

  /**
   True if the <a href="Ext.Fx.html">Ext.Fx</a> Class is available
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-enableFx Sencha Docs Ext JS 3.4
   */
  function get enableFx():Boolean;

  /**
   * @private
   */
  function set enableFx(value:Boolean):void;

  /**
   True to automatically uncache orphaned Ext.Elements periodically (defaults to true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-enableGarbageCollector Sencha Docs Ext JS 3.4
   */
  function get enableGarbageCollector():Boolean;

  /**
   * @private
   */
  function set enableGarbageCollector(value:Boolean):void;

  /**
   True to automatically purge event listeners during garbageCollection (defaults to false).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-enableListenerCollection Sencha Docs Ext JS 3.4
   */
  function get enableListenerCollection():Boolean;

  /**
   * @private
   */
  function set enableListenerCollection(value:Boolean):void;

  /**
   EXPERIMENTAL - True to cascade listener removal to child elements when an element is removed. Currently not optimized for performance.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-enableNestedListenerRemoval Sencha Docs Ext JS 3.4
   */
  function get enableNestedListenerRemoval():Boolean;

  /**
   * @private
   */
  function set enableNestedListenerRemoval(value:Boolean):void;

  /**
   True if the detected platform is Adobe Air.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isAir Sencha Docs Ext JS 3.4
   */
  function get isAir():Boolean;

  /**
   * @private
   */
  function set isAir(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer running in non-strict mode.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isBorderBox Sencha Docs Ext JS 3.4
   */
  function get isBorderBox():Boolean;

  /**
   * @private
   */
  function set isBorderBox(value:Boolean):void;

  /**
   True if the detected browser is Chrome.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isChrome Sencha Docs Ext JS 3.4
   */
  function get isChrome():Boolean;

  /**
   * @private
   */
  function set isChrome(value:Boolean):void;

  /**
   True if the detected browser uses the Gecko layout engine (e.g. Mozilla, Firefox).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isGecko Sencha Docs Ext JS 3.4
   */
  function get isGecko():Boolean;

  /**
   * @private
   */
  function set isGecko(value:Boolean):void;

  /**
   True if the detected browser uses a pre-Gecko 1.9 layout engine (e.g. Firefox 2.x).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isGecko2 Sencha Docs Ext JS 3.4
   */
  function get isGecko2():Boolean;

  /**
   * @private
   */
  function set isGecko2(value:Boolean):void;

  /**
   True if the detected browser uses a Gecko 1.9+ layout engine (e.g. Firefox 3.x).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isGecko3 Sencha Docs Ext JS 3.4
   */
  function get isGecko3():Boolean;

  /**
   * @private
   */
  function set isGecko3(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isIE Sencha Docs Ext JS 3.4
   */
  function get isIE():Boolean;

  /**
   * @private
   */
  function set isIE(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer 6.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isIE6 Sencha Docs Ext JS 3.4
   */
  function get isIE6():Boolean;

  /**
   * @private
   */
  function set isIE6(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer 7.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isIE7 Sencha Docs Ext JS 3.4
   */
  function get isIE7():Boolean;

  /**
   * @private
   */
  function set isIE7(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer 8.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isIE8 Sencha Docs Ext JS 3.4
   */
  function get isIE8():Boolean;

  /**
   * @private
   */
  function set isIE8(value:Boolean):void;

  /**
   True if the detected browser is Internet Explorer 9.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isIE9 Sencha Docs Ext JS 3.4
   */
  function get isIE9():Boolean;

  /**
   * @private
   */
  function set isIE9(value:Boolean):void;

  /**
   True if the detected platform is Linux.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isLinux Sencha Docs Ext JS 3.4
   */
  function get isLinux():Boolean;

  /**
   * @private
   */
  function set isLinux(value:Boolean):void;

  /**
   True if the detected platform is Mac OS.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isMac Sencha Docs Ext JS 3.4
   */
  function get isMac():Boolean;

  /**
   * @private
   */
  function set isMac(value:Boolean):void;

  /**
   True if the detected browser is Opera.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isOpera Sencha Docs Ext JS 3.4
   */
  function get isOpera():Boolean;

  /**
   * @private
   */
  function set isOpera(value:Boolean):void;

  /**
   True when the document is fully initialized and ready for action
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isReady Sencha Docs Ext JS 3.4
   */
  function get isReady():Boolean;

  /**
   * @private
   */
  function set isReady(value:Boolean):void;

  /**
   True if the detected browser is Safari.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isSafari Sencha Docs Ext JS 3.4
   */
  function get isSafari():Boolean;

  /**
   * @private
   */
  function set isSafari(value:Boolean):void;

  /**
   True if the detected browser is Safari 2.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isSafari2 Sencha Docs Ext JS 3.4
   */
  function get isSafari2():Boolean;

  /**
   * @private
   */
  function set isSafari2(value:Boolean):void;

  /**
   True if the detected browser is Safari 3.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isSafari3 Sencha Docs Ext JS 3.4
   */
  function get isSafari3():Boolean;

  /**
   * @private
   */
  function set isSafari3(value:Boolean):void;

  /**
   True if the detected browser is Safari 4.x.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isSafari4 Sencha Docs Ext JS 3.4
   */
  function get isSafari4():Boolean;

  /**
   * @private
   */
  function set isSafari4(value:Boolean):void;

  /**
   True if the page is running over SSL
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isSecure Sencha Docs Ext JS 3.4
   */
  function get isSecure():Boolean;

  /**
   * @private
   */
  function set isSecure(value:Boolean):void;

  /**
   True if the browser is in strict (standards-compliant) mode, as opposed to quirks mode
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isStrict Sencha Docs Ext JS 3.4
   */
  function get isStrict():Boolean;

  /**
   * @private
   */
  function set isStrict(value:Boolean):void;

  /**
   True if the detected browser uses WebKit.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isWebKit Sencha Docs Ext JS 3.4
   */
  function get isWebKit():Boolean;

  /**
   * @private
   */
  function set isWebKit(value:Boolean):void;

  /**
   True if the detected platform is Windows.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-isWindows Sencha Docs Ext JS 3.4
   */
  function get isWindows():Boolean;

  /**
   * @private
   */
  function set isWindows(value:Boolean):void;

  /**
   By default, Ext intelligently decides whether floating elements should be shimmed. If you are using flash, you may want to set this to true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-useShims Sencha Docs Ext JS 3.4
   */
  function get useShims():Boolean;

  /**
   * @private
   */
  function set useShims(value:Boolean):void;

  /**
   Namespace allotted for extensions to the framework.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-ux Sencha Docs Ext JS 3.4
   */
  function get ux():Object;

  /**
   * @private
   */
  function set ux(value:Object):void;

  /**
   The version of the framework
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-property-version Sencha Docs Ext JS 3.4
   */
  function get version():String;

  /**
   * @private
   */
  function set version(value:String):void;

  /**
   * Applies event listeners to elements by selectors when the document is ready. The event name is specified with an <tt>&#64;</tt> suffix. <pre><code>Ext.addBehaviors({
   // add a listener for click on all anchors in element with id foo
   '#foo a&#64;click' : function(e, t){
   // do something
   },

   // add the same listener to multiple selectors (separated by comma BEFORE the &#64;)
   '#foo a, #bar span.some-class&#64;mouseover' : function(){
   // do something
   }
   });
   </code></pre>
   *
   * @param obj The list of behaviors to apply
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-addBehaviors Sencha Docs Ext JS 3.4
   */
  function addBehaviors(obj:Object):void;

  /**
   * Copies all the properties of config to obj.
   *
   * @param obj The receiver of the properties
   * @param config The source of the properties
   * @param defaults A different object that will also be applied for default values
   * @return returns obj
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-apply Sencha Docs Ext JS 3.4
   */
  function apply(obj:Object, config:Object, defaults:Object = null):Object;

  /**
   * Copies all the properties of config to obj if they don't already exist.
   *
   * @param obj The receiver of the properties
   * @param config The source of the properties
   * @return returns obj
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-applyIf Sencha Docs Ext JS 3.4
   */
  function applyIf(obj:Object, config:Object):Object;

  /**
   * Creates a copy of the passed Array with falsy values removed.
   *
   * @param arr The Array from which to remove falsy values.
   * @return The new, compressed Array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-clean Sencha Docs Ext JS 3.4
   */
  function clean(arr:*):Array;

  /**
   * Copies a set of named properties fom the source object to the destination object. <p>example:</p><pre><code>ImageComponent = Ext.extend(Ext.BoxComponent, {
   initComponent: function() {
   this.autoEl = { tag: 'img' };
   MyComponent.superclass.initComponent.apply(this, arguments);
   this.initialBox = Ext.copyTo({}, this.initialConfig, 'x,y,width,height');
   }
   });
   </code></pre>
   *
   * @param dest The destination object.
   * @param source The source object.
   * @param names Either an Array of property names, or a comma-delimited list of property names to copy.
   * @return The modified object.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-copyTo Sencha Docs Ext JS 3.4
   */
  function copyTo(dest:Object, source:Object, names:*):Object;

  /**
   * Shorthand for <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-create">Ext.ComponentMgr.create</a> Creates a new Component from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-xtype">xtype</a> to determine the class to instantiate.
   *
   * @param config A configuration object for the Component you wish to create.
   * @param defaultType The constructor to provide the default Component type if the config object does not contain a <code>xtype</code>. (Optional if the config contains a <code>xtype</code>).
   * @return The newly instantiated Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-create Sencha Docs Ext JS 3.4
   */
  function create(config:Object, defaultType:Class):Component;

  /**
   * Shorthand for <a href="output/Ext.util.JSON.html#Ext.util.JSON-decode">Ext.util.JSON.decode</a>
   *
   * @param json The JSON string
   * @param safe Whether to return null or throw an exception if the JSON is invalid.
   * @return The resulting object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-decode Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-defer Sencha Docs Ext JS 3.4
   */
  function defer(fn:Function, scope:Object = null, args:Array = null, appendArgs:* = null):Function;

  /**
   * Attempts to destroy any objects passed to it by removing all event listeners, removing them from the DOM (if applicable) and calling their destroy functions (if available). This method is primarily intended for arguments of type <a href="Ext.Element.html">Ext.Element</a> and <a href="Ext.Component.html">Ext.Component</a>, but any subclass of <a href="Ext.util.Observable.html">Ext.util.Observable</a> can be passed in. Any number of elements and/or components can be passed into this function in a single call as separate arguments.
   *
   * @param arg1 An <a href="Ext.Element.html">Ext.Element</a>, <a href="Ext.Component.html">Ext.Component</a>, or an Array of either of these to destroy
   * @param arg2
   * @param etc
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-destroy Sencha Docs Ext JS 3.4
   */
  function destroy(arg1:*, arg2:* = null, ...etc:Array):void;

  /**
   * Attempts to destroy and then remove a set of named properties of the passed object.
   *
   * @param o The object (most likely a Component) who's properties you wish to destroy.
   * @param arg1 The name of the property to destroy and remove from the object.
   * @param etc More property names to destroy and remove.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-destroyMembers Sencha Docs Ext JS 3.4
   */
  function destroyMembers(o:Object, arg1:*, ...etc:Array):void;

  /**
   * Iterates an array calling the supplied function.
   *
   * @param array The array to be iterated. If this argument is not really an array, the supplied function is called once.
   * @param fn The function to be called with each item. If the supplied function returns false, iteration stops and this method returns the current <code>index</code>. This function is called with the following arguments: <div class="mdetail-params"><ul><li><code>item</code> : <i>Mixed</i> <div class="sub-desc">The item at the current <code>index</code> in the passed <code>array</code></div></li><li><code>index</code> : <i>Number</i> <div class="sub-desc">The current index within the array</div></li><li><code>allItems</code> : <i>Array</i> <div class="sub-desc">The <code>array</code> passed as the first argument to <code>Ext.each</code>.</div></li></ul></div>
   * @param scope The scope (<code>this</code> reference) in which the specified function is executed. Defaults to the <code>item</code> at the current <code>index</code> within the passed <code>array</code>.
   * @return See description for the fn parameter.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-each Sencha Docs Ext JS 3.4
   */
  function each(array:*, fn:Function, scope:Object = null):Number;

  /**
   * Shorthand for <a href="output/Ext.util.JSON.html#Ext.util.JSON-encode">Ext.util.JSON.encode</a>
   *
   * @param o The variable to encode
   * @return The JSON string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-encode Sencha Docs Ext JS 3.4
   */
  function encode(o:*):String;

  /**
   * Escapes the passed string for use in a regular expression
   *
   * @param str
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-escapeRe Sencha Docs Ext JS 3.4
   */
  function escapeRe(str:String):String;

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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-extend Sencha Docs Ext JS 3.4
   */
  function extend(superclass:Function, overrides:Object):Function;

  /**
   * Recursively flattens into 1-d Array. Injects Arrays inline.
   *
   * @param arr The array to flatten
   * @return The new, flattened array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-flatten Sencha Docs Ext JS 3.4
   */
  function flatten(arr:Array):Array;

  /**
   * Gets the globally shared flyweight Element, with the passed node as the active element. Do not store a reference to this element - the dom node can be overwritten by other code. Shorthand of <a href="output/Ext.Element.html#Ext.Element-fly">Ext.Element.fly</a>
   <p>Use this to make one-time references to DOM elements which are not going to be accessed again either by application code, or by Ext's classes. If accessing an element which will be processed regularly, then <a href="output/Ext.html#Ext-get">Ext.get</a> will be more appropriate to take advantage of the caching provided by the Ext.Element class.</p>
   *
   * @param el The dom node or id
   * @param named Allows for creation of named reusable flyweights to prevent conflicts (e.g. internally Ext uses "_global")
   * @return The shared Element object (or null if no matching element was found)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-fly Sencha Docs Ext JS 3.4
   */
  function fly(el:*, named:String = null):Element;

  /**
   * Retrieves Ext.Element objects. <p><b>This method does not retrieve <a href="Ext.Component.html">Component</a>s.</b> This method retrieves Ext.Element objects which encapsulate DOM elements. To retrieve a Component by its ID, use <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">Ext.ComponentMgr.get</a>.</p><p>Uses simple caching to consistently return the same object. Automatically fixes if an object was recreated with the same id via AJAX or DOM.</p>Shorthand of <a href="output/Ext.Element.html#Ext.Element-get">Ext.Element.get</a>
   *
   * @param el The id of the node, a DOM Node or an existing Element.
   * @return The Element object (or null if no matching element was found)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-get Sencha Docs Ext JS 3.4
   */
  function get(el:*):Element;

  /**
   * Returns the current document body as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document body
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getBody Sencha Docs Ext JS 3.4
   */
  function getBody():Element;

  /**
   * This is shorthand reference to <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">Ext.ComponentMgr.get</a>. Looks up an existing <a href="Ext.Component.html">Component</a> by <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   *
   * @param id The component <a href="output/Ext.Component.html#Ext.Component-id">id</a>
   * @return The Component, <tt>undefined</tt> if not found, or <tt>null</tt> if a Class was found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getCmp Sencha Docs Ext JS 3.4
   */
  function getCmp(id:String):Component;

  /**
   * Returns the current HTML document object as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getDoc Sencha Docs Ext JS 3.4
   */
  function getDoc():Element;

  /**
   * Return the dom node for the passed String (id), dom node, or Ext.Element. Optional 'strict' flag is needed for IE since it can return 'name' and 'id' elements by using getElementById. Here are some examples: <pre><code>// gets dom node based on id
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
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getDom Sencha Docs Ext JS 3.4
   */
  function getDom(el:*):HTMLElement;

  /**
   * Returns the current document body as an <a href="Ext.Element.html">Ext.Element</a>.
   *
   * @return The document body
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getHead Sencha Docs Ext JS 3.4
   */
  function getHead():Element;

  /**
   * Utility method for getting the width of the browser scrollbar. This can differ depending on operating system settings, such as the theme or font size.
   *
   * @param force true to force a recalculation of the value.
   * @return The width of the scrollbar.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-getScrollBarWidth Sencha Docs Ext JS 3.4
   */
  function getScrollBarWidth(force:Boolean = false):Number;

  /**
   * Generates unique ids. If the element already has an id, it is unchanged
   *
   * @param el The element to generate an id for
   * @param prefix Id prefix (defaults "ext-gen")
   * @return The generated Id.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-id Sencha Docs Ext JS 3.4
   */
  function id(el:* = null, prefix:String = null):String;

  /**
   * Invokes a method on each item in an Array. <pre><code>// Example:
   Ext.invoke(Ext.query("p"), "getAttribute", "id");
   // [el1.getAttribute("id"), el2.getAttribute("id"), ..., elN.getAttribute("id")]
   </code></pre>
   *
   * @param arr The Array of items to invoke the method on.
   * @param methodName The method name to invoke.
   * @param args Arguments to send into the method invocation.
   * @return The results of invoking the method on each item in the array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-invoke Sencha Docs Ext JS 3.4
   */
  function invoke(arr:*, methodName:String, ...args:Array):Array;

  /**
   * Returns true if the passed value is a JavaScript array, otherwise false.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isArray Sencha Docs Ext JS 3.4
   */
  function isArray(value:*):Boolean;

  /**
   * Returns true if the passed value is a boolean.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isBoolean Sencha Docs Ext JS 3.4
   */
  function isBoolean(value:*):Boolean;

  /**
   * Returns true if the passed object is a JavaScript date object, otherwise false.
   *
   * @param object The object to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isDate Sencha Docs Ext JS 3.4
   */
  function isDate(object:Object):Boolean;

  /**
   * Returns true if the passed value is not undefined.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isDefined Sencha Docs Ext JS 3.4
   */
  function isDefined(value:*):Boolean;

  /**
   * Returns true if the passed value is an HTMLElement
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isElement Sencha Docs Ext JS 3.4
   */
  function isElement(value:*):Boolean;

  /**
   * Returns true if the passed value is empty.
   <p>The value is deemed to be empty if it is</p><div class="mdetail-params"><ul><li>null</li><li>undefined</li><li>an empty array</li><li>a zero length string (Unless the <tt>allowBlank</tt> parameter is <tt>true</tt>)</li></ul></div>
   *
   * @param value The value to test
   * @param allowBlank true to allow empty strings (defaults to false)
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isEmpty Sencha Docs Ext JS 3.4
   */
  function isEmpty(value:*, allowBlank:Boolean = false):Boolean;

  /**
   * Returns true if the passed value is a JavaScript Function, otherwise false.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isFunction Sencha Docs Ext JS 3.4
   */
  function isFunction(value:*):Boolean;

  /**
   * Returns true if the passed value is a number. Returns false for non-finite numbers.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isNumber Sencha Docs Ext JS 3.4
   */
  function isNumber(value:*):Boolean;

  /**
   * Returns true if the passed value is a JavaScript Object, otherwise false.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isObject Sencha Docs Ext JS 3.4
   */
  function isObject(value:*):Boolean;

  /**
   * Returns true if the passed value is a JavaScript 'primitive', a string, number or boolean.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isPrimitive Sencha Docs Ext JS 3.4
   */
  function isPrimitive(value:*):Boolean;

  /**
   * Returns true if the passed value is a string.
   *
   * @param value The value to test
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-isString Sencha Docs Ext JS 3.4
   */
  function isString(value:*):Boolean;

  /**
   * Iterates either the elements in an array, or each of the properties in an object. <b>Note</b>: If you are only iterating arrays, it is better to call <a href="output/Ext.html#Ext-each">each</a>.
   *
   * @param object The object or array to be iterated
   * @param fn The function to be called for each iteration. The iteration will stop if the supplied function returns false, or all array elements / object properties have been covered. The signature varies depending on the type of object being iterated: <div class="mdetail-params"><ul><li>Arrays : <tt>(Object item, Number index, Array allItems)</tt> <div class="sub-desc">When iterating an array, the supplied function is called with each item.</div></li><li>Objects : <tt>(String key, Object value, Object)</tt> <div class="sub-desc">When iterating an object, the supplied function is called with each key-value pair in the object, and the iterated object</div></li></ul></div>
   * @param scope The scope (<code>this</code> reference) in which the specified function is executed. Defaults to the <code>object</code> being iterated.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-iterate Sencha Docs Ext JS 3.4
   */
  function iterate(object:*, fn:Function, scope:Object):void;

  /**
   * Returns the maximum value in the Array
   *
   * @param arr The Array from which to select the maximum value.
   * @param comp a function to perform the comparison which determines maximization. If omitted the "&gt;" operator will be used. Note: gt = 1; eq = 0; lt = -1
   * @return The maximum value in the Array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-max Sencha Docs Ext JS 3.4
   */
  function max(arr:*, comp:Function = null):Object;

  /**
   * Calculates the mean of the Array
   *
   * @param arr The Array to calculate the mean value of.
   * @return The mean.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-mean Sencha Docs Ext JS 3.4
   */
  function mean(arr:Array):Number;

  /**
   * Returns the minimum value in the Array.
   *
   * @param arr The Array from which to select the minimum value.
   * @param comp a function to perform the comparison which determines minimization. If omitted the "&lt;" operator will be used. Note: gt = 1; eq = 0; lt = -1
   * @return The minimum value in the Array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-min Sencha Docs Ext JS 3.4
   */
  function min(arr:*, comp:Function = null):Object;

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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-namespace Sencha Docs Ext JS 3.4
   */
  function namespace(namespace1:String, namespace2:String, etc:String):Object;

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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-ns Sencha Docs Ext JS 3.4
   */
  function ns(namespace1:String, namespace2:String, etc:String):Object;

  /**
   * Utility method for validating that a value is numeric, returning the specified default value if it is not.
   *
   * @param value Should be a number, but any type will be handled appropriately
   * @param defaultValue The value to return if the original value is non-numeric
   * @return Value, if numeric, else defaultValue
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-num Sencha Docs Ext JS 3.4
   */
  function num(value:*, defaultValue:Number):Number;

  /**
   * Adds a listener to be notified when the document is ready (before onload and before images are loaded). Shorthand of <a href="output/Ext.EventManager.html#Ext.EventManager-onDocumentReady">Ext.EventManager.onDocumentReady</a>.
   *
   * @param fn The method the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function executes. Defaults to the browser window.
   * @param options Options object as passed to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a>. It is recommended that the options <code>{single: true}</code> be used so that the handler is removed on first invocation.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-onReady Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-override Sencha Docs Ext JS 3.4
   */
  function override(origclass:Object, overrides:Object):void;

  /**
   * Partitions the set into two sets: a true set and a false set. Example: Example2: <pre><code>// Example 1:
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
   </code></pre>
   *
   * @param arr The array to partition
   * @param truth a function to determine truth. If this is omitted the element itself must be able to be evaluated for its truthfulness.
   * @return [true,false]
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-partition Sencha Docs Ext JS 3.4
   */
  function partition(arr:*, truth:Function = null):Array;

  /**
   * Plucks the value of a property from each item in the Array <pre><code>// Example:
   Ext.pluck(Ext.query("p"), "className"); // [el1.className, el2.className, ..., elN.className]
   </code></pre>
   *
   * @param arr The Array of items to pluck the value from.
   * @param prop The property name to pluck from each element.
   * @return The value from each item in the Array.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-pluck Sencha Docs Ext JS 3.4
   */
  function pluck(arr:*, prop:String):Array;

  /**
   * Shorthand for <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerPlugin">Ext.ComponentMgr.registerPlugin</a>
   *
   * @param ptype The <a href="output/Ext.component.html#Ext.component-ptype">mnemonic string</a> by which the Plugin class may be looked up.
   * @param cls The new Plugin class.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-preg Sencha Docs Ext JS 3.4
   */
  function preg(ptype:String, cls:Class):void;

  /**
   * Selects an array of DOM nodes by CSS/XPath selector. Shorthand of <a href="output/Ext.DomQuery.html#Ext.DomQuery-select">Ext.DomQuery.select</a>
   *
   * @param path The selector/xpath query
   * @param root The start of the query (defaults to document).
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-query Sencha Docs Ext JS 3.4
   */
  function query(path:String, root:Node = null):Array;

  /**
   * Shorthand for <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerType">Ext.ComponentMgr.registerType</a>
   *
   * @param xtype The <a href="output/Ext.component.html#Ext.component-xtype">mnemonic string</a> by which the Component class may be looked up.
   * @param cls The new Component class.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-reg Sencha Docs Ext JS 3.4
   */
  function reg(xtype:String, cls:Class):void;

  /**
   * Removes this element from the document, removes all DOM event listeners, and deletes the cache reference. All DOM event listeners are removed from this element. If <a href="output/Ext.html#Ext-enableNestedListenerRemoval">Ext.enableNestedListenerRemoval</a> is <code>true</code>, then DOM event listeners are also removed from all child nodes. The body node will be ignored if passed in.

   *
   * @param node The node to remove
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-removeNode Sencha Docs Ext JS 3.4
   */
  function removeNode(node:HTMLElement):void;

  /**
   * Selects elements based on the passed CSS selector to enable <a href="Ext.Element.html">Element</a> methods to be applied to many related elements in one statement through the returned <a href="Ext.CompositeElement.html">CompositeElement</a> or <a href="Ext.CompositeElementLite.html">CompositeElementLite</a> object.
   *
   * @param selector The CSS selector or an array of elements
   * @param root The root element of the query or id of the root
   * @return
    * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-select Sencha Docs Ext JS 3.4
   */
  function select(selector:*, root:* = null):*;

  /**
   * Calculates the sum of the Array
   *
   * @param arr The Array to calculate the sum value of.
   * @return The sum.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-sum Sencha Docs Ext JS 3.4
   */
  function sum(arr:Array):Number;

  /**
   * Converts any iterable (numeric indices and a length property) into a true array Don't use this on strings. IE doesn't support "abc"[0] which this implementation depends on. For strings, use this instead: "abc".match(/./g) =&gt; [a,b,c];
   *
   * @param iterable the iterable object to be turned into a true Array.
   * @return array
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-toArray Sencha Docs Ext JS 3.4
   */
  function toArray(iterable:Object):Array;

  /**
   * Returns the type of object that is passed in. If the object passed in is null or undefined it return false otherwise it returns one of the following values:<div class="mdetail-params"><ul><li><b>string</b>: If the object passed is a string</li><li><b>number</b>: If the object passed is a number</li><li><b>boolean</b>: If the object passed is a boolean value</li><li><b>date</b>: If the object passed is a Date object</li><li><b>function</b>: If the object passed is a function reference</li><li><b>object</b>: If the object passed is an object</li><li><b>array</b>: If the object passed is an array</li><li><b>regexp</b>: If the object passed is a regular expression</li><li><b>element</b>: If the object passed is a DOM Element</li><li><b>nodelist</b>: If the object passed is a DOM NodeList</li><li><b>textnode</b>: If the object passed is a DOM text node and contains something other than whitespace</li><li><b>whitespace</b>: If the object passed is a DOM text node and contains only whitespace</li></ul></div>
   *
   * @param object
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-type Sencha Docs Ext JS 3.4
   */
  function type(object:*):String;

  /**
   * Creates a copy of the passed Array, filtered to contain only unique values.
   *
   * @param arr The Array to filter
   * @return The new Array containing unique values.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-unique Sencha Docs Ext JS 3.4
   */
  function unique(arr:Array):Array;

  /**
   * Appends content to the query string of a URL, handling logic for whether to place a question mark or ampersand.
   *
   * @param url The URL to append to.
   * @param s The content to append to the URL.
   * @return The resulting URL
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-urlAppend Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-urlDecode Sencha Docs Ext JS 3.4
   */
  function urlDecode(string:String, overwrite:Boolean = false):Object;

  /**
   * Takes an object and converts it to an encoded URL. e.g. Ext.urlEncode({foo: 1, bar: 2}); would return "foo=1&amp;bar=2". Optionally, property values can be arrays, instead of keys and the resulting string that's returned will contain a name/value pair for each array value.
   *
   * @param o
   * @param pre A prefix to add to the url encoded string
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-urlEncode Sencha Docs Ext JS 3.4
   */
  function urlEncode(o:Object, pre:String = null):String;

  /**
   * Utility method for returning a default value if the passed value is empty.
   <p>The value is deemed to be empty if it is</p><div class="mdetail-params"><ul><li>null</li><li>undefined</li><li>an empty array</li><li>a zero length string (Unless the <tt>allowBlank</tt> parameter is <tt>true</tt>)</li></ul></div>
   *
   * @param value The value to test
   * @param defaultValue The value to return if the original value is empty
   * @param allowBlank true to allow zero length strings to qualify as non-empty (defaults to false)
   * @return value, if non-empty, else defaultValue
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-value Sencha Docs Ext JS 3.4
   */
  function value(value:*, defaultValue:*, allowBlank:Boolean = false):*;

  /**
   * Zips N sets together.
   <pre><code>// Example 1:
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
   </code></pre>
   *
   * @param arr This argument may be repeated. Array(s) to contribute values.
   * @param zipper The last item in the argument list. This will drive how the items are zipped together.
   * @return The zipped set.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext-method-zip Sencha Docs Ext JS 3.4
   */
  function zip(arr:*, zipper:Function = null):Array;

}
}
    