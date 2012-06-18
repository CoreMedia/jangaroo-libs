package ext {


/**
 * A template class that supports advanced functionality like:
 <div class="mdetail-params"><ul><li>Autofilling arrays using templates and sub-templates</li><li>Conditional processing with basic comparison operators</li><li>Basic math function support</li><li>Execute arbitrary inline code with special built-in template variables</li><li>Custom member functions</li><li>Many special tags and built-in operators that aren't defined as part of the API, but are supported in the templates that can be created</li></ul></div><br/><br/> <p>XTemplate provides the templating mechanism built into:</p><div class="mdetail-params"><ul><li><a href="Ext.DataView.html">Ext.DataView</a></li></ul></div><br/><br/> The <a href="Ext.Template.html">Ext.Template</a> describes the acceptable parameters to pass to the constructor. The following examples demonstrate all of the supported features.<br/><br/> <div class="mdetail-params"><ul><li><b><u>Sample Data</u></b> <div class="sub-desc"><p>This is the data object used for reference in each code example:</p><pre><code>var data = {
 name: 'Tommy Maintz',
 title: 'Lead Developer',
 company: 'Ext JS, Inc',
 email: 'tommy&#64;extjs.com',
 address: '5 Cups Drive',
 city: 'Palo Alto',
 state: 'CA',
 zip: '44102',
 drinks: ['Coffee', 'Soda', 'Water'],
 kids: [{
 name: 'Joshua',
 age:3
 },{
 name: 'Matthew',
 age:2
 },{
 name: 'Solomon',
 age:0
 }]
 };
 </code></pre></div></li><li><b><u>Auto filling of arrays</u></b> <div class="sub-desc"><p>The <b><tt>tpl</tt></b> tag and the <b><tt>for</tt></b> operator are used to process the provided data object:</p><ul><li>If the value specified in <tt>for</tt> is an array, it will auto-fill, repeating the template block inside the <tt>tpl</tt> tag for each item in the array.</li><li>If <tt>for="."</tt> is specified, the data object provided is examined.</li><li>While processing an array, the special variable <tt>{#}</tt> will provide the current array index + 1 (starts at 1, not 0).</li></ul><br/><br/> <pre><code>&lt;tpl <b>for</b>="."&gt;...&lt;/tpl&gt;       // loop through array at root node
 &lt;tpl <b>for</b>="foo"&gt;...&lt;/tpl&gt;     // loop through array at foo node
 &lt;tpl <b>for</b>="foo.bar"&gt;...&lt;/tpl&gt; // loop through array at foo.bar node
 </code></pre>Using the sample data above: <pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Kids: ',
 '&lt;tpl <b>for</b>="."&gt;',       // process the data.kids node
 '&lt;p&gt;{#}. {name}&lt;/p&gt;',  // use current array index to autonumber
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data.kids); // pass the kids property of the data object
 </code></pre><p>An example illustrating how the <b><tt>for</tt></b> property can be leveraged to access specified members of the provided data object to populate the template:</p><pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Title: {title}&lt;/p&gt;',
 '&lt;p&gt;Company: {company}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl <b>for="kids"</b>&gt;',     // interrogate the kids property within the data
 '&lt;p&gt;{name}&lt;/p&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data);  // pass the root node of the data object
 </code></pre><p>Flat arrays that contain values (and not objects) can be auto-rendered using the special <b><tt>{.}</tt></b> variable inside a loop. This variable will represent the value of the array at the current index:</p><pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;{name}\'s favorite beverages:&lt;/p&gt;',
 '&lt;tpl for="drinks"&gt;',
 '&lt;div&gt; - {.}&lt;/div&gt;',
 '&lt;/tpl&gt;'
 );
 tpl.overwrite(panel.body, data);
 </code></pre><p>When processing a sub-template, for example while looping through a child array, you can access the parent object's members via the <b><tt>parent</tt></b> object:</p><pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl for="kids"&gt;',
 '&lt;tpl if="age &amp;gt; 1"&gt;',
 '&lt;p&gt;{name}&lt;/p&gt;',
 '&lt;p&gt;Dad: {<b>parent</b>.name}&lt;/p&gt;',
 '&lt;/tpl&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data);
 </code></pre></div></li><li><b><u>Conditional processing with basic comparison operators</u></b> <div class="sub-desc"><p>The <b><tt>tpl</tt></b> tag and the <b><tt>if</tt></b> operator are used to provide conditional checks for deciding whether or not to render specific parts of the template. Notes:</p><div class="sub-desc"><ul><li>Double quotes must be encoded if used within the conditional</li><li>There is no <tt>else</tt> operator — if needed, two opposite <tt>if</tt> statements should be used.</li></ul></div><pre><code>&lt;tpl if="age &gt; 1 &amp;&amp; age &lt; 10"&gt;Child&lt;/tpl&gt;
 &lt;tpl if="age &gt;= 10 &amp;&amp; age &lt; 18"&gt;Teenager&lt;/tpl&gt;
 &lt;tpl <b>if</b>="this.isGirl(name)"&gt;...&lt;/tpl&gt;
 &lt;tpl <b>if</b>="id==\'download\'"&gt;...&lt;/tpl&gt;
 &lt;tpl <b>if</b>="needsIcon"&gt;&lt;img src="{icon}" class="{iconCls}"/&gt;&lt;/tpl&gt;
 // no good:
 &lt;tpl if="name == "Tommy""&gt;Hello&lt;/tpl&gt;
 // encode " if it is part of the condition, e.g.
 &lt;tpl if="name == &amp;quot;Tommy&amp;quot;"&gt;Hello&lt;/tpl&gt;
 </code></pre>Using the sample data above: <pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl for="kids"&gt;',
 '&lt;tpl if="age &amp;gt; 1"&gt;',
 '&lt;p&gt;{name}&lt;/p&gt;',
 '&lt;/tpl&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data);
 </code></pre></div></li><li><b><u>Basic math support</u></b> <div class="sub-desc"><p>The following basic math operators may be applied directly on numeric data values:</p><pre>+ - &#42; /
 </pre>For example: <pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl for="kids"&gt;',
 '&lt;tpl if="age &amp;gt; 1"&gt;',  // &lt;-- Note that the &gt; is encoded
 '&lt;p&gt;{#}: {name}&lt;/p&gt;',  // &lt;-- Auto-number each item
 '&lt;p&gt;In 5 Years: {age+5}&lt;/p&gt;',  // &lt;-- Basic math
 '&lt;p&gt;Dad: {parent.name}&lt;/p&gt;',
 '&lt;/tpl&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data);
 </code></pre></div></li><li><b><u>Execute arbitrary inline code with special built-in template variables</u></b> <div class="sub-desc"><p>Anything between <code>{[ ... ]}</code> is considered code to be executed in the scope of the template. There are some special variables available in that code:</p><ul><li><b><tt>values</tt></b>: The values in the current scope. If you are using scope changing sub-templates, you can change what <tt>values</tt> is.</li><li><b><tt>parent</tt></b>: The scope (values) of the ancestor template.</li><li><b><tt>xindex</tt></b>: If you are in a looping template, the index of the loop you are in (1-based).</li><li><b><tt>xcount</tt></b>: If you are in a looping template, the total length of the array you are looping.</li></ul>This example demonstrates basic row striping using an inline code block and the <tt>xindex</tt> variable:<br/><br/> <pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Company: {[values.company.toUpperCase() + ", " + values.title]}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl for="kids"&gt;',
 '&lt;div class="{[xindex % 2 === 0 ? "even" : "odd"]}"&gt;',
 '{name}',
 '&lt;/div&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;'
 );
 tpl.overwrite(panel.body, data);
 </code></pre></div></li><li><b><u>Template member functions</u></b> <div class="sub-desc"><p>One or more member functions can be specified in a configuration object passed into the XTemplate constructor for more complex processing:</p><pre><code>var tpl = new Ext.XTemplate(
 '&lt;p&gt;Name: {name}&lt;/p&gt;',
 '&lt;p&gt;Kids: ',
 '&lt;tpl for="kids"&gt;',
 '&lt;tpl if="this.isGirl(name)"&gt;',
 '&lt;p&gt;Girl: {name} - {age}&lt;/p&gt;',
 '&lt;/tpl&gt;',
 // use opposite if statement to simulate 'else' processing:
 '&lt;tpl if="this.isGirl(name) == false"&gt;',
 '&lt;p&gt;Boy: {name} - {age}&lt;/p&gt;',
 '&lt;/tpl&gt;',
 '&lt;tpl if="this.isBaby(age)"&gt;',
 '&lt;p&gt;{name} is a baby!&lt;/p&gt;',
 '&lt;/tpl&gt;',
 '&lt;/tpl&gt;&lt;/p&gt;',
 {
 // XTemplate configuration:
 compiled: true,
 // member functions:
 isGirl: function(name){
 return name == 'Sara Grace';
 },
 isBaby: function(age){
 return age &lt; 1;
 }
 }
 );
 tpl.overwrite(panel.body, data);
 </code></pre></div></li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.xtemplate
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XTemplate.html#cls-Ext.XTemplate Ext JS source
 */
[Native]
public class XTemplate extends Template {

  /**
   *
   *
   * @see ext.config.xtemplate
   */
  public function XTemplate() {
    super();
  }

  /**
   The regular expression used to match code variables (default: matches <tt>{[expression]}</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get codeRe():RegExp;

  /**
   * Alias for <a href="output/Ext.XTemplate.html#Ext.XTemplate-applyTemplate">applyTemplate</a> Returns an HTML fragment of this template with the specified values applied.
   *
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @return The HTML fragment
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XTemplate.html#method-Ext.XTemplate-apply Ext JS source
   */
  override public native function apply(values:*):String;

  /**
   * Returns an HTML fragment of this template with the specified values applied.
   *
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @return The HTML fragment
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XTemplate.html#method-Ext.XTemplate-applyTemplate Ext JS source
   */
  public native function applyTemplate(values:Object):String;

  /**
   * Compile the template to a function for optimized performance. Recommended if the template will be used frequently.
   *
   * @return The compiled function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XTemplate.html#method-Ext.XTemplate-compile Ext JS source
   */
  public native function compile():Function;

  /**
   * Creates a template from the passed element's value (<i>display:none</i> textarea, preferred) or innerHTML.
   *
   * @param el A DOM element or its id
   * @return The created template
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/XTemplate.html#method-Ext.XTemplate-from Ext JS source
   */
  public static native function from(el:*):Template;

}
}
    