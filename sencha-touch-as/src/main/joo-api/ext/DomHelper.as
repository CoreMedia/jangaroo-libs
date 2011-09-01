package ext {


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
 tpl.append('blog-roll', ['link1', 'http://www.tommymaintz.com/', "Tommy's Site"]);
 tpl.append('blog-roll', ['link2', 'http://www.avins.org/', "Jamie's Site"]);
 </code></pre><br/><br/> <p>The same example using named parameters:</p><pre><code>var html = '<a class="nav" href="{url}" id="{id}">{text}</a>';

 var tpl = new Ext.DomHelper.createTemplate(html);
 tpl.append('blog-roll', {
 id: 'link1',
 url: 'http://www.tommymaintz.com/',
 text: "Tommy's Site"
 });
 tpl.append('blog-roll', {
 id: 'link2',
 url: 'http://www.avins.org/',
 text: "Jamie's Site"
 });
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Compiling Templates</u></p><p>Templates are applied using regular expressions. The performance is great, but if you are adding a bunch of DOM elements using the same template, you can increase performance even further by <a href="output/Ext.Template.html#Ext.Template-compile">"compiling"</a> the template. The way "<a href="output/Ext.Template.html#Ext.Template-compile">compile()</a>" works is the template is parsed and broken up at the different variable points and a dynamic function is created and eval'ed. The generated function performs string concatenation of these parts and the passed variables instead of using regular expressions.</p><pre><code>var html = '<a class="nav" href="{url}" id="{id}">{text}</a>';

 var tpl = new Ext.DomHelper.createTemplate(html);
 tpl.compile();

 //... use template like normal
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Performance Boost</u></p><p>DomHelper will transparently create HTML fragments when it can. Using HTML fragments instead of DOM can significantly boost performance.</p><p>Element creation specification parameters may also be strings. If <a href="output/Ext.DomHelper.html#Ext.DomHelper-useDom">useDom</a> is <tt>false</tt>, then the string is used as innerHTML. If <a href="output/Ext.DomHelper.html#Ext.DomHelper-useDom">useDom</a> is <tt>true</tt>, a string specification results in the creation of a text node. Usage:</p><pre><code>Ext.DomHelper.useDom = true; // force it to use DOM; reduces performance
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.IDomHelper
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DomHelper.html#cls-Ext.DomHelper Ext JS source
 */
public const DomHelper:IDomHelper;

}
