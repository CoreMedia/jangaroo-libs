package ext {
import ext.dd.DD;
import ext.dd.DDProxy;
import ext.dd.DDTarget;
import ext.lib.Region;

import js.HTMLElement;

/**
 * Where supported. Fires when an element is activated, for instance, through a mouse click or a keypress.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMActivate")]

/**
 * Where supported. Fires when an attribute has been modified.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMAttrModified")]

/**
 * Where supported. Fires when the character data has been modified.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMCharacterDataModified")]

/**
 * Where supported. Similar to HTML focus event, but can be applied to any focusable element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMFocusIn")]

/**
 * Where supported. Similar to HTML blur event, but can be applied to any focusable element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMFocusOut")]

/**
 * Where supported. Fires when a node has been added as a child of another node.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMNodeInserted")]

/**
 * Where supported. Fires when a node is being inserted into a document.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMNodeInsertedIntoDocument")]

/**
 * Where supported. Fires when a descendant node of the element is removed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMNodeRemoved")]

/**
 * Where supported. Fires when a node is being removed from a document.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMNodeRemovedFromDocument")]

/**
 * Where supported. Fires when the subtree is modified.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="DOMSubtreeModified")]

/**
 * Fires when an object/image is stopped from loading before completely loaded.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="abort")]

/**
 * Fires when an element loses focus either via the pointing device or by tabbing navigation.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="blur")]

/**
 * Fires when a control loses the input focus and its value has been modified since gaining focus.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires when a mouse click is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * Fires when a right click is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires when a mouse double click is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="dblclick")]

/**
 * Fires when an object/image/frame cannot be loaded properly.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="error")]

/**
 * Fires when an element receives focus either via the pointing device or by tab navigation.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="focus")]

/**
 * Fires when a keydown is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="keydown")]

/**
 * Fires when a keypress is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="keypress")]

/**
 * Fires when a keyup is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="keyup")]

/**
 * Fires when the user agent finishes loading all content within the element. Only supported by window, frames, objects and images.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * Fires when a mousedown is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mousedown")]

/**
 * Fires when the mouse enters the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mouseenter")]

/**
 * Fires when the mouse leaves the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mouseleave")]

/**
 * Fires when a mousemove is detected with the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mousemove")]

/**
 * Fires when a mouseout is detected with the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mouseout")]

/**
 * Fires when a mouseover is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mouseover")]

/**
 * Fires when a mouseup is detected within the element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="mouseup")]

/**
 * Fires when a form is reset.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="reset")]

/**
 * Fires when a document view is resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="resize")]

/**
 * Fires when a document view is scrolled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="scroll")]

/**
 * Fires when a user selects some text in a text field, including input and textarea.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="select")]

/**
 * Fires when a form is submitted.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="submit")]

/**
 * Fires when the user agent removes all content from a window or frame. For elements, it fires when the target element or any of its content has been removed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The <a href="Ext.EventObject.html">Ext.EventObject</a> encapsulating the DOM event.
 *       </li>

 *       <li>
 *           <code>t:js.HTMLElement</code>
 The target of the event.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The options configuration passed to the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.
 *       </li>

 * </ul>
 */
[Event(name="unload")]


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

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#cls-Ext.Element Ext JS source
 */
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#prop-Ext.Element-DISPLAY Ext JS source
   */
  public static const DISPLAY:Number = 2;

  /**
   Visibility mode constant for use with <a href="output/Ext.Element.html#Ext.Element-setVisibilityMode">setVisibilityMode</a>. Use offsets (x and y positioning offscreen) to hide element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#prop-Ext.Element-OFFSETS Ext JS source
   */
  public static const OFFSETS:Number = 3;

  /**
   Visibility mode constant for use with <a href="output/Ext.Element.html#Ext.Element-setVisibilityMode">setVisibilityMode</a>. Use visibility to hide element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#prop-Ext.Element-VISIBILITY Ext JS source
   */
  public static const VISIBILITY:Number = 1;

  /**
   true to automatically adjust width and height settings for box-model issues (default to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#prop-Ext.Element-autoBoxAdjust Ext JS source
   */
  public native function get autoBoxAdjust():Object;

  /**
   * @private
   */
  public native function set autoBoxAdjust(value:Object):void;

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
   The element's default display mode (defaults to "")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#prop-Ext.Element-originalDisplay Ext JS source
   */
  public native function get originalDisplay():String;

  /**
   * @private
   */
  public native function set originalDisplay(value:String):void;

  /**
   Defaults to 'x-hide-nosize'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#prop-Ext.Element-visibilityCls Ext JS source
   */
  public static native function get visibilityCls():String;

  /**
   * @private
   */
  public static native function set visibilityCls(value:String):void;

  /**
   * Adds one or more CSS classes to the element. Duplicate classes are automatically filtered out.
   *
   * @param className The CSS class to add, or an array of classes
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-addClass Ext JS source
   */
  public native function addClass(className:*):Element;

  /**
   * Sets up event handlers to add and remove a css class when the mouse is down and then up on this element (a click effect)
   *
   * @param className
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-addClassOnClick Ext JS source
   */
  public native function addClassOnClick(className:String):Element;

  /**
   * Sets up event handlers to add and remove a css class when this element has the focus
   *
   * @param className
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-addClassOnFocus Ext JS source
   */
  public native function addClassOnFocus(className:String):Element;

  /**
   * Sets up event handlers to add and remove a css class when the mouse is over this element
   *
   * @param className
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-addClassOnOver Ext JS source
   */
  public native function addClassOnOver(className:String):Element;

  /**
   * Convenience method for constructing a KeyMap
   *
   * @param key Either a string with the keys to listen for, the numeric key code, array of key codes or an object with the following options: <code>{key: (number or array), shift: (true/false), ctrl: (true/false), alt: (true/false)}</code>
   * @param fn The function to call
   * @param scope The scope (<code>this</code> reference) in which the specified function is executed. Defaults to this Element.
   * @return The KeyMap created
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.keys.html#method-Ext.Element-addKeyListener Ext JS source
   */
  public native function addKeyListener(key:*, fn:Function, scope:Object = null):KeyMap;

  /**
   * Creates a KeyMap for this element
   *
   * @param config The KeyMap config. See <a href="Ext.KeyMap.html">Ext.KeyMap</a> for more details
   * @return The KeyMap created
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.keys.html#method-Ext.Element-addKeyMap Ext JS source
   */
  public native function addKeyMap(config:Object):KeyMap;

  /**
   * Appends an event handler to this element. The shorthand version <a href="output/Ext.Element.html#Ext.Element-on">on</a> is equivalent.
   *
   * @param eventName The name of event to handle.
   * @param fn The handler function the event invokes. This function is passed the following parameters:<ul><li><b>evt</b> : EventObject<div class="sub-desc">The <a href="Ext.EventObject.html">EventObject</a> describing the event.</div></li><li><b>el</b> : HtmlElement<div class="sub-desc">The DOM element which was the target of the event. Note that this may be filtered by using the <tt>delegate</tt> option.</div></li><li><b>o</b> : Object<div class="sub-desc">The options object from the addListener call.</div></li></ul>
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to this Element.</b>.
   * @param options An object containing handler configuration properties. This may contain any of the following properties:<ul><li><b>scope</b> Object : <div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to this Element.</b></div></li><li><b>delegate</b> String: <div class="sub-desc">A simple selector to filter the target or look for a descendant of the target. See below for additional details.</div></li><li><b>stopEvent</b> Boolean: <div class="sub-desc">True to stop the event. That is stop propagation, and prevent the default action.</div></li><li><b>preventDefault</b> Boolean: <div class="sub-desc">True to prevent the default action</div></li><li><b>stopPropagation</b> Boolean: <div class="sub-desc">True to prevent event propagation</div></li><li><b>normalized</b> Boolean: <div class="sub-desc">False to pass a browser event to the handler function instead of an Ext.EventObject</div></li><li><b>target</b> Ext.Element: <div class="sub-desc">Only call the handler if the event was fired on the target Element, <i>not</i> if the event was bubbled up from a child node.</div></li><li><b>delay</b> Number: <div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li><li><b>single</b> Boolean: <div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li><b>buffer</b> Number: <div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li></ul><br/><p><b>Combining Options</b><br/>In the following examples, the shorthand form <a href="output/Ext.Element.html#Ext.Element-on">on</a> is used rather than the more verbose addListener. The two are equivalent. Using the options argument, it is possible to combine different types of listeners:<br/><br/>A delayed, one-time listener that auto stops the event and adds a custom argument (forumId) to the options object. The options object is available as the third parameter in the handler function.</p><div style="margin: 5px 20px 20px;">Code:<pre><code>el.on('click', this.onClick, this, {
   single: true,
   delay: 100,
   stopEvent : true,
   forumId: 4
   });</code></pre><br/><br/> <p><b>Attaching multiple handlers in 1 call</b><br/>The method also allows for a single argument to be passed which is a config object containing properties which specify multiple handlers.</p><p>Code:</p><pre><code>el.on({
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
   });</code></pre><p>Or a shorthand syntax:<br/>Code:</p><pre><code><br/>
   el.on({
   'click' : this.onClick,
   'mouseover' : this.onMouseOver,
   'mouseout' : this.onMouseOut,
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
   </code></pre><br/><br/></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-addListener Ext JS source
   */
  public native function addListener(eventName:String, fn:Function, scope:Object = null, options:Object = null):Element;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-addUnits Ext JS source
   */
  public native function addUnits():void;

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
   * Perform custom animation on this element. <div><ul class="mdetail-params"><li><u>Animation Properties</u></li><li style="list-style: none"><p>The Animation Control Object enables gradual transitions for any member of an element's style object that takes a numeric value including but not limited to these properties:</p><div><ul class="mdetail-params"><li><tt>bottom, top, left, right</tt></li><li><tt>height, width</tt></li><li><tt>margin, padding</tt></li><li><tt>borderWidth</tt></li><li><tt>opacity</tt></li><li><tt>fontSize</tt></li><li><tt>lineHeight</tt></li></ul></div></li><li><u>Animation Property Attributes</u></li><li style="list-style: none"><p>Each Animation Property is a config object with optional properties:</p><div><ul class="mdetail-params"><li><tt>by</tt>&#42; : relative change - start at current value, change by this value</li><li><tt>from</tt> : ignore current value, start from this value</li><li><tt>to</tt>&#42; : start at current value, go to this value</li><li><tt>unit</tt> : any allowable unit specification</li><li style="list-style: none"><p>&#42; do not specify both <tt>to</tt> and <tt>by</tt> for an animation property</p></li></ul></div></li><li><u>Animation Types</u></li><li style="list-style: none"><p>The supported animation types:</p><div><ul class="mdetail-params"><li><tt>'run'</tt> : Default <pre><code>var el = Ext.get('complexEl');
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
   </code></pre></li><li><tt>'color'</tt> <p>Animates transition of background, text, or border colors.</p><pre><code>el.animate(
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
   </code></pre></li><li><tt>'motion'</tt> <p>Animates the motion of an element to/from specific points using optional bezier way points during transit.</p><pre><code>el.animate(
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
   </code></pre></li><li><tt>'scroll'</tt> <p>Animate horizontal or vertical scrolling of an overflowing page element.</p><pre><code>el.animate(
   // animation control object
   {
   scroll: {to: [400, 300]}
   },
   0.35,      // animation duration
   null,      // callback
   'easeOut', // easing method
   'scroll'   // animation type ('run','color','motion','scroll')
   );
   </code></pre></li></ul></div></li></ul></div>
   *
   * @param args The animation control args
   * @param duration How long the animation lasts in seconds (defaults to <tt>.35</tt>)
   * @param onComplete Function to call when animation completes
   * @param easing <a href="output/Ext.Fx.html#Ext.Fx-easing">Ext.Fx.easing</a> method to use (defaults to <tt>'easeOut'</tt>)
   * @param animType <tt>'run'</tt> is the default. Can also be <tt>'color'</tt>, <tt>'motion'</tt>, or <tt>'scroll'</tt>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-animate Ext JS source
   */
  public native function animate(args:Object, duration:Number = undefined, onComplete:Function = null, easing:String = null, animType:String = null):Element;

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
   * More flexible version of <a href="output/Ext.Element.html#Ext.Element-setStyle">setStyle</a> for setting style properties.
   *
   * @param styles A style specification string, e.g. "width:100px", or object in the form {width:"100px"}, or a function which returns such a specification.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-applyStyles Ext JS source
   */
  public native function applyStyles(styles:*):Element;

  /**
   * Tries to blur the element. Any exceptions are caught and ignored.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-blur Ext JS source
   */
  public native function blur():Element;

  /**
   * Wraps the specified element with a special 9 element markup/CSS block that renders by default as a gray container with a gradient background, rounded corners and a 4-way shadow.
   <p>This special markup is used throughout Ext when box wrapping elements (<a href="Ext.Button.html">Ext.Button</a>, <a href="Ext.Panel.html">Ext.Panel</a> when <tt><a href="output/Ext.Panel.html#Ext.Panel-frame">frame=true</a></tt>, <a href="Ext.Window.html">Ext.Window</a>). The markup is of this form:</p><pre><code>   Ext.Element.boxMarkup =
   '&lt;div class="{0}-tl"&gt;&lt;div class="{0}-tr"&gt;&lt;div class="{0}-tc"&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;
   &lt;div class="{0}-ml"&gt;&lt;div class="{0}-mr"&gt;&lt;div class="{0}-mc"&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;
   &lt;div class="{0}-bl"&gt;&lt;div class="{0}-br"&gt;&lt;div class="{0}-bc"&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;';
   </code></pre><p>Example usage:</p><pre><code>   // Basic box wrap
   Ext.get("foo").boxWrap();

   // You can also add a custom class and use CSS inheritance rules to customize the box look.
   // 'x-box-blue' is a built-in alternative -- look at the related CSS definitions as an example
   // for how to create a custom box wrap style.
   Ext.get("foo").boxWrap().addClass("x-box-blue");
   </code></pre>
   *
   * @param class_ A base CSS class to apply to the containing wrapper element (defaults to <tt>'x-box'</tt>). Note that there are a number of CSS rules that are dependent on this name to make the overall effect work, so if you supply an alternate base class, make sure you also supply all of the necessary rules.
   * @return The outermost wrapping element of the created box structure.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-boxWrap Ext JS source
   */
  public native function boxWrap(class_:String = null):Element;

  /**
   * Centers the Element in either the viewport, or another Element.
   *
   * @param centerIn The element in which to center the element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-center Ext JS source
   */
  public native function center(centerIn:* = null):void;

  /**
   * Selects a single child at any depth below this element based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @param returnDom True to return the DOM node instead of Ext.Element (defaults to false)
   * @return The child Ext.Element (or DOM node if returnDom = true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-child Ext JS source
   */
  public native function child(selector:String, returnDom:Boolean = false):*;

  /**
   * Removes worthless text nodes
   *
   * @param forceReclean By default the element keeps track if it has been cleaned already so you can call this over and over. However, if you update the element and need to force a reclean, you can pass true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#method-Ext.Element-clean Ext JS source
   */
  public native function clean(forceReclean:Boolean = false):void;

  /**
   * Clears any opacity settings from this element. Required in some cases for IE.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-clearOpacity Ext JS source
   */
  public native function clearOpacity():Element;

  /**
   * Clear positioning back to the default when the document was loaded
   *
   * @param value The value to use for the left,right,top,bottom, defaults to '' (empty string). You could use 'auto'.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-clearPositioning Ext JS source
   */
  public native function clearPositioning(value:String = null):Element;

  /**
   * Store the current overflow setting and clip overflow on the element - use <tt><a href="output/Ext.Element.html#Ext.Element-unclip">unclip</a></tt> to remove
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-clip Ext JS source
   */
  public native function clip():Element;

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
   * Creates a proxy element of this element
   *
   * @param config The class name of the proxy element or a DomHelper config object
   * @param renderTo The element or element id to render the proxy to (defaults to document.body)
   * @param matchBox True to align and size the proxy to this element now (defaults to false)
   * @return The new proxy element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#method-Ext.Element-createProxy Ext JS source
   */
  public native function createProxy(config:*, renderTo:* = null, matchBox:Boolean = false):Element;

  /**
   * Creates an iframe shim for this element to keep selects and other windowed objects from showing through.
   *
   * @return The new shim element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-createShim Ext JS source
   */
  public native function createShim():Element;

  /**
   * Selects a single &#42;direct&#42; child based on the passed CSS selector (the selector should not contain an id).
   *
   * @param selector The CSS selector
   * @param returnDom True to return the DOM node instead of Ext.Element (defaults to false)
   * @return The child Ext.Element (or DOM node if returnDom = true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.traversal.html#method-Ext.Element-down Ext JS source
   */
  public native function down(selector:String, returnDom:Boolean = false):*;

  /**
   * Convenience method for setVisibilityMode(Element.DISPLAY)
   *
   * @param display What to set display to when visible
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-enableDisplayMode Ext JS source
   */
  public native function enableDisplayMode(display:String = null):Element;

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
  public static native function fly(el:*, named:String = null):Element;

  /**
   * Tries to focus the element. Any exceptions are caught and ignored.
   *
   * @param defer Milliseconds to defer the focus
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-focus Ext JS source
   */
  public native function focus(defer:Number = undefined):Element;

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
   * @param local True to get the local (element top/left-relative) anchor position instead of page coordinates
   * @param size An object containing the size to use for calculating anchor position {width: (target width), height: (target height)} (defaults to the element's current size)
   * @return [x, y] An array containing the element's x and y coordinates
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-getAnchorXY Ext JS source
   */
  public native function getAnchorXY(anchor:String = null, local:Boolean = false, size:Object = null):Array;

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
   * Returns the value of a namespaced attribute from the element's underlying DOM node.
   *
   * @param namespace The namespace in which to look for the attribute
   * @param name The attribute name
   * @return The attribute value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-getAttributeNS Ext JS source
   */
  public native function getAttributeNS(namespace:String, name:String):String;

  /**
   * Gets the width of the border(s) for the specified side(s).
   *
   * @param side Can be t, l, r, b or any combination of those to add multiple values. For example, passing <tt>'lr'</tt> would get the border <b><u>l</u></b>eft width + the border <b><u>r</u></b>ight width.
   * @return The width of the sides passed added together
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getBorderWidth Ext JS source
   */
  public native function getBorderWidth(side:String):Number;

  /**
   * Gets the bottom Y coordinate of the element (element Y position + element height)
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getBottom Ext JS source
   */
  public native function getBottom(local:Boolean = false):Number;

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-getBox Ext JS source
   */
  public native function getBox(contentBox:Boolean = false, local:Boolean = false):Object;

  /**
   * Calculates the x, y to center this element on the screen
   *
   * @return The x, y values [x, y]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.alignment.html#method-Ext.Element-getCenterXY Ext JS source
   */
  public native function getCenterXY():Array;

  /**
   * Return the CSS color for the specified CSS attribute. rgb, 3 digit (like #fff) and valid values are convert to standard 6 digit hex color.
   *
   * @param attr The css attribute
   * @param defaultValue The default value to use when a valid color isn't found
   * @param prefix defaults to #. Use an empty string when working with color anims.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getColor Ext JS source
   */
  public native function getColor(attr:String, defaultValue:String, prefix:String = null):void;

  /**
   * Returns either the offsetHeight or the height of this element based on CSS height adjusted by padding or borders when needed to simulate offsetHeight when offsets aren't available. This may not work on display:none elements if a height has not been set using CSS.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getComputedHeight Ext JS source
   */
  public native function getComputedHeight():Number;

  /**
   * Returns either the offsetWidth or the width of this element based on CSS width adjusted by padding or borders when needed to simulate offsetWidth when offsets aren't available. This may not work on display:none elements if a width has not been set using CSS.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getComputedWidth Ext JS source
   */
  public native function getComputedWidth():Number;

  /**
   * Returns the sum width of the padding and borders for the passed "sides". See getBorderWidth() for more information about the sides.
   *
   * @param sides
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getFrameWidth Ext JS source
   */
  public native function getFrameWidth(sides:String):Number;

  /**
   * Returns the offset height of the element
   *
   * @param contentHeight true to get the height minus borders and padding
   * @return The element's height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getHeight Ext JS source
   */
  public native function getHeight(contentHeight:Boolean = false):Number;

  /**
   * Gets the left X coordinate
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getLeft Ext JS source
   */
  public native function getLeft(local:Boolean = false):Number;

  /**
   * Returns an object with properties top, left, right and bottom representing the margins of this element unless sides is passed, then it returns the calculated width of the sides (see getPadding)
   *
   * @param sides Any combination of l, r, t, b to get the sum of those sides
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getMargins Ext JS source
   */
  public native function getMargins(sides:String = null):*;

  /**
   * Returns the offsets of this element from the passed element. Both element must be part of the DOM tree and not have display:none to have page coordinates.
   *
   * @param element The element to get the offsets from.
   * @return The XY page offsets (e.g. [100, -200])
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getOffsetsTo Ext JS source
   */
  public native function getOffsetsTo(element:*):Array;

  /**
   * Gets the width of the padding(s) for the specified side(s)
   *
   * @param side Can be t, l, r, b or any combination of those to add multiple values. For example, passing <tt>'lr'</tt> would get the padding <b><u>l</u></b>eft + the padding <b><u>r</u></b>ight.
   * @return The padding of the sides passed added together
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getPadding Ext JS source
   */
  public native function getPadding(side:String):Number;

  /**
   * Gets an object with all CSS positioning properties. Useful along with setPostioning to get snapshot before performing an update and then restoring the element.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getPositioning Ext JS source
   */
  public native function getPositioning():Object;

  /**
   * Returns the region of the given element. The element must be part of the DOM tree to have a region (display:none or elements not appended return false).
   *
   * @return A Ext.lib.Region containing "top, left, bottom, right" member data.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-getRegion Ext JS source
   */
  public native function getRegion():Region;

  /**
   * Gets the right X coordinate of the element (element X position + element width)
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getRight Ext JS source
   */
  public native function getRight(local:Boolean = false):Number;

  /**
   * Returns the current scroll position of the element.
   *
   * @return An object containing the scroll position in the format {left: (scrollLeft), top: (scrollTop)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.scroll.html#method-Ext.Element-getScroll Ext JS source
   */
  public native function getScroll():Object;

  /**
   * Returns the size of the element.
   *
   * @param contentSize true to get the width/size minus borders and padding
   * @return An object containing the element's size {width: (element width), height: (element height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getSize Ext JS source
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
   * Returns the dimensions of the element available to lay content out in.
   <p>getStyleSize utilizes prefers style sizing if present, otherwise it chooses the larger of offsetHeight/clientHeight and offsetWidth/clientWidth. To obtain the size excluding scrollbars, use getViewSize Sizing of the document body is handled at the adapter level which handles special cases for IE and strict modes, etc.</p>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getStyleSize Ext JS source
   */
  public native function getStyleSize():void;

  /**
   * Returns an object with properties matching the styles requested. For example, el.getStyles('color', 'font-size', 'width') might return {'color': '#FFFFFF', 'font-size': '13px', 'width': '100px'}.
   *
   * @param style1 A style name
   * @param style2 A style name
   * @param etc
   * @return The style object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getStyles Ext JS source
   */
  public native function getStyles(style1:String, style2:String, etc:String):Object;

  /**
   * Returns the width in pixels of the passed text, or the width of the text in this Element.
   *
   * @param text The text to measure. Defaults to the innerHTML of the element.
   * @param min The minimum value to return.
   * @param max The maximum value to return.
   * @return The text width in pixels.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.Element-getTextWidth Ext JS source
   */
  public native function getTextWidth(text:String, min:Number = undefined, max:Number = undefined):Number;

  /**
   * Gets the top Y coordinate
   *
   * @param local True to get the local css position instead of page coordinate
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getTop Ext JS source
   */
  public native function getTop(local:Boolean = false):Number;

  /**
   * Gets this element's <a href="Ext.Updater.html">Updater</a>
   *
   * @return The Updater
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#method-Ext.Element-getUpdater Ext JS source
   */
  public native function getUpdater():Updater;

  /**
   * Returns the value of the "value" attribute
   *
   * @param asNumber true to parse the value as a number
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-getValue Ext JS source
   */
  public native function getValue(asNumber:Boolean = false):*;

  /**
   * Returns the dimensions of the element available to lay content out in.
   <p>If the element (or any ancestor element) has CSS style <code>display : none</code>, the dimensions will be zero.</p>example:<pre><code>       var vpSize = Ext.getBody().getViewSize();

   // all Windows created afterwards will have a default value of 90% height and 95% width
   Ext.Window.override({
   width: vpSize.width &#42; 0.9,
   height: vpSize.height &#42; 0.95
   });
   // To handle window resizing you would have to hook onto onWindowResize.
   </code></pre>getViewSize utilizes clientHeight/clientWidth which excludes sizing of scrollbars. To obtain the size including scrollbars, use getStyleSize Sizing of the document body is handled at the adapter level which handles special cases for IE and strict modes, etc.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-getViewSize Ext JS source
   */
  public native function getViewSize():void;

  /**
   * Returns the offset width of the element
   *
   * @param contentWidth true to get the width minus borders and padding
   * @return The element's width
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-getWidth Ext JS source
   */
  public native function getWidth(contentWidth:Boolean = false):Number;

  /**
   * Gets the current X position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @return The X position of the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-getX Ext JS source
   */
  public native function getX():Number;

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
  public native function getY():Number;

  /**
   * Checks if the specified CSS class exists on this element's DOM node.
   *
   * @param className The CSS class to check for
   * @return True if the class exists, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-hasClass Ext JS source
   */
  public native function hasClass(className:String):Boolean;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-hasMetrics Ext JS source
   */
  public native function hasMetrics():void;

  /**
   * Hide this element - Uses display mode to determine whether to use "display" or "visibility". See <a href="output/Ext.Element.html#Ext.Element-setVisible">setVisible</a>.
   *
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-hide Ext JS source
   */
  public native function hide(animate:* = null):Element;

  /**
   * Sets up event handlers to call the passed functions when the mouse is moved into and out of the Element.
   *
   * @param overFn The function to call when the mouse enters the Element.
   * @param outFn The function to call when the mouse leaves the Element.
   * @param scope The scope (<code>this</code> reference) in which the functions are executed. Defaults to the Element's DOM element.
   * @param options Options for the listener. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">the <tt>options</tt> parameter</a>.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-hover Ext JS source
   */
  public native function hover(overFn:Function, outFn:Function, scope:Object = null, options:Object = null):Element;

  /**
   * Initializes a <a href="Ext.dd.DD.html">Ext.dd.DD</a> drag drop object for this element.
   *
   * @param group The group the DD object is member of
   * @param config The DD config object
   * @param overrides An object containing methods to override/implement on the DD object
   * @return The DD object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.dd.html#method-Ext.Element-initDD Ext JS source
   */
  public native function initDD(group:String, config:Object, overrides:Object):DD;

  /**
   * Initializes a <a href="Ext.dd.DDProxy.html">Ext.dd.DDProxy</a> object for this element.
   *
   * @param group The group the DDProxy object is member of
   * @param config The DDProxy config object
   * @param overrides An object containing methods to override/implement on the DDProxy object
   * @return The DDProxy object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.dd.html#method-Ext.Element-initDDProxy Ext JS source
   */
  public native function initDDProxy(group:String, config:Object, overrides:Object):DDProxy;

  /**
   * Initializes a <a href="Ext.dd.DDTarget.html">Ext.dd.DDTarget</a> object for this element.
   *
   * @param group The group the DDTarget object is member of
   * @param config The DDTarget config object
   * @param overrides An object containing methods to override/implement on the DDTarget object
   * @return The DDTarget object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.dd.html#method-Ext.Element-initDDTarget Ext JS source
   */
  public native function initDDTarget(group:String, config:Object, overrides:Object):DDTarget;

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
   * @param returnDom True to return the raw DOM element instead of Ext.Element
   * @return The inserted Element. If an array is passed, the last inserted element is returned.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion-more.html#method-Ext.Element-insertSibling Ext JS source
   */
  public native function insertSibling(el:*, where:String = null, returnDom:Boolean = false):Element;

  /**
   * Tests various css rules/browsers to determine if this element uses a border box
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-isBorderBox Ext JS source
   */
  public native function isBorderBox():Boolean;

  /**
   * Returns true if display is not "none"
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-isDisplayed Ext JS source
   */
  public native function isDisplayed():Boolean;

  /**
   * Returns true if this element is masked
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-isMasked Ext JS source
   */
  public native function isMasked():Boolean;

  /**
   * Returns true if this element is scrollable.
   *
   * @return
          * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.scroll.html#method-Ext.Element-isScrollable Ext JS source
   */
  public native function isScrollable():Boolean;

  /**
   * Checks whether the element is currently visible using both visibility and display properties.
   *
   * @return True if the element is currently visible, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-isVisible Ext JS source
   */
  public native function isVisible():Boolean;

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
   * Updates the <a href="http://developer.mozilla.org/en/DOM/element.innerHTML">innerHTML</a> of this Element from a specified URL. Note that this is subject to the <a href="http://en.wikipedia.org/wiki/Same_origin_policy">Same Origin Policy</a>
   <p>Updating innerHTML of an element will <b>not</b> execute embedded <tt>&lt;script&gt;</tt> elements. This is a browser restriction.</p>
   *
   * @param options Either a string containing the URL from which to load the HTML, or an <a href="output/Ext.Ajax.html#Ext.Ajax-request">Ext.Ajax.request</a> options object specifying exactly how to request the HTML.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-load Ext JS source
   */
  public native function load(options:*):Element;

  /**
   * Puts a mask over this element to disable user interaction. Requires core.css. This method can only be applied to elements which accept child nodes.
   *
   * @param msg A message to display in the mask
   * @param msgCls A css class to apply to the msg element
   * @return The mask element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-mask Ext JS source
   */
  public native function mask(msg:String = null, msgCls:String = null):Element;

  /**
   * Move this element relative to its current position.
   *
   * @param direction Possible values are: "l" (or "left"), "r" (or "right"), "t" (or "top", or "up"), "b" (or "bottom", or "down").
   * @param distance How far to move the element in pixels
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-move Ext JS source
   */
  public native function move(direction:String, distance:Number, animate:* = null):Element;

  /**
   * Sets the position of the element in page coordinates, regardless of how the element is positioned. The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param x X value for new position (coordinates are page-based)
   * @param y Y value for new position (coordinates are page-based)
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-moveTo Ext JS source
   */
  public native function moveTo(x:Number, y:Number, animate:* = null):Element;

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
   * Appends an event handler (shorthand for <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a>).
   *
   * @param eventName The name of event to handle.
   * @param fn The handler function the event invokes.
   * @param scope The scope (<code>this</code> reference) in which the handler function is executed.
   * @param options An object containing standard <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> options
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-on Ext JS source
   */
  public native function on(eventName:String, fn:Function, scope:Object = null, options:Object = null):void;

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
   * Initializes positioning on this element. If a desired position is not passed, it will make the the element positioned relative IF it is not already positioned.
   *
   * @param pos Positioning to use "relative", "absolute" or "fixed"
   * @param zIndex The zIndex to apply
   * @param x Set the page X position
   * @param y Set the page Y position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-position Ext JS source
   */
  public native function position(pos:String = null, zIndex:Number = undefined, x:Number = undefined, y:Number = undefined):void;

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-radioClass Ext JS source
   */
  public native function radioClass(className:*):Element;

  /**
   * Create an event handler on this element such that when the event fires and is handled by this element, it will be relayed to another object (i.e., fired again as if it originated from that object instead).
   *
   * @param eventName The type of event to relay
   * @param object Any object that extends <a href="Ext.util.Observable.html">Ext.util.Observable</a> that will provide the context for firing the relayed event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#method-Ext.Element-relayEvent Ext JS source
   */
  public native function relayEvent(eventName:String, object:Object):void;

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-removeClass Ext JS source
   */
  public native function removeClass(className:*):Element;

  /**
   * Removes an event handler from this element. The shorthand version <a href="output/Ext.Element.html#Ext.Element-un">un</a> is equivalent. <b>Note</b>: if a <i>scope</i> was explicitly specified when <a href="output/Ext.Element.html#Ext.Element-addListener">adding</a> the listener, the same scope must be specified here. Example: <pre><code>el.removeListener('click', this.handlerFn);
   // or
   el.un('click', this.handlerFn);
   </code></pre>
   *
   * @param eventName The name of the event from which to remove the handler.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-removeListener Ext JS source
   */
  public native function removeListener(eventName:String, fn:Function, scope:Object = null):Element;

  /**
   * Forces the browser to repaint this element
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-repaint Ext JS source
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-replaceClass Ext JS source
   */
  public native function replaceClass(oldClassName:String, newClassName:String):Element;

  /**
   * Replaces this element with the passed element
   *
   * @param el The new element or a DomHelper config of an element to create
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.insertion.html#method-Ext.Element-replaceWith Ext JS source
   */
  public native function replaceWith(el:*):Element;

  /**
   * Scrolls this element the specified direction. Does bounds checking to make sure the scroll is within this element's scrollable range.
   *
   * @param direction Possible values are: "l" (or "left"), "r" (or "right"), "t" (or "top", or "up"), "b" (or "bottom", or "down").
   * @param distance How far to scroll the element in pixels
   * @param animate true for the default animation or a standard Element animation config object
   * @return Returns true if a scroll was triggered or false if the element was scrolled as far as it could go.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.scroll-more.html#method-Ext.Element-scroll Ext JS source
   */
  public native function scroll(direction:String, distance:Number, animate:* = null):Boolean;

  /**
   * Scrolls this element into view within the passed container.
   *
   * @param container The container element to scroll (defaults to document.body). Should be a string (id), dom node, or Ext.Element.
   * @param hscroll False to disable horizontal scroll (defaults to true)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.scroll-more.html#method-Ext.Element-scrollIntoView Ext JS source
   */
  public native function scrollIntoView(container:* = null, hscroll:Boolean = false):Element;

  /**
   * Scrolls this element the specified scroll point. It does NOT do bounds checking so if you scroll to a weird value it will try to do it. For auto bounds checking, use scroll().
   *
   * @param side Either "left" for scrollLeft values or "top" for scrollTop values.
   * @param value The new scroll value.
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.scroll.html#method-Ext.Element-scrollTo Ext JS source
   */
  public native function scrollTo(side:String, value:Number):Element;

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
   * Sets the element's position and size in one shot. If animation is true then width, height, x and y will be animated concurrently.
   *
   * @param x X value for new position (coordinates are page-based)
   * @param y Y value for new position (coordinates are page-based)
   * @param width The new width. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels)</li><li>A String used to set the CSS width style. Animation may <b>not</b> be used.</li></ul></div>
   * @param height The new height. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels)</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li></ul></div>
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-setBounds Ext JS source
   */
  public native function setBounds(x:Number, y:Number, width:*, height:*, animate:* = null):Element;

  /**
   * Sets the element's box. Use getBox() on another element to get a box obj. If animate is true then width, height, x and y will be animated concurrently.
   *
   * @param box The box to fill {x, y, width, height}
   * @param adjust Whether to adjust for box-model issues automatically
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-setBox Ext JS source
   */
  public native function setBox(box:Object, adjust:Boolean = false, animate:* = null):Element;

  /**
   * Sets the CSS display property. Uses originalDisplay if the specified value is a boolean true.
   *
   * @param value Boolean value to display the element using its default display, or a string to set the display directly.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-setDisplayed Ext JS source
   */
  public native function setDisplayed(value:*):Element;

  /**
   * Set the height of this Element. <pre><code>// change the height to 200px and animate with default configuration
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
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setHeight Ext JS source
   */
  public native function setHeight(height:*, animate:* = null):Element;

  /**
   * Sets the element's left position directly using CSS style (instead of <a href="output/Ext.Element.html#Ext.Element-setX">setX</a>).
   *
   * @param left The left CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setLeft Ext JS source
   */
  public native function setLeft(left:String):Element;

  /**
   * Quick set left and top adding default units
   *
   * @param left The left CSS property value
   * @param top The top CSS property value
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-setLeftTop Ext JS source
   */
  public native function setLeftTop(left:String, top:String):Element;

  /**
   * Sets the position of the element in page coordinates, regardless of how the element is positioned. The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param x X value for new position (coordinates are page-based)
   * @param y Y value for new position (coordinates are page-based)
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setLocation Ext JS source
   */
  public native function setLocation(x:Number, y:Number, animate:* = null):Element;

  /**
   * Set the opacity of the element
   *
   * @param opacity The new opacity. 0 = transparent, .5 = 50% visible, 1 = fully visible, etc
   * @param animate a standard Element animation config object or <tt>true</tt> for the default animation (<tt>{duration: .35, easing: 'easeIn'}</tt>)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setOpacity Ext JS source
   */
  public native function setOpacity(opacity:Number, animate:* = null):Element;

  /**
   * Set positioning with an object returned by getPositioning().
   *
   * @param posCfg
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setPositioning Ext JS source
   */
  public native function setPositioning(posCfg:Object):Element;

  /**
   * Sets the element's position and size the specified region. If animation is true then width, height, x and y will be animated concurrently.
   *
   * @param region The region to fill
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position-more.html#method-Ext.Element-setRegion Ext JS source
   */
  public native function setRegion(region:Region, animate:* = null):Element;

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-setSize Ext JS source
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
   * Sets the element's visibility mode. When setVisible() is called it will use this to determine whether to set the visibility or the display property.
   *
   * @param visMode Ext.Element.VISIBILITY or Ext.Element.DISPLAY
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-setVisibilityMode Ext JS source
   */
  public native function setVisibilityMode(visMode:Number):Element;

  /**
   * Sets the visibility of the element (see details). If the visibilityMode is set to Element.DISPLAY, it will use the display property to hide the element, otherwise it uses visibility. The default is to hide and show using the visibility property.
   *
   * @param visible Whether the element is visible
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-setVisible Ext JS source
   */
  public native function setVisible(visible:Boolean, animate:* = null):Element;

  /**
   * Set the width of this Element.
   *
   * @param width The new width. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in this Element's <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style. Animation may <b>not</b> be used.</li></ul></div>
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-setWidth Ext JS source
   */
  public native function setWidth(width:*, animate:* = null):Element;

  /**
   * Sets the X position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param The X position of the element
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setX Ext JS source
   */
  public native function setX(The:Number, animate:* = null):Element;

  /**
   * Sets the position of the element in page coordinates, regardless of how the element is positioned. The element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param pos Contains X &amp; Y [x, y] values for new position (coordinates are page-based)
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setXY Ext JS source
   */
  public native function setXY(pos:Array, animate:* = null):Element;

  /**
   * Sets the Y position of the element based on page coordinates. Element must be part of the DOM tree to have page coordinates (display:none or elements not appended return false).
   *
   * @param The Y position of the element
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-setY Ext JS source
   */
  public native function setY(The:Number, animate:* = null):Element;

  /**
   * Show this element - Uses display mode to determine whether to use "display" or "visibility". See <a href="output/Ext.Element.html#Ext.Element-setVisible">setVisible</a>.
   *
   * @param animate true for the default animation or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-show Ext JS source
   */
  public native function show(animate:* = null):Element;

  /**
   * Stops the specified event(s) from bubbling and optionally prevents the default action
   *
   * @param eventName an event / array of events to stop from bubbling
   * @param preventDefault true to prevent the default action too
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element-more.html#method-Ext.Element-swallowEvent Ext JS source
   */
  public native function swallowEvent(eventName:*, preventDefault:Boolean = false):Element;

  /**
   * Toggles the element's visibility or display, depending on visibility mode.
   *
   * @param animate True for the default animation, or a standard Element animation config object
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx.html#method-Ext.Element-toggle Ext JS source
   */
  public native function toggle(animate:* = null):Element;

  /**
   * Toggles the specified CSS class on this element (removes it if it already exists, otherwise adds it).
   *
   * @param className The CSS class to toggle
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-toggleClass Ext JS source
   */
  public native function toggleClass(className:String):Element;

  /**
   * Translates the passed page coordinates into left/top css values for this element
   *
   * @param x The page x or an array containing [x, y]
   * @param y The page y, required if x is not an array
   * @return An object with left and top properties. e.g. {left: (value), top: (value)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.position.html#method-Ext.Element-translatePoints Ext JS source
   */
  public native function translatePoints(x:*, y:Number = undefined):Object;

  /**
   * Removes an event handler from this element (see <a href="output/Ext.Element.html#Ext.Element-removeListener">removeListener</a> for additional notes).
   *
   * @param eventName The name of the event from which to remove the handler.
   * @param fn The handler function to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.Element.html#Ext.Element-addListener">addListener</a> call.</b>
   * @param scope If a scope (<b><code>this</code></b> reference) was specified when the listener was added, then this must refer to the same object.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-un Ext JS source
   */
  public native function un(eventName:String, fn:Function, scope:Object):Element;

  /**
   * Return clipping (overflow) to original clipping before <tt><a href="output/Ext.Element.html#Ext.Element-clip">clip</a></tt> was called
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style.html#method-Ext.Element-unclip Ext JS source
   */
  public native function unclip():Element;

  /**
   * Removes a previously applied mask.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.fx-more.html#method-Ext.Element-unmask Ext JS source
   */
  public native function unmask():void;

  /**
   * Disables text selection for this element (normalized across browsers)
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.style-more.html#method-Ext.Element-unselectable Ext JS source
   */
  public native function unselectable():Element;

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
   * Update the innerHTML of this element
   *
   * @param html The new HTML
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Element.html#method-Ext.Element-update Ext JS source
   */
  public native function update(html:String):Element;

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
    