package ext {

import ext.form.Number;

import js.HTMLElement;

/**
 * Encapsulates a DOM element, adding simple DOM manipulation facilities, normalizing for browser differences.
 <p>All instances of this class inherit the methods of <a href="Ext.Fx.html">Ext.Fx</a> making visual effects easily available to all DOM elements.</p><p>Note that the events documented in this class are not Ext events, they encapsulate browser events. To access the underlying browser event, see <a href="output/Ext.EventObject.html#Ext.EventObject-browserEvent">Ext.EventObject.browserEvent</a>. Some older browsers may not support the full range of events. Which events are supported is beyond the control of ExtJs.</p>Usage:<br/><pre><code>// by id
 var el = Ext.get("my-div");

 // by DOM element reference
 var el = Ext.get(myDivElement);
 </code></pre><b>Animations</b><br/><p>When an element is manipulated, by default there is no animation.</p><pre><code>var el = Ext.get("my-div");

 // no animation
 el.setWidth(100);
 </code></pre><p>Many of the functions for manipulating an element have an optional "animate" parameter. This parameter can be specified as boolean (<tt>true</tt>) for default animation effects.</p><pre><code>// default animation
 el.setWidth(100, true);
 </code></pre><p>To configure the effects, an object literal with animation options to use as the Element animation configuration object can also be specified. Note that the supported Element animation configuration options are a subset of the <a href="Ext.Fx.html">Ext.Fx</a> animation options specific to Fx effects. The supported Element animation configuration options are:</p><pre>Option    Default   Description
 --------- --------  ---------------------------------------------
 <a href="output/Ext.Fx.html#Ext.Fx-duration">duration</a>  .35       The duration of the animation in seconds
 <a href="output/Ext.Fx.html#Ext.Fx-easing">easing</a>    easeOut   The easing method
 <a href="output/Ext.Fx.html#Ext.Fx-callback">callback</a>  none      A function to execute when the anim completes
 <a href="output/Ext.Fx.html#Ext.Fx-scope">scope</a>     this      The scope (this) of the callback function
 </pre><pre><code>// Element animation options object
 var opt = {
 <a href="output/Ext.Fx.html#Ext.Fx-duration">duration</a>: 1,
 <a href="output/Ext.Fx.html#Ext.Fx-easing">easing</a>: 'elasticIn',
 <a href="output/Ext.Fx.html#Ext.Fx-callback">callback</a>: this.foo,
 <a href="output/Ext.Fx.html#Ext.Fx-scope">scope</a>: this
 };
 // animation with some options set
 el.setWidth(100, opt);
 </code></pre><p>The Element animation object being used for the animation will be set on the options object as "anim", which allows you to stop or manipulate the animation. Here is an example:</p><pre><code>// using the "anim" property to get the Anim object
 if(opt.anim.isAnimated()){
 opt.anim.stop();
 }
 </code></pre><p>Also see the <tt><a href="output/Ext.Element.html#Ext.Element-animate">animate</a></tt> method for another animation technique.</p><p style="font-weight: bold">Composite (Collections of) Elements</p><p>For working with collections of Elements, see <a href="Ext.CompositeElement.html">Ext.CompositeElement</a></p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#cls-Ext.Element Ext JS source
 */
[Native]
public class Element {

  /**
   * Create a new Element directly.
   *
   * @param element
   * @param forceNew By default the constructor checks to see if there is already an instance of this element in the cache and if there is it returns the same instance. This will skip that check (useful for extending this class).
   */
  public function Element(element:*, forceNew:Boolean = false) {
    super();
  }

  /**
   Visibility mode constant for use with <a href="output/Ext.Element.html#Ext.Element-setVisibilityMode">setVisibilityMode</a>. Use display to hide element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-DISPLAY Ext JS source
   */
  public static const DISPLAY:ext.form.Number;

  /**
   Visibility mode constant for use with <a href="output/Ext.Element.html#Ext.Element-setVisibilityMode">setVisibilityMode</a>. Use offsets to hide element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-OFFSETS Ext JS source
   */
  public static const OFFSETS:ext.form.Number;

  /**
   Visibility mode constant for use with <a href="output/Ext.Element.html#Ext.Element-setVisibilityMode">setVisibilityMode</a>. Use visibility to hide element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-VISIBILITY Ext JS source
   */
  public static const VISIBILITY:ext.form.Number;

  /**
   The default unit to append to CSS values where a unit isn't provided (defaults to px).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-defaultUnit Ext JS source
   */
  public native function get defaultUnit():String;

  /**
   * @private
   */
  public native function set defaultUnit(value:String):void;

  /**
   The DOM element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-dom Ext JS source
   */
  public native function get dom():HTMLElement;

  /**
   * @private
   */
  public native function set dom(value:HTMLElement):void;

  /**
   The DOM element ID
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-id Ext JS source
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   * Adds one or more CSS classes to the element. Duplicate classes are automatically filtered out.
   *
   * @param className The CSS class to add, or an array of classes
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-addCls Ext JS source
   */
  public native function addCls(className:*):Element;

  /**
   * Appends an event handler to this element. The shorthand version <a href="output/Ext.Element.html#Ext.Element-on">on</a> is equivalent.
   *
   * @param eventName The name of event to handle.
   * @param fn The handler function the event invokes. This function is passed the following parameters:<ul><li><b>evt</b> : EventObject<div class="sub-desc">The <a href="Ext.EventObject.html">EventObject</a> describing the event.</div></li><li><b>el</b> : HtmlElement<div class="sub-desc">The DOM element which was the target of the event. Note that this may be filtered by using the <tt>delegate</tt> option.</div></li><li><b>o</b> : Object<div class="sub-desc">The options object from the addListener call.</div></li></ul>
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to this Element.</b>.
   * @param options An object containing handler configuration properties. This may contain any of the following properties:<ul><li><b>scope</b> Object : <div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to this Element.</b></div></li><li><b>delegate</b> String: <div class="sub-desc">A simple selector to filter the target or look for a descendant of the target. See below for additional details.</div></li><li><b>stopEvent</b> Boolean: <div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li><li><b>preventDefault</b> Boolean: <div class="sub-desc">True to prevent the default action</div></li><li><b>stopPropagation</b> Boolean: <div class="sub-desc">True to prevent event propagation</div></li><li><b>normalized</b> Boolean: <div class="sub-desc">False to pass a browser event to the handler function instead of an Ext.EventObject</div></li><li><b>target</b> Ext.Element: <div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li><li><b>delay</b> Number: <div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li><li><b>single</b> Boolean: <div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li><b>buffer</b> Number: <div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li></ul><br/><p><b>Combining Options</b><br/>In the following examples, the shorthand form <a href="output/Ext.Element.html#Ext.Element-on">on</a> is used rather than the more verbose addListener. The two are equivalent. Using the options argument, it is possible to combine different types of listeners:<br/><br/>A delayed, one-time listener that auto stops the event and adds a custom argument (forumId) to the options object. The options object is available as the third parameter in the handler function.</p><div style="margin: 5px 20px 20px;">Code:<pre><code>el.on('tap', this.onTap, this, {
   single: true,
   delay: 100,
   stopEvent : true
   });</code></pre><br/><br/> <p><b>Attaching multiple handlers in 1 call</b><br/>The method also allows for a single argument to be passed which is a config object containing properties which specify multiple handlers.</p><p>Code:</p><pre><code>el.on({
   'tap' : {
   fn: this.onTap,
   scope: this
   },
   'doubletap' : {
   fn: this.onDoubleTap,
   scope: this
   },
   'swipe' : {
   fn: this.onSwipe,
   scope: this
   }
   });</code></pre><p>Or a shorthand syntax:<br/>Code:</p><pre><code><br/>
   el.on({
   'tap' : this.onTap,
   'doubletap' : this.onDoubleTap,
   'swipe' : this.onSwipe,
   scope: this
   });
   </code></pre><br/><br/> <p style="font-weight: bold">delegate</p><p>This is a configuration option that you can pass along when registering a handler for an event to assist with event delegation. Event delegation is a technique that is used to reduce memory consumption and prevent exposure to memory-leaks. By registering an event for a container element as opposed to each element within a container. By setting this configuration option to a simple selector, the target element will be filtered to look for a descendant of the target. For example:</p><pre><code>// using this markup:
   &lt;div id='elId'&gt;
   &lt;p id='p1'&gt;paragraph one&lt;/p&gt;
   &lt;p id='p2' class='clickable'&gt;paragraph two&lt;/p&gt;
   &lt;p id='p3'&gt;paragraph three&lt;/p&gt;
   &lt;/div&gt;
   // utilize event delegation to registering just one handler on the container element:
   el = Ext.get('elId');
   el.on(
   'tap',
   function(e,t) {
   // handle click
   console.info(t.id); // 'p2'
   },
   this,
   {
   // filter the target element to be a descendant with the class 'tappable'
   delegate: '.tappable'
   }
   );
   </code></pre><br/><br/></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-addListener Ext JS source
   */
  public native function addListener(eventName:String, fn:Function, scope:Object = null, options:Object = null):Element;

  /**
   * Aligns this element with another element relative to the specified anchor points. If the other element is the document it aligns it to the viewport. The position parameter is optional, and can be specified in any one of the following formats: <ul><li><b>Blank</b>: Defaults to aligning the element's top-left corner to the target's bottom-left corner ("tl-bl").</li><li><b>One anchor (deprecated)</b>: The passed anchor position is used as the target element's anchor point. The element being aligned will position its top-left corner (tl) to that point. <i>This method has been deprecated in favor of the newer two anchor syntax below</i>.</li><li><b>Two anchors</b>: If two values from the table below are passed separated by a dash, the first value is used as the element's anchor point, and the second value is used as the target's anchor point.</li></ul>In addition to the anchor points, the position parameter also supports the "?" character. If "?" is passed at the end of the position string, the element will attempt to align as specified, but the position will be adjusted to constrain to the viewport if necessary. Note that the element being aligned might be swapped to align to a different position than that specified in order to enforce the viewport constraints. Following are all of the supported anchor positions: <pre>Value  Description
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
   </pre>Example Usage: <pre><code>// align el to other-el using the default positioning ("tl-bl", non-constrained)
   el.alignTo("other-el");

   // align the top left corner of el with the top right corner of other-el (constrained to viewport)
   el.alignTo("other-el", "tr?");

   // align the bottom right corner of el with the center left edge of other-el
   el.alignTo("other-el", "br-l?");

   // align the center of el with the bottom left corner of other-el and
   // adjust the x position by -6 pixels (and the y position by 0)
   el.alignTo("other-el", "c-bl", [-6, 0]);
   </code></pre>
   *
   * @param element The element to align to.
   * @param position (optional, defaults to "tl-bl?") The position to align to.
   * @param offsets Offset the positioning by [x, y]
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-alignTo Ext JS source
   */
  public native function alignTo(element:*, position:String, offsets:Array = null, animate:* = null):Element;

  /**
   * Anchors an element to another element and realigns it when the window is resized.
   *
   * @param element The element to align to.
   * @param position The position to align to.
   * @param offsets Offset the positioning by [x, y]
   * @param animate True for the default animation or a standard Element animation config object
   * @param monitorScroll True to monitor body scroll and reposition. If this parameter is a number, it is used as the buffer delay (defaults to 50ms).
   * @param callback The function to call after the animation finishes
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-anchorTo Ext JS source
   */
  public native function anchorTo(element:*, position:String, offsets:Array = null, animate:* = null, monitorScroll:* = null, callback:Function = null):Element;

  /**
   * Appends the passed element(s) to this element
   *
   * @param el
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-appendChild Ext JS source
   */
  public native function appendChild(el:*):Element;

  /**
   * Appends this element to the passed element
   *
   * @param el The new parent element
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-appendTo Ext JS source
   */
  public native function appendTo(el:*):Element;

  /**
   * Applies a style specification to an element.
   *
   * @param el The element to apply styles to
   * @param styles A style specification string e.g. 'width:100px', or object in the form {width:'100px'}, or a function which returns such a specification.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-applyStyles Ext JS source
   */
  public native function applyStyles(el:*, styles:*):void;

  /**
   * // &#42; Centers the Element in either the viewport, or another Element. // &#42;
   *
   * @param centerIn The element in which to center the element. //
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-center Ext JS source
   */
  public native function center(centerIn:* = null):void;

  /**
   * Selects a single &#42;direct&#42; child based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @param returnDom True to return the DOM node instead of Ext.Element (defaults to false)
   * @return The child Ext.Element (or DOM node if returnDom = true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-child Ext JS source
   */
  public native function child(selector:String, returnDom:Boolean = false):*;

  /**
   * Returns true if this element is an ancestor of the passed element
   *
   * @param el The element to check
   * @return True if this element is an ancestor of el, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-contains Ext JS source
   */
  public native function contains(el:*):Boolean;

  /**
   * Creates the passed DomHelper config and appends it to this element or optionally inserts it before the passed child element.
   *
   * @param config DomHelper element config object. If no tag is specified (e.g., {tag:'input'}) then a div will be automatically generated with the specified attributes.
   * @param insertBefore a child element of this element
   * @param returnDom true to return the dom node instead of creating an Element
   * @return The new child element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-createChild Ext JS source
   */
  public native function createChild(config:Object, insertBefore:HTMLElement = null, returnDom:Boolean = false):Element;

  /**
   * Selects a single child at any depth below this element based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @param returnDom True to return the DOM node instead of Ext.Element (defaults to false)
   * @return The child Ext.Element (or DOM node if returnDom = true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-down Ext JS source
   */
  public native function down(selector:String, returnDom:Boolean = false):*;

  /**
   * Looks at this node and then at parent nodes for a match of the passed simple selector (e.g. div.some-class or span:first-child)
   *
   * @param selector The simple selector to test
   * @param maxDepth The max depth to search as a number or element (defaults to 50 || document.body)
   * @param returnEl True to return a Ext.Element object instead of DOM node
   * @return The matching DOM node (or null if no match was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-findParent Ext JS source
   */
  public native function findParent(selector:String, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * Looks at parent nodes for a match of the passed simple selector (e.g. div.some-class or span:first-child)
   *
   * @param selector The simple selector to test
   * @param maxDepth The max depth to search as a number or element (defaults to 10 || document.body)
   * @param returnEl True to return a Ext.Element object instead of DOM node
   * @return The matching DOM node (or null if no match was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-findParentNode Ext JS source
   */
  public native function findParentNode(selector:String, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * Gets the first child, skipping text nodes
   *
   * @param selector Find the next sibling that matches the passed simple selector
   * @param returnDom True to return a raw dom node instead of an Ext.Element
   * @return The first child or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-first Ext JS source
   */
  public native function first(selector:String = null, returnDom:Boolean = false):*;

  /**
   * Gets the globally shared flyweight Element, with the passed node as the active element. Do not store a reference to this element - the dom node can be overwritten by other code. Shorthand of <a href="output/Ext.Element.html#Ext.Element-fly">Ext.Element.fly</a>
   <p>Use this to make one-time references to DOM elements which are not going to be accessed again either by application code, or by Ext's classes. If accessing an element which will be processed regularly, then <a href="output/Ext.html#Ext-get">Ext.get</a> will be more appropriate to take advantage of the caching provided by the Ext.Element class.</p>
   *
   * @param el The dom node or id
   * @param named Allows for creation of named reusable flyweights to prevent conflicts (e.g. internally Ext uses "_global")
   * @return The shared Element object (or null if no matching element was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-fly Ext JS source
   */
  public native function fly(el:*, named:String = null):Element;

  /**
   * Retrieves Ext.Element objects. <p><b>This method does not retrieve <a href="Ext.Component.html">Component</a>s.</b> This method retrieves Ext.Element objects which encapsulate DOM elements. To retrieve a Component by its ID, use <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">Ext.ComponentMgr.get</a>.</p><p>Uses simple caching to consistently return the same object. Automatically fixes if an object was recreated with the same id via AJAX or DOM.</p>
   *
   * @param el The id of the node, a DOM Node or an existing Element.
   * @return The Element object (or null if no matching element was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-get Ext JS source
   */
  public static native function get(el:*):Element;

  /**
   * Gets the x,y coordinates to align this element with another element. See <a href="output/Ext.Element.html#Ext.Element-alignTo">alignTo</a> for more info on the supported position values.
   *
   * @param element The element to align to.
   * @param position (optional, defaults to "tl-bl?") The position to align to.
   * @param offsets Offset the positioning by [x, y]
   * @return [x, y]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-getAlignToXY Ext JS source
   */
  public native function getAlignToXY(element:*, position:String, offsets:Array = null):Array;

  /**
   * Gets the x,y coordinates specified by the anchor position on the element.
   *
   * @param anchor The specified anchor position (defaults to "c"). See <a href="output/Ext.Element.html#Ext.Element-alignTo">alignTo</a> for details on supported anchor positions.
   * @param size An object containing the size to use for calculating anchor position {width: (target width), height: (target height)} (defaults to the element's current size)
   * @return [x, y] An array containing the element's x and y coordinates
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-getAnchorXY Ext JS source
   */
  public native function getAnchorXY(anchor:String = null, size:Object = null):Array;

  /**
   * Returns the value of an attribute from the element's underlying DOM node.
   *
   * @param name The attribute name
   * @param namespace The namespace in which to look for the attribute
   * @return The attribute value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-getAttribute Ext JS source
   */
  public native function getAttribute(name:String, namespace:String = null):String;

  /**
   * Gets the width of the border(s) for the specified side(s)
   *
   * @param side Can be t, l, r, b or any combination of those to add multiple values. For example, passing <tt>'lr'</tt> would get the border <b><u>l</u></b>eft width + the border <b><u>r</u></b>ight width.
   * @return The width of the sides passed added together
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getBorderWidth Ext JS source
   */
  public native function getBorderWidth(side:String):ext.form.Number;

  /**
   * Gets the bottom Y coordinate of the element (element Y position + element height)
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getBottom Ext JS source
   */
  public native function getBottom(local:Boolean):ext.form.Number;

  /**
   * Return an object defining the area of this Element which can be passed to <a href="output/Ext.Element.html#Ext.Element-setBox">setBox</a> to set another Element's size/location to match this element.
   *
   * @param contentBox If true a box for the content of the element is returned.
   * @param local If true the element's left and top are returned instead of page x/y.
   * @return box An object in the format<pre><code>{
   x: &lt;Element's X position&gt;,
   y: &lt;Element's Y position&gt;,
   width: &lt;Element's width&gt;,
   height: &lt;Element's height&gt;,
   bottom: &lt;Element's lower bound&gt;,
   right: &lt;Element's rightmost bound&gt;
   }
   </code></pre>The returned object may also be addressed as an Array where index 0 contains the X position and index 1 contains the Y position. So the result may also be used for <a href="output/Ext.Element.html#Ext.Element-setXY">setXY</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getBox Ext JS source
   */
  public native function getBox(contentBox:Boolean = false, local:Boolean = false):Object;

  /**
   * // &#42; Calculates the x, y to center this element on the screen // &#42;
   *
   * @return The x, y values [x, y] //
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-getCenterXY Ext JS source
   */
  public native function getCenterXY():Array;

  /**
   * Returns the innerHTML of an Element or an empty string if the element's dom no longer exists.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-getHTML Ext JS source
   */
  public native function getHTML():void;

  /**
   * Returns the offset height of the element
   *
   * @param contentHeight true to get the height minus borders and padding
   * @return The element's height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getHeight Ext JS source
   */
  public native function getHeight(contentHeight:Boolean = false):ext.form.Number;

  /**
   * Gets the left X coordinate
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getLeft Ext JS source
   */
  public native function getLeft(local:Boolean):ext.form.Number;

  /**
   * Gets the size of the margins(s) for the specified side(s)
   *
   * @param side Can be t, l, r, b or any combination of those to add multiple values. For example, passing <tt>'lr'</tt> would get the margin <b><u>l</u></b>eft + the margin <b><u>r</u></b>ight.
   * @return The margin of the sides passed added together
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getMargin Ext JS source
   */
  public native function getMargin(side:String):ext.form.Number;

  /**
   * Returns the offsets of this element from the passed element. Both element must be part of the DOM tree and not have display:none to have page coordinates.
   *
   * @param element The element to get the offsets from.
   * @return The XY page offsets (e.g. [100, -200])
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getOffsetsTo Ext JS source
   */
  public native function getOffsetsTo(element:*):Array;

  /**
   * Retrieves the height of the element account for the top and bottom margins.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getOuterHeight Ext JS source
   */
  public native function getOuterHeight():void;

  /**
   * Retrieves the width of the element accounting for the left and right margins.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getOuterWidth Ext JS source
   */
  public native function getOuterWidth():void;

  /**
   * Gets the size of the padding(s) for the specified side(s)
   *
   * @param side Can be t, l, r, b or any combination of those to add multiple values. For example, passing <tt>'lr'</tt> would get the padding <b><u>l</u></b>eft + the padding <b><u>r</u></b>ight.
   * @return The padding of the sides passed added together
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getPadding Ext JS source
   */
  public native function getPadding(side:String):ext.form.Number;

  /**
   * Return an object defining the area of this Element which can be passed to <a href="output/Ext.Element.html#Ext.Element-setBox">setBox</a> to set another Element's size/location to match this element.
   *
   * @param asRegion(optional) If true an Ext.util.Region will be returned
   * @return box An object in the format<pre><code>{
   x: &lt;Element's X position&gt;,
   y: &lt;Element's Y position&gt;,
   width: &lt;Element's width&gt;,
   height: &lt;Element's height&gt;,
   bottom: &lt;Element's lower bound&gt;,
   right: &lt;Element's rightmost bound&gt;
   }
   </code></pre>The returned object may also be addressed as an Array where index 0 contains the X position and index 1 contains the Y position. So the result may also be used for <a href="output/Ext.Element.html#Ext.Element-setXY">setXY</a>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getPageBox Ext JS source
   */
  public native function getPageBox(asRegion:Boolean = false):Object;

  /**
   * Gets the right X coordinate of the element (element X position + element width)
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getRight Ext JS source
   */
  public native function getRight(local:Boolean):ext.form.Number;

  /**
   * Gets the Scroller instance of the first parent that has one.
   *
   * @return The first parent scroller
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal-more.html#method-Ext.Element-getScrollParent Ext JS source
   */
  public native function getScrollParent():*;

  /**
   * Returns the size of the element.
   *
   * @param contentSize true to get the width/size minus borders and padding
   * @return An object containing the element's size {width: (element width), height: (element height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getSize Ext JS source
   */
  public native function getSize(contentSize:Boolean = false):Object;

  /**
   * Normalizes currentStyle and computedStyle.
   *
   * @param property The style property whose value is returned.
   * @return The current value of the style property for this element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getStyle Ext JS source
   */
  public native function getStyle(property:String):String;

  /**
   * Gets the top Y coordinate
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getTop Ext JS source
   */
  public native function getTop(local:Boolean):ext.form.Number;

  /**
   * Returns the value of the "value" attribute
   *
   * @param asNumber true to parse the value as a number
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-getValue Ext JS source
   */
  public native function getValue(asNumber:Boolean):*;

  /**
   * Returns the dimensions of the element available to lay content out in.
   <p>If the element (or any ancestor element) has CSS style <code>display : none</code>, the dimensions will be zero.</p>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getViewSize Ext JS source
   */
  public native function getViewSize():void;

  /**
   * Returns the offset width of the element
   *
   * @param contentWidth true to get the width minus borders and padding
   * @return The element's width
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getWidth Ext JS source
   */
  public native function getWidth(contentWidth:Boolean = false):ext.form.Number;

  /**
   * Gets the current X position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @return The X position of the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getX Ext JS source
   */
  public native function getX():ext.form.Number;

  /**
   * Gets the current position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @return The XY position of the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getXY Ext JS source
   */
  public native function getXY():Array;

  /**
   * Gets the current Y position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @return The Y position of the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getY Ext JS source
   */
  public native function getY():ext.form.Number;

  /**
   * Checks if the specified CSS class exists on this element's DOM node.
   *
   * @param className The CSS class to check for
   * @return True if the class exists, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-hasCls Ext JS source
   */
  public native function hasCls(className:String):Boolean;

  /**
   * Hide this element - Uses display mode to determine whether to use "display" or "visibility". See <a href="output/Ext.Element.html#Ext.Element-setVisible">setVisible</a>.
   *
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-hide Ext JS source
   */
  public native function hide(animate:* = null):Element;

  /**
   * Inserts this element after the passed element in the DOM
   *
   * @param el The element to insert after
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-insertAfter Ext JS source
   */
  public native function insertAfter(el:*):Element;

  /**
   * Inserts this element before the passed element in the DOM
   *
   * @param el The element before which this element will be inserted
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-insertBefore Ext JS source
   */
  public native function insertBefore(el:*):Element;

  /**
   * Inserts (or creates) an element (or DomHelper config) as the first child of this element
   *
   * @param el The id or element to insert or a DomHelper config to create and insert
   * @return The new child
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-insertFirst Ext JS source
   */
  public native function insertFirst(el:*):Element;

  /**
   * Inserts an html fragment into this element
   *
   * @param where Where to insert the html in relation to this element - beforeBegin, afterBegin, beforeEnd, afterEnd.
   * @param html The HTML fragment
   * @param returnEl True to return an Ext.Element (defaults to false)
   * @return The inserted node (or nearest related if more than 1 inserted)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-insertHtml Ext JS source
   */
  public native function insertHtml(where:String, html:String, returnEl:Boolean = false):*;

  /**
   * Inserts (or creates) the passed element (or DomHelper config) as a sibling of this element
   *
   * @param el The id, element to insert or a DomHelper config to create and insert &#42;or&#42; an array of any of those.
   * @param where 'before' or 'after' defaults to before
   * @param returnDom True to return the .;ll;l,raw DOM element instead of Ext.Element
   * @return The inserted Element. If an array is passed, the last inserted element is returned.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-insertSibling Ext JS source
   */
  public native function insertSibling(el:*, where:String = null, returnDom:Boolean = false):Element;

  /**
   * Determines if this element is a descendent of the passed in Element.
   *
   * @param element An Ext.Element, HTMLElement or string linking to an id of an Element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-isDescendent Ext JS source
   */
  public native function isDescendent(element:*):void;

  /**
   * Returns true if this element matches the passed simple selector (e.g. div.some-class or span:first-child)
   *
   * @param selector The simple selector to test
   * @return True if this element matches the selector, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-is_ Ext JS source
   */
  public native function is_(selector:String):Boolean;

  /**
   * Gets the last child, skipping text nodes
   *
   * @param selector Find the previous sibling that matches the passed simple selector
   * @param returnDom True to return a raw dom node instead of an Ext.Element
   * @return The last child or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-last Ext JS source
   */
  public native function last(selector:String = null, returnDom:Boolean = false):*;

  /**
   * Puts a mask over this element to disable user interaction. This method can only be applied to elements which accept child nodes.
   *
   * @param msg A message to display in the mask. This can be html.
   * @param msgCls A css class to apply to the msg element
   * @param transparent False to show make the mask gray with opacity. (defaults to true)
   * @return The mask element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-mask Ext JS source
   */
  public native function mask(msg:String = null, msgCls:String = null, transparent:Boolean = false):Element;

  /**
   * Gets the next sibling, skipping text nodes
   *
   * @param selector Find the next sibling that matches the passed simple selector
   * @param returnDom True to return a raw dom node instead of an Ext.Element
   * @return The next sibling or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-next Ext JS source
   */
  public native function next(selector:String = null, returnDom:Boolean = false):*;

  /**
   * Gets the parent node for this element, optionally chaining up trying to match a selector
   *
   * @param selector Find a parent node that matches the passed simple selector
   * @param returnDom True to return a raw dom node instead of an Ext.Element
   * @return The parent node or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-parent Ext JS source
   */
  public native function parent(selector:String = null, returnDom:Boolean = false):*;

  /**
   * Gets the previous sibling, skipping text nodes
   *
   * @param selector Find the previous sibling that matches the passed simple selector
   * @param returnDom True to return a raw dom node instead of an Ext.Element
   * @return The previous sibling or null
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-prev Ext JS source
   */
  public native function prev(selector:String = null, returnDom:Boolean = false):*;

  /**
   * Recursively removes all previous added listeners from this element and its children
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-purgeAllListeners Ext JS source
   */
  public native function purgeAllListeners():Element;

  /**
   * Selects child nodes based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @return An array of the matched nodes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-query Ext JS source
   */
  public native function query(selector:String):Array;

  /**
   * Adds one or more CSS classes to this element and removes the same class(es) from all siblings.
   *
   * @param className The CSS class to add, or an array of classes
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-radioCls Ext JS source
   */
  public native function radioCls(className:*):Element;

  /**
   * Removes this element's dom reference. Note that event and cache removal is handled at <a href="output/Ext.html#Ext-removeNode">Ext.removeNode</a>

   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-remove Ext JS source
   */
  public native function remove():void;

  /**
   * Removes all previous added listeners from this element
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-removeAllListeners Ext JS source
   */
  public native function removeAllListeners():Element;

  /**
   * Remove any anchor to this element. See <a href="output/Ext.Element.html#Ext.Element-anchorTo">anchorTo</a>.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-removeAnchor Ext JS source
   */
  public native function removeAnchor():Element;

  /**
   * Removes one or more CSS classes from the element.
   *
   * @param className The CSS class to remove, or an array of classes
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-removeCls Ext JS source
   */
  public native function removeCls(className:*):Element;

  /**
   * Removes an event handler from this element. The shorthand version <a href="output/Ext.Element.html#Ext.Element-un">un</a> is equivalent. <b>Note</b>: if a <i>scope</i> was explicitly specified when <a href="output/Ext.Element.html#Ext.Element-addListener">adding</a> the listener, the same scope must be specified here. Example: <pre><code>el.removeListener('tap', this.handlerFn);
   // or
   el.un('tap', this.handlerFn);
   </code></pre>
   *
   * @param eventName The name of the event from which to remove the handler.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-removeListener Ext JS source
   */
  public native function removeListener(eventName:String, fn:Function, scope:Object):Element;

  /**
   * Forces the browser to repaint this element
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-repaint Ext JS source
   */
  public native function repaint():Element;

  /**
   * Replaces the passed element with this element
   *
   * @param el The element to replace
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-replace Ext JS source
   */
  public native function replace(el:*):Element;

  /**
   * Replaces a CSS class on the element with another. If the old name does not exist, the new name will simply be added.
   *
   * @param oldClassName The CSS class to replace
   * @param newClassName The replacement CSS class
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-replaceCls Ext JS source
   */
  public native function replaceCls(oldClassName:String, newClassName:String):Element;

  /**
   * Replaces this element with the passed element
   *
   * @param el The new element or a DomHelper config of an element to create
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-replaceWith Ext JS source
   */
  public native function replaceWith(el:*):Element;

  /**
   * Creates a <a href="Ext.CompositeElement.html">Ext.CompositeElement</a> for child nodes based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @return The composite element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-select Ext JS source
   */
  public native function select(selector:String):*;

  /**
   * Sets the passed attributes as attributes of this element (a style attribute can be a string, object or function)
   *
   * @param o The object with the attributes
   * @param useSet false to override the default setAttribute to use expandos.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-set Ext JS source
   */
  public native function set(o:Object, useSet:Boolean = false):Element;

  /**
   * Sets the element's CSS bottom style.
   *
   * @param bottom The bottom CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setBottom Ext JS source
   */
  public native function setBottom(bottom:String):Element;

  /**
   * Sets the element's box. Use getBox() on another element to get a box obj. If animate is true then width, height, x and y will be animated concurrently.
   *
   * @param box The box to fill {x, y, width, height}
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setBox Ext JS source
   */
  public native function setBox(box:Object):Element;

  /**
   * Set the innerHTML of this element
   *
   * @param html The new HTML
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-setHTML Ext JS source
   */
  public native function setHTML(html:String):Element;

  /**
   * Set the height of this Element. <pre><code>       // change the height to 200px and animate with default configuration
   Ext.fly('elementId').setHeight(200, true);

   // change the height to 150px and animate with a custom configuration
   Ext.fly('elId').setHeight(150, {
   duration : .5, // animation will have a duration of .5 seconds
   // will change the content to "finished"
   callback: function(){ this.<a href="output/Ext.Element.html#Ext.Element-update">update</a>("finished"); }
   });
   </code></pre>
   *
   * @param height The new height. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels.)</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setHeight Ext JS source
   */
  public native function setHeight(height:*):Element;

  /**
   * Sets the element's left position directly using CSS style (instead of <a href="output/Ext.Element.html#Ext.Element-setX">setX</a>).
   *
   * @param left The left CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setLeft Ext JS source
   */
  public native function setLeft(left:String):Element;

  /**
   * Sets the element's CSS right style.
   *
   * @param right The right CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setRight Ext JS source
   */
  public native function setRight(right:String):Element;

  /**
   * Set the size of this Element. If animation is true, both width and height will be animated concurrently.
   *
   * @param width The new width. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style. Animation may <b>not</b> be used.</li><li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li></ul></div>
   * @param height The new height. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li></ul></div>
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setSize Ext JS source
   */
  public native function setSize(width:*, height:*, animate:* = null):Element;

  /**
   * Wrapper for setting style properties, also takes single object parameter of multiple styles.
   *
   * @param property The style property to be set, or an object of multiple styles.
   * @param value The value to apply to the given property, or null if an object was passed.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setStyle Ext JS source
   */
  public native function setStyle(property:*, value:String = null):Element;

  /**
   * Sets the element's top position directly using CSS style (instead of <a href="output/Ext.Element.html#Ext.Element-setY">setY</a>).
   *
   * @param top The top CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setTop Ext JS source
   */
  public native function setTop(top:String):Element;

  /**
   * Sets the element's top and left positions directly using CSS style (instead of <a href="output/Ext.Element.html#Ext.Element-setXY">setXY</a>)
   *
   * @param top The top CSS property value
   * @param left The left CSS property value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setTopLeft Ext JS source
   */
  public native function setTopLeft(top:String, left:String):void;

  /**
   * Sets the visibility of the element (see details). If the visibilityMode is set to Element.DISPLAY, it will use the display property to hide the element, otherwise it uses visibility. The default is to hide and show using the visibility property.
   *
   * @param visible Whether the element is visible
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-setVisible Ext JS source
   */
  public native function setVisible(visible:Boolean, animate:* = null):Element;

  /**
   * Set the width of this Element.
   *
   * @param width The new width. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style. Animation may <b>not</b> be used.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setWidth Ext JS source
   */
  public native function setWidth(width:*):Element;

  /**
   * Sets the X position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param The X position of the element
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setX Ext JS source
   */
  public native function setX(The:ext.form.Number):Element;

  /**
   * Sets the position of the element in page coordinates, regardless of how the element is positioned. The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param pos Contains X &amp; Y [x, y] values for new position (coordinates are page-based)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setXY Ext JS source
   */
  public native function setXY(pos:Array):Element;

  /**
   * Sets the Y position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param The Y position of the element
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setY Ext JS source
   */
  public native function setY(The:ext.form.Number, animate:* = null):Element;

  /**
   * Show this element - Uses display mode to determine whether to use "display" or "visibility". See <a href="output/Ext.Element.html#Ext.Element-setVisible">setVisible</a>.
   *
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-show Ext JS source
   */
  public native function show(animate:* = null):Element;

  /**
   * Toggles the specified CSS class on this element (removes it if it already exists, otherwise adds it).
   *
   * @param className The CSS class to toggle
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-toggleCls Ext JS source
   */
  public native function toggleCls(className:String):Element;

  /**
   * Translates the passed page coordinates into left/top css values for this element
   *
   * @param x The page x or an array containing [x, y]
   * @param y The page y, required if x is not an array
   * @return An object with left and top properties. e.g. {left: (value), top: (value)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-translatePoints Ext JS source
   */
  public native function translatePoints(x:*, y:ext.form.Number = null):Object;

  /**
   * Removes a previously applied mask.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-unmask Ext JS source
   */
  public native function unmask():void;

  /**
   * Walks up the dom looking for a parent node that matches the passed simple selector (e.g. div.some-class or span:first-child). This is a shortcut for findParentNode() that always returns an Ext.Element.
   *
   * @param selector The simple selector to test
   * @param maxDepth The max depth to search as a number or element (defaults to 10 || document.body)
   * @return The matching DOM node (or null if no match was found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-up Ext JS source
   */
  public native function up(selector:String, maxDepth:* = null):Element;

  /**
   * Creates and wraps this element with another element
   *
   * @param config DomHelper element config object for the wrapper element or null for an empty div
   * @param returnDom True to return the raw DOM element instead of Ext.Element
   * @return The newly created wrapper element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-wrap Ext JS source
   */
  public native function wrap(config:Object = null, returnDom:Boolean = false):*;

}
}
    