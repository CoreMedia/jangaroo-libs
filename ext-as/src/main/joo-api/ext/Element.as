package ext {

import ext.dd.DD;
import ext.dd.DDProxy;
import ext.dd.DDTarget;
import ext.layout.borderlayout.Region;

import js.HTMLElement;

public class Element {
/**
 * Visibility mode constant for use with <b class='link' title='#setVisibilityMode'>setVisibilityMode</b>. Use visibility to hide element
 * @static
 */
public static const VISIBILITY  : Number = 1;
/**
 * Visibility mode constant for use with <b class='link' title='#setVisibilityMode'>setVisibilityMode</b>. Use display to hide element
 * @static
 */
public static const DISPLAY  : Number = 2;
        /**
         * The element's default display mode  (defaults to "")
         */
        public var originalDisplay  : String;
        /**
         * The element's visibility mode, either ext.Element.VISIBILITY or ext.Element.DISPLAY.
         */
        public native function get visibilityMode() : Number;
        /**
         * Sets the element's visibility mode. When setVisible() is called it
         * will use this to determine whether to set the visibility or the display property.
         * @param visMode ext.Element.VISIBILITY or ext.Element.DISPLAY
         * @return this
         */
        public native function setVisibilityMode(visMode : Number) : Element;
        /**
         * Perform custom animation on this element.
         * <div><ul class="mdetail-params">
         * <li><u>Animation Properties</u></li>
         * 
         * <p>The Animation Control Object enables gradual transitions for any member of an
         * element's style object that takes a numeric value including but not limited to
         * these properties:</p><div><ul class="mdetail-params">
         * <li><code>bottom, top, left, right</code></li>
         * <li><code>height, width</code></li>
         * <li><code>margin, padding</code></li>
         * <li><code>borderWidth</code></li>
         * <li><code>opacity</code></li>
         * <li><code>fontSize</code></li>
         * <li><code>lineHeight</code></li>
         * </ul></div>
         * 
         * 
         * <li><u>Animation Property Attributes</u></li>
         * 
         * <p>Each Animation Property is a config object with optional properties:</p>
         * <div><ul class="mdetail-params">
         * <li><code>by</code>*  : relative change - start at current value, change by this value</li>
         * <li><code>from</code> : ignore current value, start from this value</li>
         * <li><code>to</code>*  : start at current value, go to this value</li>
         * <li><code>unit</code> : any allowable unit specification</li>
         * <p>* do not specify both <code>to</code> and <code>by</code> for an animation property</p>
         * </ul></div>
         * 
         * <li><u>Animation Types</u></li>
         * 
         * <p>The supported animation types:</p><div><ul class="mdetail-params">
         * <li><code>'run'</code> : Default
         * <pre><code>
var el = Ext.get('complexEl');
el.animate(
    // animation control object
    {
        borderWidth: {to: 3, from: 0},
        opacity: {to: .3, from: 1},
        height: {to: 50, from: el.getHeight()},
        width: {to: 300, from: el.getWidth()},
        top  : {by: - 100, unit: 'px'},
    },
    0.35,      // animation duration
    null,      // callback
    'easeOut', // easing method
    'run'      // animation type ('run','color','motion','scroll')    
);
         * </code></pre>
         * </li>
         * <li><code>'color'</code>
         * <p>Animates transition of background, text, or border colors.</p>
         * <pre><code>
el.animate(
    // animation control object
    {
        color: { to: '#06e' },
        backgroundColor: { to: '#e06' }
    },
    0.35,      // animation duration
    null,      // callback
    'easeOut', // easing method
    'color'    // animation type ('run','color','motion','scroll')    
);
         * </code></pre> 
         * </li>
         * 
         * <li><code>'motion'</code>
         * <p>Animates the motion of an element to/from specific points using optional bezier
         * way points during transit.</p>
         * <pre><code>
el.animate(
    // animation control object
    {
        borderWidth: {to: 3, from: 0},
        opacity: {to: .3, from: 1},
        height: {to: 50, from: el.getHeight()},
        width: {to: 300, from: el.getWidth()},
        top  : {by: - 100, unit: 'px'},
        points: {
            to: [50, 100],  // go to this point
            control: [      // optional bezier way points
                [ 600, 800],
                [-100, 200]
            ]
        }
    },
    3000,      // animation duration (milliseconds!)
    null,      // callback
    'easeOut', // easing method
    'motion'   // animation type ('run','color','motion','scroll')    
);
         * </code></pre> 
         * </li>
         * <li><code>'scroll'</code>
         * <p>Animate horizontal or vertical scrolling of an overflowing page element.</p>
         * <pre><code>
el.animate(
    // animation control object
    {
        scroll: {to: [400, 300]}
    },
    0.35,      // animation duration
    null,      // callback
    'easeOut', // easing method
    'scroll'   // animation type ('run','color','motion','scroll')    
);
         * </code></pre> 
         * </li>
         * </ul></div>
         * 
         * </ul></div>
         * 
         * @param args The animation control args
         * @param duration How long the animation lasts in seconds (defaults to <code>.35</code>)
         * @param onComplete Function to call when animation completes
         * @param easing see <b class='link'>ext.Fx#easing</b>: method to use (defaults to <code>'easeOut'</code>)
         * @param animType <code>'run'</code> is the default. Can also be <code>'color'</code>,
         * <code>'motion'</code>, or <code>'scroll'</code>
         * @return this
         */
        public native function animate(args : Object, duration : Number = undefined, onComplete : Function = undefined, easing : String = undefined, animType : String = undefined) : Element;
        public native function anim(args, opt, animType, defaultDur, defaultEase, cb) : void;
        public native function preanim(a, i) : void;
        /**
         * Sets the visibility of the element (see details). If the visibilityMode is set to Element.DISPLAY, it will use
         * the display property to hide the element, otherwise it uses visibility. The default is to hide and show using the visibility property.
         * @param visible Whether the element is visible
         * @param animate True for the default animation, or a standard Element animation config object
         * @return this
         */
         public native function setVisible(visible : Boolean, animate : * = false) : Element;
        /**
         * Toggles the element's visibility or display, depending on visibility mode.
         * @param animate True for the default animation, or a standard Element animation config object
         * @return this
         */
        public native function toggle(animate : * = false) : Element;
        /**
         * Sets the CSS display property. Uses originalDisplay if the specified value is a boolean true.
         * @param value Boolean value to display the element using its default display, or a string to set the display directly.
         * @return this
         */
        public native function setDisplayed(value : *) : Element;
        protected native function fixDisplay() : void;
        /**
         * Hide this element - Uses display mode to determine whether to use "display" or "visibility". See <b class='link' title='#setVisible'>setVisible</b>.
         * @param animate true for the default animation or a standard Element animation config object
         * @return this
         */
        public native function hide(animate : * = false) : Element;
        /**
        * Show this element - Uses display mode to determine whether to use "display" or "visibility". See <b class='link' title='#setVisible'>setVisible</b>.
        * @param animate true for the default animation or a standard Element animation config object
         * @return this
         */
        public native function show(animate : * = false) : Element;
	    /**
	     * Appends the passed element(s) to this element
	     * @param el
	     * @return this
	     */
	    public native function appendChild(el : *) : Element;
	    /**
	     * Appends this element to the passed element
	     * @param el The new parent element
	     * @return this
	     */
	    public native function appendTo(el : *) : Element;
	    /**
	     * Inserts this element before the passed element in the DOM
	     * @param el The element before which this element will be inserted
	     * @return this
	     */
	    public native function insertBefore(el : *) : Element;
	    /**
	     * Inserts this element after the passed element in the DOM
	     * @param el The element to insert after
	     * @return this
	     */
	    public native function insertAfter(el : *) : Element;
	    /**
	     * Inserts (or creates) an element (or DomHelper config) as the first child of this element
	     * @param el The id or element to insert or a DomHelper config to create and insert
         * @param returnDom true to return the dom node instead of creating an Element
	     * @return The new child
	     */
	    public native function insertFirst(el : *, returnDom: Boolean = false) : Element;
	    /**
	     * Replaces the passed element with this element
	     * @param el The element to replace
	     * @return this
	     */
	    public native function replace(el : *) : Element;
	    /**
	     * Replaces this element with the passed element
	     * @param el The new element or a DomHelper config of an element to create
	     * @return this
	     */
	    public native function replaceWith(el : *) : Element;
		/**
		 * Creates the passed DomHelper config and appends it to this element or optionally inserts it before the passed child element.
		 * @param config DomHelper element config object.  If no tag is specified (e.g., {tag:'input'}) then a div will be
		 * automatically generated with the specified attributes.
		 * @param insertBefore a child element of this element
		 * @param returnDom true to return the dom node instead of creating an Element
		 * @return The new child element
		 */
		public native function createChild(config : Object, insertBefore : HTMLElement = undefined, returnDom : Boolean = false) : Element;
		/**
		 * Creates and wraps this element with another element
		 * @param config DomHelper element config object for the wrapper element or null for an empty div
		 * @param returnDom True to return the raw DOM element instead of ext.Element
		 * @return The newly created wrapper element
		 */
		public native function wrap(config : Object = undefined, returnDom : Boolean = false) : *;
		/**
		 * Inserts an html fragment into this element
		 * @param where Where to insert the html in relation to this element - beforeBegin, afterBegin, beforeEnd, afterEnd.
		 * @param html The HTML fragment
		 * @param returnEl True to return an ext.Element (defaults to false)
		 * @return The inserted node (or nearest related if more than 1 inserted)
		 */
		public native function insertHtml(where : String, html : String, returnEl : Boolean = false) : *;
/**
 * <p>Encapsulates a DOM element, adding simple DOM manipulation facilities, normalizing for browser differences.</p>
 * <p>All instances of this class inherit the methods of <b class='link'>ext.Fx</b> making visual effects easily available to all DOM elements.</p>
 * <p>Note that the events documented in this class are not Ext events, they encapsulate browser events. To
 * access the underlying browser event, see <b class='link'>ext.EventObjectClass#browserEvent</b>. Some older
 * browsers may not support the full range of events. Which events are supported is beyond the control of ExtJs.</p>
 * Usage:<br>
<pre><code>
// by id
var el = Ext.get("my-div");

// by DOM element reference
var el = Ext.get(myDivElement);
</code></pre>
 * <b>Animations</b><br />
 * <p>When an element is manipulated, by default there is no animation.</p>
 * <pre><code>
var el = Ext.get("my-div");

// no animation
el.setWidth(100);
 * </code></pre>
 * <p>Many of the functions for manipulating an element have an optional "animate" parameter.  This
 * parameter can be specified as boolean (<code>true</code>) for default animation effects.</p>
 * <pre><code>
// default animation
el.setWidth(100, true);
 * </code></pre>
 * 
 * <p>To configure the effects, an object literal with animation options to use as the Element animation
 * configuration object can also be specified. Note that the supported Element animation configuration
 * options are a subset of the <b class='link'>ext.Fx</b> animation options specific to Fx effects.  The supported
 * Element animation configuration options are:</p>
<pre>
Option    Default   Description
--------- --------  ---------------------------------------------
<b class='link' title='ext.Fx#duration'>duration</b>  .35       The duration of the animation in seconds
<b class='link' title='ext.Fx#easing'>easing</b>    easeOut   The easing method
<b class='link' title='ext.Fx#callback'>callback</b>  none      A function to execute when the anim completes
<b class='link' title='ext.Fx#scope'>scope</b>     this      The scope (this) of the callback function
</pre>
 * 
 * <pre><code>
// Element animation options object
var opt = {
    <b class='link' title='ext.Fx#duration'>duration</b>: 1,
    <b class='link' title='ext.Fx#easing'>easing</b>: 'elasticIn',
    <b class='link' title='ext.Fx#callback'>callback</b>: this.foo,
    <b class='link' title='ext.Fx#scope'>scope</b>: this
};
// animation with some options set
el.setWidth(100, opt);
 * </code></pre>
 * <p>The Element animation object being used for the animation will be set on the options
 * object as "anim", which allows you to stop or manipulate the animation. Here is an example:</p>
 * <pre><code>
// using the "anim" property to get the Anim object
if(opt.anim.isAnimated()){
    opt.anim.stop();
}
 * </code></pre>
 * <p>Also see the <code><b class='link' title='#animate'>animate</b></code> method for another animation technique.</p>
 * <p><b> Composite (Collections of) Elements</b></p>
 * <p>For working with collections of Elements, see <b class='link'>ext.CompositeElement</b></p>
 * @constructor Create a new Element directly.
 * @param element
 * @param forceNew By default the constructor checks to see if there is already an instance of this element in the cache and if there is it returns the same instance. This will skip that check (useful for extending this class).
 */
public native function Element(element : *, forceNew : Boolean = false);
    /**
     * The DOM element
     */
    /**
     * The DOM element ID
     */
    /**
     * Sets the passed attributes as attributes of this element (a style attribute can be a string, object or function)
     * @param o The object with the attributes
     * @param useSet false to override the default setAttribute to use expandos.
     * @return this
     */
    public native function set(o : Object, useSet : Boolean = false) : Element;
    /**
     * The default unit to append to CSS values where a unit isn't provided (defaults to px).
     */
    public var defaultUnit  : String;
    /**
     * Returns true if this element matches the passed simple selector (e.g. div.some-class or span:first-child)
     * @param selector The simple selector to test
     * @return True if this element matches the selector, else false
     */
    public native function matches(selector : String) : Boolean;
    /**
     * Tries to focus the element. Any exceptions are caught and ignored.
     * @param defer Milliseconds to defer the focus
     * @return this
     */
    public native function focus(defer : Number = undefined) : Element;
    /**
     * Tries to blur the element. Any exceptions are caught and ignored.
     * @return this
     */
    public native function blur() : Element;
    /**
     * Returns the value of the "value" attribute
     * @param asNumber true to parse the value as a number
     * @return 
     */
    public native function getValue(asNumber : Boolean = false) : *;
    /**
     * Appends an event handler to this element.  The shorthand version <b class='link' title='#on'>on</b> is equivalent.
     * @param eventName The type of event to handle
     * @param fn The handler function the event invokes. This function is passed
     * the following parameters:<ul>
     * <li><b>evt</b> : EventObjectClass<div class="sub-desc">The <b class='link' title='ext.EventObjectClass'>EventObjectClass</b> describing the event.</div></li>
     * <li><b>el</b> : Element<div class="sub-desc">The <b class='link' title='ext.Element'>Element</b> which was the target of the event.
     * Note that this may be filtered by using the <code>delegate</code> option.</div></li>
     * <li><b>o</b> : Object<div class="sub-desc">The options object from the addListener call.</div></li>
     * </ul>
     * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed.
     * <b>If omitted, defaults to this Element.</b>.
     * @param options An object containing handler configuration properties.
     * This may contain any of the following properties:<ul>
     * <li><b>scope</b> Object : <div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed.
     * <b>If omitted, defaults to this Element.</b></div></li>
     * <li><b>delegate</b> String: <div class="sub-desc">A simple selector to filter the target or look for a descendant of the target. See below for additional details.</div></li>
     * <li><b>stopEvent</b> Boolean: <div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li>
     * <li><b>preventDefault</b> Boolean: <div class="sub-desc">True to prevent the default action</div></li>
     * <li><b>stopPropagation</b> Boolean: <div class="sub-desc">True to prevent event propagation</div></li>
     * <li><b>normalized</b> Boolean: <div class="sub-desc">False to pass a browser event to the handler function instead of an ext.EventObjectClass</div></li>
     * <li><b>target</b> ext.Element: <div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li>
     * <li><b>delay</b> Number: <div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li>
     * <li><b>single</b> Boolean: <div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li>
     * <li><b>buffer</b> Number: <div class="sub-desc">Causes the handler to be scheduled to run in an <b class='link'>Ext.util.DelayedTask</b> delayed
     * by the specified number of milliseconds. If the event fires again within that time, the original
     * handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li>
     * </ul><br>
     * <p>
     * <b>Combining Options</b><br>
     * In the following examples, the shorthand form <b class='link' title='#on'>on</b> is used rather than the more verbose
     * addListener.  The two are equivalent.  Using the options argument, it is possible to combine different
     * types of listeners:<br>
     * <br>
     * A delayed, one-time listener that auto stops the event and adds a custom argument (forumId) to the
     * options object. The options object is available as the third parameter in the handler function.<div style="margin: 5px 20px 20px;">
     * Code:<pre><code>
el.on('click', this.onClick, this, {
    single: true,
    delay: 100,
    stopEvent : true,
    forumId: 4
});</code></pre></p>
     * <p>
     * <b>Attaching multiple handlers in 1 call</b><br>
     * The method also allows for a single argument to be passed which is a config object containing properties
     * which specify multiple handlers.</p>
     * <p>
     * Code:<pre><code>
el.on({
    'click' : {
        fn: this.onClick,
        scope: this,
        delay: 100
    },
    'mouseover' : {
        fn: this.onMouseOver,
        scope: this
    },
    'mouseout' : {
        fn: this.onMouseOut,
        scope: this
    }
});</code></pre>
     * <p>
     * Or a shorthand syntax:<br>
     * Code:<pre><code></p>
el.on({
    'click' : this.onClick,
    'mouseover' : this.onMouseOver,
    'mouseout' : this.onMouseOut,
    scope: this
});
     * </code></pre></p>
     * <p><b>delegate</b></p>
     * <p>This is a configuration option that you can pass along when registering a handler for
     * an event to assist with event delegation. Event delegation is a technique that is used to
     * reduce memory consumption and prevent exposure to memory-leaks. By registering an event
     * for a container element as opposed to each element within a container. By setting this
     * configuration option to a simple selector, the target element will be filtered to look for
     * a descendant of the target.
     * For example:<pre><code>
// using this markup:
&lt;div id='elId'>
    &lt;p id='p1'>paragraph one&lt;/p>
    &lt;p id='p2' class='clickable'>paragraph two&lt;/p>
    &lt;p id='p3'>paragraph three&lt;/p>
&lt;/div>
// utilize event delegation to registering just one handler on the container element:
el = Ext.get('elId');
el.on(
    'click',
    function(e,t) {
        // handle click
        console.info(t.id); // 'p2'
    },
    this,
    {
        // filter the target element to be a descendant with the class 'clickable'
        delegate: '.clickable'
    }
);
     * </code></pre></p>
     * @return this
     */
    public native function addListener(eventName : String, fn : Function, scope : Object = undefined, options : Object = undefined) : Element;
    /**
     * Removes an event handler from this element.  The shorthand version <b class='link' title='#un'>un</b> is equivalent.
     * <b>Note</b>: if a <i>scope</i> was explicitly specified when <b class='link' title='#addListener'>adding</b> the
     * listener, the same scope must be specified here.
     * Example:
     * <pre><code>
el.removeListener('click', this.handlerFn);
// or
el.un('click', this.handlerFn);
</code></pre>
     * @param eventName the type of event to remove
     * @param fn the method the event invokes
     * @param scope The scope (The <code>this</code> reference) of the handler function. Defaults
     * to this Element.
     * @return this
     */
    public native function removeListener(eventName : String, fn : Function, scope : Object = undefined) : Element;
    /**
     * Removes all previous added listeners from this element
     * @return this
     */
    public native function removeAllListeners() : Element;
    /**
     * @private Test if size has a unit, otherwise appends the default
     */
    public native function addUnits(size) : void;
    /**
     * <p>Updates the <a href="http://developer.mozilla.org/en/DOM/element.innerHTML">innerHTML</a> of this Element
     * from a specified URL. Note that this is subject to the <a href="http://en.wikipedia.org/wiki/Same_origin_policy">Same Origin Policy</a></p>
     * <p>Updating innerHTML of an element will <b>not</b> execute embedded <code>&lt;script></code> elements. This is a browser restriction.</p>
     * @param options. Either a string containing the URL from which to load the HTML, or an <b class='link'>ext.Ajax#request</b> options object specifying
     * exactly how to request the HTML.
     * @return this
     */
    public native function load(options : *, params:Object = undefined, callback:Function = undefined) : Element;
    /**
     * Tests various css rules/browsers to determine if this element uses a border box
     * @return 
     */
    public native function isBorderBox() : Boolean;
    /**
     * Removes this element from the DOM and deletes it from the cache
     */
    public native function remove() : void;
    /**
     * Sets up event handlers to call the passed functions when the mouse is moved into and out of the Element.
     * @param overFn The function to call when the mouse enters the Element.
     * @param outFn The function to call when the mouse leaves the Element.
     * @param scope The scope (<code>this</code> reference) in which the functions are executed. Defaults to the Element's DOM element.
     * @param options Options for the listener. See <b class='link' title='Ext.util.Observable#addListener the'><code>options</code> parameter</b>.
     * @return this
     */
    public native function hover(overFn : Function, outFn : Function, scope : Object = undefined, options : Object = undefined) : Element;
    /**
     * Returns true if this element is an ancestor of the passed element
     * @param el The element to check
     * @return True if this element is an ancestor of el, else false
     */
    public native function contains(el : *) : Boolean;
    /**
     * Returns the value of a namespaced attribute from the element's underlying DOM node.
     * @param namespace The namespace in which to look for the attribute
     * @param name The attribute name
     * @return The attribute value
     * @deprecated
     */
    public native function getAttributeNS(namespace : String, name : String) : String;
    /**
     * Returns the value of an attribute from the element's underlying DOM node.
     * @param name The attribute name
     * @param namespace The namespace in which to look for the attribute
     * @return The attribute value
     */
    public native function getAttribute(name : String, namespace : String = undefined) : String;
/**
 * Appends an event handler (shorthand for <b class='link' title='#addListener'>addListener</b>).
 * @param eventName The type of event to handle
 * @param fn The handler function the event invokes
 * @param scope The scope (this element) of the handler function
 * @param options An object containing standard <b class='link' title='#addListener'>addListener</b> options
 * @member ext.Element
 * @method on
 */
  public native function on(eventName : String, fn : Function, scope : Object = undefined, options : Object = undefined) : Element;
/**
 * Removes an event handler from this element (see <b class='link' title='#removeListener'>removeListener</b> for additional notes).
 * @param eventName the type of event to remove
 * @param fn the method the event invokes
 * @param scope The scope (The <code>this</code> reference) of the handler function. Defaults
 * to this Element.
 * @return this
 * @member ext.Element
 * @method un
 */
  public native function un(eventName : String, fn : Function, scope : Object = undefined) : Element;
/**
 * true to automatically adjust width and height settings for box-model issues (default to true)
 */
/**
 * @private
 */
/**
 * Retrieves ext.Element objects.
 * <p><b>This method does not retrieve <b class='link' title='ext.Component'>Component</b>s.</b> This method
 * retrieves ext.Element objects which encapsulate DOM elements. To retrieve a Component by
 * its ID, use <b class='link'>ext.ComponentMgr#get</b>.</p>
 * <p>Uses simple caching to consistently return the same object. Automatically fixes if an
 * object was recreated with the same id via AJAX or DOM.</p>
 * @param el The id of the node, a DOM Node or an existing Element.
 * @return The Element object (or null if no matching element was found)
 * @static
 * @member ext.Element
 * @method get
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
 * @return The shared Element object (or null if no matching element was found)
 * @member ext.Element
 * @method fly
 */
  public static native function fly(el : *, named : String) : Element;
//    public var select;
    public var input;
	/**
      * Gets the current X position of the element based on page coordinates.  Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
      * @return The X position of the element
      */
    public native function getX() : Number;
    /**
      * Gets the current Y position of the element based on page coordinates.  Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
      * @return The Y position of the element
      */
    public native function getY() : Number;
    /**
      * Gets the current position of the element based on page coordinates.  Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
      * @return The XY position of the element
      */
    public native function getXY() : Array;
    /**
      * Returns the offsets of this element from the passed element. Both element must be part of the DOM tree and not have display:none to have page coordinates.
      * @param element The element to get the offsets from.
      * @return The XY page offsets (e.g. [100, -200])
      */
    public native function getOffsetsTo(element : *) : Array;
    /**
     * Sets the X position of the element based on page coordinates.  Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
     * @param x The X position of the element
     * @param animate True for the default animation, or a standard Element animation config object
     * @return this
     */
    public native function setX(x : Number, animate : * = undefined) : Element;
    /**
     * Sets the Y position of the element based on page coordinates.  Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
     * @param y The Y position of the element
     * @param animate True for the default animation, or a standard Element animation config object
     * @return this
     */
    public native function setY(y : Number, animate : * = undefined) : Element;
    /**
     * Sets the element's left position directly using CSS style (instead of <b class='link' title='#setX'>setX</b>).
     * @param left The left CSS property value
     * @return this
     */
    public native function setLeft(left : String) : Element;
    /**
     * Sets the element's top position directly using CSS style (instead of <b class='link' title='#setY'>setY</b>).
     * @param top The top CSS property value
     * @return this
     */
    public native function setTop(top : String) : Element;
    /**
     * Sets the element's CSS right style.
     * @param right The right CSS property value
     * @return this
     */
    public native function setRight(right : String) : Element;
    /**
     * Sets the element's CSS bottom style.
     * @param bottom The bottom CSS property value
     * @return this
     */
    public native function setBottom(bottom : String) : Element;
    /**
     * Sets the position of the element in page coordinates, regardless of how the element is positioned.
     * The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
     * @param pos Contains X & Y [x, y] values for new position (coordinates are page-based)
     * @param animate True for the default animation, or a standard Element animation config object
     * @return this
     */
    public native function setXY(pos : Array, animate : * = undefined) : Element;
    /**
     * Sets the position of the element in page coordinates, regardless of how the element is positioned.
     * The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
     * @param x X value for new position (coordinates are page-based)
     * @param y Y value for new position (coordinates are page-based)
     * @param animate True for the default animation, or a standard Element animation config object
     * @return this
     */
    public native function setLocation(x : Number, y : Number, animate : * = undefined) : Element;
    /**
     * Sets the position of the element in page coordinates, regardless of how the element is positioned.
     * The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
     * @param x X value for new position (coordinates are page-based)
     * @param y Y value for new position (coordinates are page-based)
     * @param animate True for the default animation, or a standard Element animation config object
     * @return this
     */
    public native function moveTo(x : Number, y : Number, animate : * = undefined) : Element;
    /**
     * Gets the left X coordinate
     * @param local True to get the local css position instead of page coordinate
     * @return 
     */
    public native function getLeft(local : Boolean = false) : Number;
    /**
     * Gets the right X coordinate of the element (element X position + element width)
     * @param local True to get the local css position instead of page coordinate
     * @return 
     */
    public native function getRight(local : Boolean = false) : Number;
    /**
     * Gets the top Y coordinate
     * @param local True to get the local css position instead of page coordinate
     * @return 
     */
    public native function getTop(local : Boolean = false) : Number;
    /**
     * Gets the bottom Y coordinate of the element (element Y position + element height)
     * @param local True to get the local css position instead of page coordinate
     * @return 
     */
    public native function getBottom(local : Boolean = false) : Number;
    /**
    * Initializes positioning on this element. If a desired position is not passed, it will make the
    * the element positioned relative IF it is not already positioned.
    * @param pos Positioning to use "relative", "absolute" or "fixed"
    * @param zIndex The zIndex to apply
    * @param x Set the page X position
    * @param y Set the page Y position
    */
    public native function position(pos : String = undefined, zIndex : Number = undefined, x : Number = undefined, y : Number = undefined) : void;
    /**
    * Clear positioning back to the default when the document was loaded
    * @param value The value to use for the left,right,top,bottom, defaults to '' (empty string). You could use 'auto'.
    * @return this
     */
    public native function clearPositioning(value : String = undefined) : Element;
    /**
    * Gets an object with all CSS positioning properties. Useful along with setPostioning to get
    * snapshot before performing an update and then restoring the element.
    * @return 
    */
    public native function getPositioning() : Object;
    /**
    * Set positioning with an object returned by getPositioning().
    * @param posCfg
    * @return this
     */
    public native function setPositioning(posCfg : Object) : Element;
    /**
     * Translates the passed page coordinates into left/top css values for this element
     * @param x The page x or an array containing [x, y]
     * @param y The page y, required if x is not an array
     * @return An object with left and top properties. e.g. {left: (value), top: (value)}
     */
    public native function translatePoints(x : *, y : Number = undefined) : Object;

    /**
     * Returns true if this element is scrollable.
     * @return 
     */
    public native function isScrollable() : Boolean;
    /**
     * Returns the current scroll position of the element.
     * @return An object containing the scroll position in the format {left: (scrollLeft), top: (scrollTop)}
     */
    public native function getScroll() : Object;
        protected native function adjustWidth(width) : void;
        public native function adjustHeight(height) : void;
        /**
         * Adds one or more CSS classes to the element. Duplicate classes are automatically filtered out.
         * @param className The CSS class to add, or an array of classes
         * @return this
         */
        public native function addClass(className : *) : Element;
        /**
         * Adds one or more CSS classes to this element and removes the same class(es) from all siblings.
         * @param className The CSS class to add, or an array of classes
         * @return this
         */
        public native function radioClass(className : *) : Element;
        /**
         * Removes one or more CSS classes from the element.
         * @param className The CSS class to remove, or an array of classes
         * @return this
         */
        public native function removeClass(className : *) : Element;
        /**
         * Toggles the specified CSS class on this element (removes it if it already exists, otherwise adds it).
         * @param className The CSS class to toggle
         * @return this
         */
        public native function toggleClass(className : String) : Element;
        /**
         * Checks if the specified CSS class exists on this element's DOM node.
         * @param className The CSS class to check for
         * @return True if the class exists, else false
         */
        public native function hasClass(className : String) : Boolean;
        /**
         * Replaces a CSS class on the element with another.  If the old name does not exist, the new name will simply be added.
         * @param oldClassName The CSS class to replace
         * @param newClassName The replacement CSS class
         * @return this
         */
        public native function replaceClass(oldClassName : String, newClassName : String) : Element;
        public native function isStyle(style, val) : void;
        /**
         * Normalizes currentStyle and computedStyle.
         * @param property The style property whose value is returned.
         * @return The current value of the style property for this element.
         */
        public native function getStyle(property : String) : String;
        /**
         * Return the CSS color for the specified CSS attribute. rgb, 3 digit (like #fff) and valid values
         * are convert to standard 6 digit hex color.
         * @param attr The css attribute
         * @param defaultValue The default value to use when a valid color isn't found
         * @param prefix defaults to #. Use an empty string when working with
         * color anims.
         */
        public native function getColor(attr : String, defaultValue : String, prefix : String = undefined) : void;
        /**
         * Wrapper for setting style properties, also takes single object parameter of multiple styles.
         * @param property The style property to be set, or an object of multiple styles.
         * @param value The value to apply to the given property, or null if an object was passed.
         * @return this
         */
        public native function setStyle(property : *, value : String = undefined) : Element;
        /**
         * Set the opacity of the element
         * @param opacity The new opacity. 0 = transparent, .5 = 50% visibile, 1 = fully visible, etc
         * @param animate a standard Element animation config object or <code>true</code> for
         * the default animation (<code>{duration: .35, easing: 'easeIn'}</code>)
         * @return this
         */
         public native function setOpacity(opacity : Number, animate : * = undefined) : Element;
        /**
         * Clears any opacity settings from this element. Required in some cases for IE.
         * @return this
         */
        public native function clearOpacity() : Element;
        /**
         * Returns the offset height of the element
         * @param contentHeight true to get the height minus borders and padding
         * @return The element's height
         */
        public native function getHeight(contentHeight : Boolean = false) : Number;
        /**
         * Returns the offset width of the element
         * @param contentWidth true to get the width minus borders and padding
         * @return The element's width
         */
        public native function getWidth(contentWidth : Boolean = false) : Number;
        /**
         * Set the width of this Element.
         * @param width The new width. This may be one of:<div class="mdetail-params"><ul>
         * <li>A Number specifying the new width in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels).</li>
         * <li>A String used to set the CSS width style. Animation may <b>not</b> be used.
         * </ul></div>
         * @param animate true for the default animation or a standard Element animation config object
         * @return this
         */
        public native function setWidth(width : *, animate : * = false) : Element;
        /**
         * Set the height of this Element.
         * <pre><code>
// change the height to 200px and animate with default configuration
Ext.fly('elementId').setHeight(200, true);

// change the height to 150px and animate with a custom configuration
Ext.fly('elId').setHeight(150, {
    duration : .5, // animation will have a duration of .5 seconds
    // will change the content to "finished"
    callback: function(){ this.<b class='link' title='#update}("finished");'></b>
});
         * </code></pre>
         * @param height The new height. This may be one of:<div class="mdetail-params"><ul>
         * <li>A Number specifying the new height in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels.)</li>
         * <li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li>
         * </ul></div>
         * @param animate true for the default animation or a standard Element animation config object
         * @return this
         */
         public native function setHeight(height : *, animate : * = undefined) : Element;
        /**
         * Gets the width of the border(s) for the specified side(s)
         * @param side Can be t, l, r, b or any combination of those to add multiple values. For example,
         * passing <code>'lr'</code> would get the border <b><u>l</u></b>eft width + the border <b><u>r</u></b>ight width.
         * @return The width of the sides passed added together
         */
        public native function getBorderWidth(side : String) : Number;
        /**
         * Gets the width of the padding(s) for the specified side(s)
         * @param side Can be t, l, r, b or any combination of those to add multiple values. For example,
         * passing <code>'lr'</code> would get the padding <b><u>l</u></b>eft + the padding <b><u>r</u></b>ight.
         * @return The padding of the sides passed added together
         */
        public native function getPadding(side : String) : Number;
        /**
         *  Store the current overflow setting and clip overflow on the element - use <code><b class='link' title='#unclip'>unclip</b></code> to remove
         * @return this
         */
        public native function clip() : Element;
        /**
         *  Return clipping (overflow) to original clipping before <code><b class='link' title='#clip'>clip</b></code> was called
         * @return this
         */
        public native function unclip() : Element;
        public var addStyles ;
        public var margins ;
		/**
	     * Looks at this node and then at parent nodes for a match of the passed simple selector (e.g. div.some-class or span:first-child)
	     * @param selector The simple selector to test
	     * @param maxDepth The max depth to search as a number or element (defaults to 50 || document.body)
	     * @param returnEl True to return a ext.Element object instead of DOM node
	     * @return The matching DOM node (or null if no match was found)
	     */
	    public native function findParent(selector : String, maxDepth : * = undefined, returnEl : Boolean = false) : HTMLElement;
	    /**
	     * Looks at parent nodes for a match of the passed simple selector (e.g. div.some-class or span:first-child)
	     * @param selector The simple selector to test
	     * @param maxDepth The max depth to
	            search as a number or element (defaults to 10 || document.body)
	     * @param returnEl True to return a ext.Element object instead of DOM node
	     * @return The matching DOM node (or null if no match was found)
	     */
	    public native function findParentNode(selector : String, maxDepth : * = undefined, returnEl : Boolean = false) : HTMLElement;
	    /**
	     * Walks up the dom looking for a parent node that matches the passed simple selector (e.g. div.some-class or span:first-child).
	     * This is a shortcut for findParentNode() that always returns an ext.Element.
	     * @param selector The simple selector to test
	     * @param maxDepth The max depth to
	            search as a number or element (defaults to 10 || document.body)
	     * @return The matching DOM node (or null if no match was found)
	     */
	    public native function up(selector : String, maxDepth : * = undefined) : Element;
  /**
   * Selects elements based on the passed CSS selector to enable <b class='link' title='ext.Element'>Element</b> methods
   * to be applied to many related elements in one statement through the returned <b class='link' title='ext.CompositeElement'>CompositeElement</b> or
   * <b class='link' title='ext.CompositeElementLite'>CompositeElementLite</b> object.
   * @param selector The CSS selector or an array of elements
   * @param unique True to create a unique ext.Element for each child (defaults to false, which creates a single shared flyweight object)
   * @param root The root element of the query or id of the root
   * @return The composite element
   */
	    public native function select(selector : *, unique : Boolean = false, root : * = undefined) : CompositeElement;
	    /**
	     * Selects child nodes based on the passed CSS selector (the selector should not contain an id).
	     * @param selector The CSS selector
	     * @return An array of the matched nodes
	     */
	    public native function query(selector : String, unique) : Array;
	    /**
	     * Selects a single child at any depth below this element based on the passed CSS selector (the selector should not contain an id).
	     * @param selector The CSS selector
	     * @param returnDom True to return the DOM node instead of ext.Element (defaults to false)
	     * @return The child ext.Element (or DOM node if returnDom = true)
	     */
	    public native function child(selector : String, returnDom : Boolean = false) : *;
	    /**
	     * Selects a single *direct* child based on the passed CSS selector (the selector should not contain an id).
	     * @param selector The CSS selector
	     * @param returnDom True to return the DOM node instead of ext.Element (defaults to false)
	     * @return The child ext.Element (or DOM node if returnDom = true)
	     */
	    public native function down(selector : String, returnDom : Boolean = false) : *;
		 /**
	     * Gets the parent node for this element, optionally chaining up trying to match a selector
	     * @param selector Find a parent node that matches the passed simple selector
	     * @param returnDom True to return a raw dom node instead of an ext.Element
	     * @return The parent node or null
		 */
	    public native function parent(selector : String = undefined, returnDom : Boolean = false) : *;
	     /**
	     * Gets the next sibling, skipping text nodes
	     * @param selector Find the next sibling that matches the passed simple selector
	     * @param returnDom True to return a raw dom node instead of an ext.Element
	     * @return The next sibling or null
		 */
	    public native function next(selector : String = undefined, returnDom : Boolean = false) : *;
	    /**
	     * Gets the previous sibling, skipping text nodes
	     * @param selector Find the previous sibling that matches the passed simple selector
	     * @param returnDom True to return a raw dom node instead of an ext.Element
	     * @return The previous sibling or null
		 */
	    public native function prev(selector : String = undefined, returnDom : Boolean = false) : *;
	    /**
	     * Gets the first child, skipping text nodes
	     * @param selector Find the next sibling that matches the passed simple selector
	     * @param returnDom True to return a raw dom node instead of an ext.Element
	     * @return The first child or null
		 */
	    public native function first(selector : String = undefined, returnDom : Boolean = false) : *;
	    /**
	     * Gets the last child, skipping text nodes
	     * @param selector Find the previous sibling that matches the passed simple selector
	     * @param returnDom True to return a raw dom node instead of an ext.Element
	     * @return The last child or null
		 */
	    public native function last(selector : String = undefined, returnDom : Boolean = false) : *;
	    public native function matchNode(dir, start, selector, returnDom) : void;
    /**
     * Stops the specified event(s) from bubbling and optionally prevents the default action
     * @param eventName an event / array of events to stop from bubbling
     * @param preventDefault true to prevent the default action too
     * @return this
     */
    public native function swallowEvent(eventName : *, preventDefault : Boolean = false) : Element;
    /**
     * Create an event handler on this element such that when the event fires and is handled by this element,
     * it will be relayed to another object (i.e., fired again as if it originated from that object instead).
     * @param eventName The type of event to relay
     * @param object Any object that extends <b class='link'>Ext.util.Observable</b> that will provide the context
     * for firing the relayed event
     */
    public native function relayEvent(eventName : String, object : Object) : void;
	/**
     * Removes worthless text nodes
     * @param forceReclean By default the element
     * keeps track if it has been cleaned already so
     * you can call this over and over. However, if you update the element and
     * need to force a reclean, you can pass true.
     */
    public native function clean(forceReclean : Boolean = false) : void;
    /**
    * Gets this element's <b class='link' title='ext.Updater'>Updater</b>
    * @return The Updater
    */
    public native function getUpdater() : Updater;
	/**
    * Update the innerHTML of this element, optionally searching for and processing scripts
    * @param html The new HTML
    * @param loadScripts True to look for and process scripts (defaults to false)
    * @param callback For async script loading you can be notified when the update completes
    * @return this
     */
    public native function update(html : String, loadScripts : Boolean = false, callback : Function = undefined) : Element;
    /**
     * Creates a proxy element of this element
     * @param config The class name of the proxy element or a DomHelper config object
     * @param renderTo The element or element id to render the proxy to (defaults to document.body)
     * @param matchBox True to align and size the proxy to this element now (defaults to false)
     * @return The new proxy element
     */
    public native function createProxy(config : *, renderTo : * = undefined, matchBox : Boolean = false) : Element;
protected native function uncache (el) : void;
    /**
     * Gets the x,y coordinates specified by the anchor position on the element.
     * @param anchor The specified anchor position (defaults to "c").  See <b class='link' title='#alignTo'>alignTo</b>
     * for details on supported anchor positions.
     * @param local True to get the local (element top/left-relative) anchor position instead
     * of page coordinates
     * @param size An object containing the size to use for calculating anchor position
     * {width: (target width), height: (target height)} (defaults to the element's current size)
     * @return [x, y] An array containing the element's x and y coordinates
     */
    public native function getAnchorXY(anchor : String = undefined, local : Boolean = false, size : Object = undefined) : Array;
    /**
     * Anchors an element to another element and realigns it when the window is resized.
     * @param element The element to align to.
     * @param position The position to align to.
     * @param offsets Offset the positioning by [x, y]
     * @param animate True for the default animation or a standard Element animation config object
     * @param monitorScroll True to monitor body scroll and reposition. If this parameter
     * is a number, it is used as the buffer delay (defaults to 50ms).
     * @param callback The function to call after the animation finishes
     * @return this
     */
    public native function anchorTo(element : *, position : String, offsets : Array = undefined, animate : * = undefined, monitorScroll : * = undefined, callback : Function = undefined) : Element;
    /**
     * Gets the x,y coordinates to align this element with another element. See <b class='link' title='#alignTo'>alignTo</b> for more info on the
     * supported position values.
     * @param element The element to align to.
     * @param position The position to align to.
     * @param offsets Offset the positioning by [x, y]
     * @return [x, y]
     */
    public native function getAlignToXY(element : *, position : String, offsets : Array = undefined) : Array;
    /**
     * Aligns this element with another element relative to the specified anchor points. If the other element is the
     * document it aligns it to the viewport.
     * The position parameter is optional, and can be specified in any one of the following formats:
     * <ul>
     *   <li><b>Blank</b>: Defaults to aligning the element's top-left corner to the target's bottom-left corner ("tl-bl").</li>
     *   <li><b>One anchor (deprecated)</b>: The passed anchor position is used as the target element's anchor point.
     *       The element being aligned will position its top-left corner (tl) to that point.  <i>This method has been
     *       deprecated in favor of the newer two anchor syntax below</i>.</li>
     *   <li><b>Two anchors</b>: If two values from the table below are passed separated by a dash, the first value is used as the
     *       element's anchor point, and the second value is used as the target's anchor point.</li>
     * </ul>
     * In addition to the anchor points, the position parameter also supports the "?" character.  If "?" is passed at the end of
     * the position string, the element will attempt to align as specified, but the position will be adjusted to constrain to
     * the viewport if necessary.  Note that the element being aligned might be swapped to align to a different position than
     * that specified in order to enforce the viewport constraints.
     * Following are all of the supported anchor positions:
<pre>
Value  Description
-----  -----------------------------
tl     The top left corner (default)
t      The center of the top edge
tr     The top right corner
l      The center of the left edge
c      In the center of the element
r      The center of the right edge
bl     The bottom left corner
b      The center of the bottom edge
br     The bottom right corner
</pre>
Example Usage:
<pre><code>
// align el to other-el using the default positioning ("tl-bl", non-constrained)
el.alignTo("other-el");

// align the top left corner of el with the top right corner of other-el (constrained to viewport)
el.alignTo("other-el", "tr?");

// align the bottom right corner of el with the center left edge of other-el
el.alignTo("other-el", "br-l?");

// align the center of el with the bottom left corner of other-el and
// adjust the x position by -6 pixels (and the y position by 0)
el.alignTo("other-el", "c-bl", [-6, 0]);
</code></pre>
     * @param element The element to align to.
     * @param position The position to align to.
     * @param offsets Offset the positioning by [x, y]
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
    public native function alignTo(element : *, position : String, offsets : Array = undefined, animate : * = undefined) : Element;
    public native function adjustForConstraints(xy, parent, offsets) : void;
    public native function getConstrainToXY(el, local, offsets, proposedXY) : void;
    /**
    * Calculates the x, y to center this element on the screen
    * @return The x, y values [x, y]
    */
    public native function getCenterXY() : Array;
    /**
    * Centers the Element in either the viewport, or another Element.
    * @param centerIn The element in which to center the element.
    */
    public native function center(centerIn : * = undefined) : void;
    /**
     * Initializes a <b class='link'>Ext.dd.DD</b> drag drop object for this element.
     * @param group The group the DD object is member of
     * @param config The DD config object
     * @param overrides An object containing methods to override/implement on the DD object
     * @return The DD object
     */
    public native function initDD(group : String, config : Object, overrides : Object) : DD;
    /**
     * Initializes a <b class='link'>Ext.dd.DDProxy</b> object for this element.
     * @param group The group the DDProxy object is member of
     * @param config The DDProxy config object
     * @param overrides An object containing methods to override/implement on the DDProxy object
     * @return The DDProxy object
     */
    public native function initDDProxy(group : String, config : Object, overrides : Object) : DDProxy;
    /**
     * Initializes a <b class='link'>Ext.dd.DDTarget</b> object for this element.
     * @param group The group the DDTarget object is member of
     * @param config The DDTarget config object
     * @param overrides An object containing methods to override/implement on the DDTarget object
     * @return The DDTarget object
     */
    public native function initDDTarget(group : String, config : Object, overrides : Object) : DDTarget;
		/**
	     * Checks whether the element is currently visible using both visibility and display properties.
	     * @param deep True to walk the dom and see if parent elements are hidden (defaults to false)
	     * @return True if the element is currently visible, else false
	     */
	    public native function isVisible(deep : Boolean = false) : Boolean;
	    /**
	     * Returns true if display is not "none"
	     * @return 
	     */
	    public native function isDisplayed() : Boolean;
		/**
	     * Convenience method for setVisibilityMode(Element.DISPLAY)
	     * @param display What to set display to when visible
	     * @return this
	     */
	    public native function enableDisplayMode(display : String = undefined) : Element;
		/**
	     * Puts a mask over this element to disable user interaction. Requires core.css.
	     * This method can only be applied to elements which accept child nodes.
	     * @param msg A message to display in the mask
	     * @param msgCls A css class to apply to the msg element
	     * @return The mask element
	     */
	    public native function mask(msg : String = undefined, msgCls : String = undefined) : Element;
	    /**
	     * Removes a previously applied mask.
	     */
	    public native function unmask() : void;
	    /**
	     * Returns true if this element is masked
	     * @return 
	     */
	    public native function isMasked() : Boolean;
	    /**
	     * Creates an iframe shim for this element to keep selects and other windowed objects from
	     * showing through.
	     * @return The new shim element
	     */
	    public native function createShim() : Element;
		/**
	     * Inserts (or creates) the passed element (or DomHelper config) as a sibling of this element
	     * @param el The id, element to insert or a DomHelper config to create and insert *or* an array of any of those.
	     * @param where 'before' or 'after' defaults to before
	     * @param returnDom True to return the raw DOM element instead of ext.Element
	     * @return the inserted Element
	     */
	    public native function insertSibling(el : *, where : String = undefined, returnDom : Boolean = false) : Element;
    /**
     * Convenience method for constructing a KeyMap
     * @param key Either a string with the keys to listen for, the numeric key code, array of key codes or an object with the following options:
     *                                  {key: (number or array), shift: (true/false), ctrl: (true/false), alt: (true/false)}
     * @param fn The function to call
     * @param scope The scope of the function
     * @return The KeyMap created
     */
    public native function addKeyListener(key : *, fn : Function, scope : Object = undefined) : KeyMap;
    /**
     * Creates a KeyMap for this element
     * @param config The KeyMap config. See <b class='link'>ext.KeyMap</b> for more details
     * @return The KeyMap created
     */
    public native function addKeyMap(config : Object) : KeyMap;
    /**
     * Measures the element's content height and updates height to match. Note: this function uses setTimeout so
     * the new height may not be available immediately.
     * @param animate Animate the transition (defaults to false)
     * @param duration Length of the animation in seconds (defaults to .35)
     * @param onComplete Function to call when animation completes
     * @param easing Easing method to use (defaults to easeOut)
     * @return this
     */
    public native function autoHeight(animate : Boolean = false, duration : Number = .35, onComplete : Function = undefined, easing : String = undefined) : Element;
    /**
     * Sets the element's box. Use getBox() on another element to get a box obj. If animate is true then width, height, x and y will be animated concurrently.
     * @param box The box to fill {x, y, width, height}
     * @param adjust Whether to adjust for box-model issues automatically
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
    public native function setBox(box : Object, adjust : Boolean = false, animate : * = false) : Element;
    /**
     * Return a box {x, y, width, height} that can be used to set another elements
     * size/location to match this element.
     * @param contentBox If true a box for the content of the element is returned.
     * @param local If true the element's left and top are returned instead of page x/y.
     * @return box An object in the format {x, y, width, height}
     */
	public native function getBox(contentBox : Boolean = false, local : Boolean = false) : Object;
    /**
     * Move this element relative to its current position.
     * @param direction Possible values are: "l" (or "left"), "r" (or "right"), "t" (or "top", or "up"), "b" (or "bottom", or "down").
     * @param distance How far to move the element in pixels
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
     public native function move(direction : String, distance : Number, animate : * = undefined) : Element;
    /**
     * Quick set left and top adding default units
     * @param left The left CSS property value
     * @param top The top CSS property value
     * @return this
     */
     public native function setLeftTop(left : String, top : String) : Element;
    /**
     * Returns the region of the given element.
     * The element must be part of the DOM tree to have a region (display:none or elements not appended return false).
     * @return A Ext.lib.Region containing "top, left, bottom, right" member data.
     */
    public native function getRegion() : Region;
    /**
     * Sets the element's position and size in one shot. If animation is true then width, height, x and y will be animated concurrently.
     * @param x X value for new position (coordinates are page-based)
     * @param y Y value for new position (coordinates are page-based)
     * @param width The new width. This may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new width in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels)</li>
     * <li>A String used to set the CSS width style. Animation may <b>not</b> be used.
     * </ul></div>
     * @param height The new height. This may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new height in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels)</li>
     * <li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li>
     * </ul></div>
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
    public native function setBounds(x : Number, y : Number, width : *, height : *, animate : * = undefined) : Element;
    /**
     * Sets the element's position and size the specified region. If animation is true then width, height, x and y will be animated concurrently.
     * @param region The region to fill
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
    public native function setRegion(region : Region, animate : * = undefined) : Element;
    /**
     * Scrolls this element the specified scroll point. It does NOT do bounds checking so if you scroll to a weird value it will try to do it. For auto bounds checking, use scroll().
     * @param side Either "left" for scrollLeft values or "top" for scrollTop values.
     * @param value The new scroll value
     * @param animate true for the default animation or a standard Element animation config object
     * @return this
     */
    public native function scrollTo(side : String, value : Number, animate : * = undefined) : Element;
    /**
     * Scrolls this element into view within the passed container.
     * @param container The container element to scroll (defaults to document.body).  Should be a
     * string (id), dom node, or ext.Element.
     * @param hscroll False to disable horizontal scroll (defaults to true)
     * @return this
     */
    public native function scrollIntoView(container : * = undefined, hscroll : Boolean = true) : Element;
    protected native function scrollChildIntoView(child, hscroll) : void;
    /**
     * Scrolls this element the specified direction. Does bounds checking to make sure the scroll is
     * within this element's scrollable range.
     * @param direction Possible values are: "l" (or "left"), "r" (or "right"), "t" (or "top", or "up"), "b" (or "bottom", or "down").
     * @param distance How far to scroll the element in pixels
     * @param animate true for the default animation or a standard Element animation config object
     * @return Returns true if a scroll was triggered or false if the element
     * was scrolled as far as it could go.
     */
     public native function scroll(direction : String, distance : Number, animate : * = undefined) : Boolean;
public static var boxMarkup:String = '<div class="{0}-tl"><div class="{0}-tr"><div class="{0}-tc"></div></div></div><div class="{0}-ml"><div class="{0}-mr"><div class="{0}-mc"></div></div></div><div class="{0}-bl"><div class="{0}-br"><div class="{0}-bc"></div></div></div>';
	    /**
	     * More flexible version of <b class='link' title='#setStyle'>setStyle</b> for setting style properties.
	     * @param styles A style specification string, e.g. "width:100px", or object in the form {width:"100px"}, or
	     * a function which returns such a specification.
	     * @return this
	     */
	    public native function applyStyles(styles : *) : Element;
		/**
	     * Returns an object with properties matching the styles requested.
	     * For example, el.getStyles('color', 'font-size', 'width') might return
	     * {'color': '#FFFFFF', 'font-size': '13px', 'width': '100px'}.
	     * @param style1 A style name
	     * @param style2 A style name
	     * @param etc.
	     * @return The style object
	     */
	    public native function getStyles(style1 : String, style2 : String, etc : String) : Object;
		public native function getStyleSize() : void;
		public native function setOverflow(v) : void;
	   /**
		* <p>Wraps the specified element with a special 9 element markup/CSS block that renders by default as
		* a gray container with a gradient background, rounded corners and a 4-way shadow.</p>
		* <p>This special markup is used throughout Ext when box wrapping elements (<b class='link'>ext.Button</b>,
		* <b class='link'>ext.Panel</b> when <code><b class='link' title='ext.Panel#frame'>frame=true</b></code>, <b class='link'>ext.Window</b>).  The markup
		* is of this form:</p>
		* <pre><code>
ext.Element.boxMarkup =
    &#39;&lt;div class="{0}-tl">&lt;div class="{0}-tr">&lt;div class="{0}-tc">&lt;/div>&lt;/div>&lt;/div>
     &lt;div class="{0}-ml">&lt;div class="{0}-mr">&lt;div class="{0}-mc">&lt;/div>&lt;/div>&lt;/div>
     &lt;div class="{0}-bl">&lt;div class="{0}-br">&lt;div class="{0}-bc">&lt;/div>&lt;/div>&lt;/div>&#39;;
		* </code></pre>
		* <p>Example usage:</p>
		* <pre><code>
// Basic box wrap
Ext.get("foo").boxWrap();

// You can also add a custom class and use CSS inheritance rules to customize the box look.
// 'x-box-blue' is a built-in alternative -- look at the related CSS definitions as an example
// for how to create a custom box wrap style.
Ext.get("foo").boxWrap().addClass("x-box-blue");
		* </code></pre>
		* @param class_ A base CSS class to apply to the containing wrapper element
		* (defaults to <code>'x-box'</code>). Note that there are a number of CSS rules that are dependent on
		* this name to make the overall effect work, so if you supply an alternate base class, make sure you
		* also supply all of the necessary rules.
		* @return this
		*/
	    public native function boxWrap(class_ : String = undefined) : Element;
        /**
         * Set the size of this Element. If animation is true, both width and height will be animated concurrently.
         * @param width The new width. This may be one of:<div class="mdetail-params"><ul>
         * <li>A Number specifying the new width in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels).</li>
         * <li>A String used to set the CSS width style. Animation may <b>not</b> be used.
         * <li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li>
         * </ul></div>
         * @param height The new height. This may be one of:<div class="mdetail-params"><ul>
         * <li>A Number specifying the new height in this Element's <b class='link' title='#defaultUnit'>defaultUnit</b>s (by default, pixels).</li>
         * <li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li>
         * </ul></div>
         * @param animate true for the default animation or a standard Element animation config object
         * @return this
         */
	    public native function setSize(width : *, height : *, animate : * = undefined) : Element;
	    /**
	     * Returns either the offsetHeight or the height of this element based on CSS height adjusted by padding or borders
	     * when needed to simulate offsetHeight when offsets aren't available. This may not work on display:none elements
	     * if a height has not been set using CSS.
	     * @return 
	     */
	    public native function getComputedHeight() : Number;
	    /**
	     * Returns either the offsetWidth or the width of this element based on CSS width adjusted by padding or borders
	     * when needed to simulate offsetWidth when offsets aren't available. This may not work on display:none elements
	     * if a width has not been set using CSS.
	     * @return 
	     */
	    public native function getComputedWidth() : Number;
	    /**
	     * Returns the sum width of the padding and borders for the passed "sides". See getBorderWidth()
	     for more information about the sides.
	     * @param sides
	     * @return 
	     */
	    public native function getFrameWidth(sides : String, onlyContentBox) : Number;
	    /**
	     * Sets up event handlers to add and remove a css class when the mouse is over this element
	     * @param className
	     * @return this
	     */
	    public native function addClassOnOver(className : String) : Element;
	    /**
	     * Sets up event handlers to add and remove a css class when this element has the focus
	     * @param className
	     * @return this
	     */
	    public native function addClassOnFocus(className : String) : Element;
	    /**
	     * Sets up event handlers to add and remove a css class when the mouse is down and then up on this element (a click effect)
	     * @param className
	     * @return this
	     */
	    public native function addClassOnClick(className : String) : Element;
	    /**
	     * Returns the width and height of the viewport.
        * <pre><code>
        var vpSize = Ext.getBody().getViewSize();

        // all Windows created afterwards will have a default value of 90% height and 95% width
        ext.Window.override({
            width: vpSize.width * 0.9,
            height: vpSize.height * 0.95
        });
        // To handle window resizing you would have to hook onto onWindowResize.
        </code></pre>
	     * @return An object containing the viewport's size {width: (viewport width), height: (viewport height)}
	     */
	    public native function getViewSize() : Object;
	    /**
	     * Returns the size of the element.
	     * @param contentSize true to get the width/size minus borders and padding
	     * @return An object containing the element's size {width: (element width), height: (element height)}
	     */
	    public native function getSize(contentSize : Boolean = false) : Object;
	    /**
	     * Forces the browser to repaint this element
	     * @return this
	     */
	    public native function repaint() : Element;
	    /**
	     * Disables text selection for this element (normalized across browsers)
	     * @return this
	     */
	    public native function unselectable() : Element;
	    /**
	     * Returns an object with properties top, left, right and bottom representing the margins of this element unless sides is passed,
	     * then it returns the calculated width of the sides (see getPadding)
	     * @param sides Any combination of l, r, t, b to get the sum of those sides
	     * @return 
	     */
	    public native function getMargins(sides : String = undefined) : *;

  /**
   * Returns the width in pixels of the passed text, or the width of the text in this Element.
   * @param text The text to measure. Defaults to the innerHTML of the element.
   * @param min The minumum value to return.
   * @param max The maximum value to return.
   * @return The text width in pixels.
   * @member ext.Element getTextWidth
   */
  public static native function getTextWidth(text : String, min : Number = undefined, max : Number = undefined) : Number;

  /**
   * The DOM element
   */
  public native function get dom() : HTMLElement;

  /**
   * The DOM element ID
   */
  public native function get id() : String;
}}
