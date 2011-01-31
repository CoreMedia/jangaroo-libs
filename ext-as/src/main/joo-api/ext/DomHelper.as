package ext {

import js.HTMLElement;
import js.Node;

/**
 * The DomHelper class provides a layer of abstraction from DOM and transparently supports creating
 * elements via DOM or using HTML fragments. It also has the ability to create HTML fragment templates
 * from your DOM building code.
 *
 * <p><b><u>DomHelper element specification object</u></b></p>
 * <p>A specification object is used when creating elements. Attributes of this object
 * are assumed to be element attributes, except for 4 special attributes:
 * <div class="mdetail-params"><ul>
 * <li><b><code>tag</code></b> : <div class="sub-desc">The tag name of the element</div></li>
 * <li><b><code>children</code></b> : or <code>cn</code><div class="sub-desc">An array of the
 * same kind of element definition objects to be created and appended. These can be nested
 * as deep as you want.</div></li>
 * <li><b><code>cls</code></b> : <div class="sub-desc">The class attribute of the element.
 * This will end up being either the "class" attribute on a HTML fragment or className
 * for a DOM node, depending on whether DomHelper is using fragments or DOM.</div></li>
 * <li><b><code>html</code></b> : <div class="sub-desc">The innerHTML for the element</div></li>
 * </ul></div></p>
 *
 * <p><b><u>Insertion methods</u></b></p>
 * <p>Commonly used insertion methods:
 * <div class="mdetail-params"><ul>
 * <li><b><code><b class='link' title='#append'>append</b></code></b> : <div class="sub-desc"></div></li>
 * <li><b><code><b class='link' title='#insertBefore'>insertBefore</b></code></b> : <div class="sub-desc"></div></li>
 * <li><b><code><b class='link' title='#insertAfter'>insertAfter</b></code></b> : <div class="sub-desc"></div></li>
 * <li><b><code><b class='link' title='#overwrite'>overwrite</b></code></b> : <div class="sub-desc"></div></li>
 * <li><b><code><b class='link' title='#createTemplate'>createTemplate</b></code></b> : <div class="sub-desc"></div></li>
 * <li><b><code><b class='link' title='#insertHtml'>insertHtml</b></code></b> : <div class="sub-desc"></div></li>
 * </ul></div></p>
 *
 * <p><b><u>Example</u></b></p>
 * <p>This is an example, where an unordered list with 3 children items is appended to an existing
 * element with id <code>'my-div'</code>:<br>
 <pre><code>
var dh = ext.DomHelper; // create shorthand alias
// specification object
var spec = {
    id: 'my-ul',
    tag: 'ul',
    cls: 'my-list',
    // append children after creating
    children: [     // may also specify 'cn' instead of 'children'
        {tag: 'li', id: 'item0', html: 'List Item 0'},
        {tag: 'li', id: 'item1', html: 'List Item 1'},
        {tag: 'li', id: 'item2', html: 'List Item 2'}
    ]
};
var list = dh.append(
    'my-div', // the context element 'my-div' can either be the id or the actual node
    spec      // the specification object
);
 </code></pre></p>
 * <p>Element creation specification parameters in this class may also be passed as an Array of
 * specification objects. This can be used to insert multiple sibling nodes into an existing
 * container very efficiently. For example, to add more list items to the example above:<pre><code>
dh.append('my-ul', [
    {tag: 'li', id: 'item3', html: 'List Item 3'},
    {tag: 'li', id: 'item4', html: 'List Item 4'}
]);
 * </code></pre></p>
 *
 * <p><b><u>Templating</u></b></p>
 * <p>The real power is in the built-in templating. Instead of creating or appending any elements,
 * <code><b class='link' title='#createTemplate'>createTemplate</b></code> returns a Template object which can be used over and over to
 * insert new elements. Revisiting the example above, we could utilize templating this time:
 * <pre><code>
// create the node
var list = dh.append('my-div', {tag: 'ul', cls: 'my-list'});
// get template
var tpl = dh.createTemplate({tag: 'li', id: 'item{0}', html: 'List Item {0}'});

for(var i = 0; i < 5, i++){
    tpl.append(list, [i]); // use template to append to the actual node
}
 * </code></pre></p>
 * <p>An example using a template:<pre><code>
var html = '<a id="{0}" href="{1}" class="nav">{2}</a>';

var tpl = new ext.DomHelper.createTemplate(html);
tpl.append('blog-roll', ['link1', 'http://www.jackslocum.com/', "Jack&#39;s Site"]);
tpl.append('blog-roll', ['link2', 'http://www.dustindiaz.com/', "Dustin&#39;s Site"]);
 * </code></pre></p>
 *
 * <p>The same example using named parameters:<pre><code>
var html = '<a id="{id}" href="{url}" class="nav">{text}</a>';

var tpl = new ext.DomHelper.createTemplate(html);
tpl.append('blog-roll', {
    id: 'link1',
    url: 'http://www.jackslocum.com/',
    text: "Jack&#39;s Site"
});
tpl.append('blog-roll', {
    id: 'link2',
    url: 'http://www.dustindiaz.com/',
    text: "Dustin&#39;s Site"
});
 * </code></pre></p>
 *
 * <p><b><u>Compiling Templates</u></b></p>
 * <p>Templates are applied using regular expressions. The performance is great, but if
 * you are adding a bunch of DOM elements using the same template, you can increase
 * performance even further by <b class='link' title='ext.Template#compile'>"compiling"</b> the template.
 * The way "<b class='link' title='ext.Template#compile'>compile()</b>" works is the template is parsed and
 * broken up at the different variable points and a dynamic function is created and eval'ed.
 * The generated function performs string concatenation of these parts and the passed
 * variables instead of using regular expressions.
 * <pre><code>
var html = '<a id="{id}" href="{url}" class="nav">{text}</a>';

var tpl = new ext.DomHelper.createTemplate(html);
tpl.compile();

//... use template like normal
 * </code></pre></p>
 *
 * <p><b><u>Performance Boost</u></b></p>
 * <p>DomHelper will transparently create HTML fragments when it can. Using HTML fragments instead
 * of DOM can significantly boost performance.</p>
 * <p>Element creation specification parameters may also be strings. If <b class='link' title='#useDom'>useDom</b> is <code>false</code>,
 * then the string is used as innerHTML. If <b class='link' title='#useDom'>useDom</b> is <code>true</code>, a string specification
 * results in the creation of a text node. Usage:</p>
 * <pre><code>
ext.DomHelper.useDom = true; // force it to use DOM; reduces performance
 * </code></pre>
*/
public class DomHelper {
/**
 * @singleton
 */
    /**
     * @ignore
     * Nasty code for IE's broken table implementation
     */
	    /**
	     * Returns the markup for the passed Element(s) config.
	     * @param o The DOM object spec (and children)
	     * @return 
	     */
	    public static native function markup(o : Object) : String;
	    /**
	     * Inserts an HTML fragment into the DOM.
	     * @param where Where to insert the html in relation to el - beforeBegin, afterBegin, beforeEnd, afterEnd.
	     * @param el The context element
	     * @param html The HTML fragmenet
	     * @return The new node
	     */
	    public static native function insertHtml(where : String, el : HTMLElement, html : String) : HTMLElement;
	    /**
	     * Creates new DOM element(s) and inserts them before el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
	     */
	    public static native function insertBefore(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and inserts them after el.
	     * @param el The context element
	     * @param o The DOM object spec (and children)
	     * @param returnElement true to return a ext.Element
	     * @return The new node
	     */
	    public static native function insertAfter(el : *, o : Object, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and inserts them as the first child of el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
	     */
	    public static native function insertFirst(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and appends them to el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
	     */
	    public static native function append(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and overwrites the contents of el with them.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
	     */
	    public static native function overwrite(el : *, o : *, returnElement : Boolean = undefined) : *;
	    public static var createHtml ;

		/**
	     * Creates a new ext.Template from the DOM object spec.
	     * @param o The DOM object spec (and children)
	     * @return The new template
	     */
	    public static native function createTemplate(o : Object) : Template;
	    public var useDom : Boolean;

	    /**
	     * Applies a style specification to an element.
	     * @param el The element to apply styles to
	     * @param styles A style specification string e.g. 'width:100px', or object in the form {width:'100px'}, or
	     * a function which returns such a specification.
	     */
	    public static native function applyStyles(el : *, styles : *) : void;
	    /**
	     * Creates new DOM element(s) and inserts them before el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
         * @hide (repeat)
	     */
	    public static native function insertBefore(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and inserts them after el.
	     * @param el The context element
	     * @param o The DOM object spec (and children)
	     * @param returnElement true to return a ext.Element
	     * @return The new node
         * @hide (repeat)
	     */
	    public static native function insertAfter(el : *, o : Object, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and inserts them as the first child of el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
         * @hide (repeat)
	     */
	    public static native function insertFirst(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) and appends them to el.
	     * @param el The context element
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @param returnElement true to return a ext.Element
	     * @return The new node
         * @hide (repeat)
	     */
	    public static native function append(el : *, o : *, returnElement : Boolean = undefined) : *;
	    /**
	     * Creates new DOM element(s) without inserting them to the document.
	     * @param o The DOM object spec (and children) or raw HTML blob
	     * @return The new uninserted node
	     */
      public static native function createDom(o:*) : Node;
}}
