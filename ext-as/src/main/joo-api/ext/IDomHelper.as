package ext {

import js.HTMLElement;

/**
 * The DomHelper class provides a layer of abstraction from DOM and transparently supports creating elements via DOM or using HTML fragments. It also has the ability to create HTML fragment templates from your DOM building code.
 <p style="font-weight: bold"><u>DomHelper element specification object</u></p><p>A specification object is used when creating elements. Attributes of this object are assumed to be element attributes, except for 4 special attributes:</p><div class="mdetail-params"><ul><li><b><tt>tag</tt></b> : <div class="sub-desc">The tag name of the element</div></li><li><b><tt>children</tt></b> : or <tt>cn</tt><div class="sub-desc">An array of the same kind of element definition objects to be created and appended. These can be nested as deep as you want.</div></li><li><b><tt>cls</tt></b> : <div class="sub-desc">The class attribute of the element. This will end up being either the "class" attribute on a HTML fragment or className for a DOM node, depending on whether DomHelper is using fragments or DOM.</div></li><li><b><tt>html</tt></b> : <div class="sub-desc">The innerHTML for the element</div></li></ul></div><br/><br/> <p style="font-weight: bold"><u>Insertion methods</u></p><p>Commonly used insertion methods:</p><div class="mdetail-params"><ul><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-append">append</a></tt></b> :</li><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-insertBefore">insertBefore</a></tt></b> :</li><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-insertAfter">insertAfter</a></tt></b> :</li><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-overwrite">overwrite</a></tt></b> :</li><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-createTemplate">createTemplate</a></tt></b> :</li><li><b><tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-insertHtml">insertHtml</a></tt></b> :</li></ul></div><br/><br/> <p style="font-weight: bold"><u>Example</u></p><p>This is an example, where an unordered list with 3 children items is appended to an existing element with id <tt>'my-div'</tt>:<br/></p><pre><code>var dh = Ext.DomHelper; // create shorthand alias
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
 </code></pre><br/><br/> <p>Element creation specification parameters in this class may also be passed as an Array of specification objects. This can be used to insert multiple sibling nodes into an existing container very efficiently. For example, to add more list items to the example above:</p><pre><code>dh.append('my-ul', [
 {tag: 'li', id: 'item3', html: 'List Item 3'},
 {tag: 'li', id: 'item4', html: 'List Item 4'}
 ]);
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Templating</u></p><p>The real power is in the built-in templating. Instead of creating or appending any elements, <tt><a href="output/Ext.DomHelper.html#Ext.DomHelper-createTemplate">createTemplate</a></tt> returns a Template object which can be used over and over to insert new elements. Revisiting the example above, we could utilize templating this time:</p><pre><code>// create the node
 var list = dh.append('my-div', {tag: 'ul', cls: 'my-list'});
 // get template
 var tpl = dh.createTemplate({tag: 'li', id: 'item{0}', html: 'List Item {0}'});

 for(var i = 0; i &lt; 5, i++){
 tpl.append(list, [i]); // use template to append to the actual node
 }
 </code></pre><br/><br/> <p>An example using a template:</p><pre><code>var html = '<a class="nav" href="{1}" id="{0}">{2}</a>';

 var tpl = new Ext.DomHelper.createTemplate(html);
 tpl.append('blog-roll', ['link1', 'http://www.jackslocum.com/', "Jack's Site"]);
 tpl.append('blog-roll', ['link2', 'http://www.dustindiaz.com/', "Dustin's Site"]);
 </code></pre><br/><br/> <p>The same example using named parameters:</p><pre><code>var html = '<a class="nav" href="{url}" id="{id}">{text}</a>';

 var tpl = new Ext.DomHelper.createTemplate(html);
 tpl.append('blog-roll', {
 id: 'link1',
 url: 'http://www.jackslocum.com/',
 text: "Jack's Site"
 });
 tpl.append('blog-roll', {
 id: 'link2',
 url: 'http://www.dustindiaz.com/',
 text: "Dustin's Site"
 });
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Compiling Templates</u></p><p>Templates are applied using regular expressions. The performance is great, but if you are adding a bunch of DOM elements using the same template, you can increase performance even further by <a href="output/Ext.Template.html#Ext.Template-compile">"compiling"</a> the template. The way "<a href="output/Ext.Template.html#Ext.Template-compile">compile()</a>" works is the template is parsed and broken up at the different variable points and a dynamic function is created and eval'ed. The generated function performs string concatenation of these parts and the passed variables instead of using regular expressions.</p><pre><code>var html = '<a class="nav" href="{url}" id="{id}">{text}</a>';

 var tpl = new Ext.DomHelper.createTemplate(html);
 tpl.compile();

 //... use template like normal
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Performance Boost</u></p><p>DomHelper will transparently create HTML fragments when it can. Using HTML fragments instead of DOM can significantly boost performance.</p><p>Element creation specification parameters may also be strings. If <a href="output/Ext.DomHelper.html#Ext.DomHelper-useDom">useDom</a> is <tt>false</tt>, then the string is used as innerHTML. If <a href="output/Ext.DomHelper.html#Ext.DomHelper-useDom">useDom</a> is <tt>true</tt>, a string specification results in the creation of a text node. Usage:</p><pre><code>Ext.DomHelper.useDom = true; // force it to use DOM; reduces performance
 </code></pre>
 * <p>This interface defines the type of the singleton DomHelper.</p>
 * @see ext.#DomHelper ext.DomHelper
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper-more.html#cls-Ext.DomHelper Ext JS source
 */
public interface IDomHelper {

  /**
   Since we're using the g flag on the regex, we need to set the lastIndex. This automatically happens on some implementations, but not others, see: http://stackoverflow.com/questions/2645273/javascript-regular-expression-literal-persists-between-function-calls http://blog.stevenlevithan.com/archives/fixing-javascript-regexp
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#prop-Ext.DomHelper-lastIndex Ext JS source
   */
  function get lastIndex():Object;

  /**
   * @private
   */
  function set lastIndex(value:Object):void;

  /**
   True to force the use of DOM instead of html fragments
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper-more.html#prop-Ext.DomHelper-useDom Ext JS source
   */
  function get useDom():Boolean;

  /**
   * @private
   */
  function set useDom(value:Boolean):void;

  /**
   * Creates new DOM element(s) and appends them to el.
   *
   * @param el The context element
   * @param o The DOM object spec (and children) or raw HTML blob
   * @param returnElement true to return a Ext.Element
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-append Ext JS source
   */
  function append(el:*, o:*, returnElement:Boolean = false):*;

  /**
   * Applies a style specification to an element.
   *
   * @param el The element to apply styles to
   * @param styles A style specification string e.g. 'width:100px', or object in the form {width:'100px'}, or a function which returns such a specification.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-applyStyles Ext JS source
   */
  function applyStyles(el:*, styles:*):void;

  /**
   * Creates new DOM element(s) without inserting them to the document.
   *
   * @param o The DOM object spec (and children) or raw HTML blob
   * @return The new uninserted node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper-more.html#method-Ext.DomHelper-createDom Ext JS source
   */
  function createDom(o:*):HTMLElement;

  /**
   * Creates a new Ext.Template from the DOM object spec.
   *
   * @param o The DOM object spec (and children)
   * @return The new template
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper-more.html#method-Ext.DomHelper-createTemplate Ext JS source
   */
  function createTemplate(o:Object):Template;

  /**
   * Creates new DOM element(s) and inserts them after el.
   *
   * @param el The context element
   * @param o The DOM object spec (and children)
   * @param returnElement true to return a Ext.Element
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-insertAfter Ext JS source
   */
  function insertAfter(el:*, o:Object, returnElement:Boolean = false):*;

  /**
   * Creates new DOM element(s) and inserts them before el.
   *
   * @param el The context element
   * @param o The DOM object spec (and children) or raw HTML blob
   * @param returnElement true to return a Ext.Element
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-insertBefore Ext JS source
   */
  function insertBefore(el:*, o:*, returnElement:Boolean = false):*;

  /**
   * Creates new DOM element(s) and inserts them as the first child of el.
   *
   * @param el The context element
   * @param o The DOM object spec (and children) or raw HTML blob
   * @param returnElement true to return a Ext.Element
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-insertFirst Ext JS source
   */
  function insertFirst(el:*, o:*, returnElement:Boolean = false):*;

  /**
   * Inserts an HTML fragment into the DOM.
   *
   * @param where Where to insert the html in relation to el - beforeBegin, afterBegin, beforeEnd, afterEnd.
   * @param el The context element
   * @param html The HTML fragment
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-insertHtml Ext JS source
   */
  function insertHtml(where:String, el:HTMLElement, html:String):HTMLElement;

  /**
   * Returns the markup for the passed Element(s) config.
   *
   * @param o The DOM object spec (and children)
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-markup Ext JS source
   */
  function markup(o:Object):String;

  /**
   * Creates new DOM element(s) and overwrites the contents of el with them.
   *
   * @param el The context element
   * @param o The DOM object spec (and children) or raw HTML blob
   * @param returnElement true to return a Ext.Element
   * @return The new node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#method-Ext.DomHelper-overwrite Ext JS source
   */
  function overwrite(el:*, o:*, returnElement:Boolean = false):*;

}
}
    