package ext {

/**
 * A template class that supports advanced functionality like autofilling arrays, conditional processing with
 * basic comparison operators, sub-templates, basic math function support, special built-in template variables,
 * inline code execution and more.  XTemplate also provides the templating mechanism built into <b class='link'>ext.DataView</b>.
 * <p>XTemplate supports many special tags and built-in operators that aren't defined as part of the API, but are
 * supported in the templates that can be created.  The following examples demonstrate all of the supported features.
 * This is the data object used for reference in each code example:</p>
 * <pre><code>
var data = {
    name: 'Jack Slocum',
    title: 'Lead Developer',
    company: 'Ext JS, LLC',
    email: 'jack@extjs.com',
    address: '4 Red Bulls Drive',
    city: 'Cleveland',
    state: 'Ohio',
    zip: '44102',
    drinks: ['Red Bull', 'Coffee', 'Water'],
    kids: [{
        name: 'Sara Grace',
        age:3
    },{
        name: 'Zachary',
        age:2
    },{
        name: 'John James',
        age:0
    }]
};
 * </code></pre>
 * <p><b>Auto filling of arrays</b><br/>The <code>tpl</code> tag and the <code>for</code> operator are used
 * to process the provided data object. If <code>for="."</code> is specified, the data object provided
 * is examined. If the variable in <code>for</code> is an array, it will auto-fill, repeating the template
 * block inside the <code>tpl</code> tag for each item in the array:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Kids: ',
    '&lt;tpl for=".">',
        '&lt;p>{name}&lt;/p>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data.kids); // pass the kids property of the data object
 * </code></pre>
 * <p><b>Scope switching</b><br/>The <code>for</code> property can be leveraged to access specified members
 * of the provided data object to populate the template:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Title: {title}&lt;/p>',
    '&lt;p>Company: {company}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl <b>for="kids"</b>>', // interrogate the kids property within the data
        '&lt;p>{name}&lt;/p>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data);
 * </code></pre>
 * <p><b>Access to parent object from within sub-template scope</b><br/>When processing a sub-template, for example while
 * looping through a child array, you can access the parent object's members via the <code>parent</code> object:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl for="kids">',
        '&lt;tpl if="age &amp;gt; 1">',  // <-- Note that the &gt; is encoded
            '&lt;p>{name}&lt;/p>',
            '&lt;p>Dad: {parent.name}&lt;/p>',
        '&lt;/tpl>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data);
</code></pre>
 * <p><b>Array item index and basic math support</b> <br/>While processing an array, the special variable <code>{#}</code>
 * will provide the current array index + 1 (starts at 1, not 0). Templates also support the basic math operators
 * + - * and / that can be applied directly on numeric data values:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl for="kids">',
        '&lt;tpl if="age &amp;gt; 1">',  // <-- Note that the &gt; is encoded
            '&lt;p>{#}: {name}&lt;/p>',  // <-- Auto-number each item
            '&lt;p>In 5 Years: {age+5}&lt;/p>',  // <-- Basic math
            '&lt;p>Dad: {parent.name}&lt;/p>',
        '&lt;/tpl>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data);
</code></pre>
 * <p><b>Auto-rendering of flat arrays</b> <br/>Flat arrays that contain values (and not objects) can be auto-rendered
 * using the special <code>{.}</code> variable inside a loop.  This variable will represent the value of
 * the array at the current index:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>{name}\'s favorite beverages:&lt;/p>',
    '&lt;tpl for="drinks">',
       '&lt;div> - {.}&lt;/div>',
    '&lt;/tpl>'
);
tpl.overwrite(panel.body, data);
</code></pre>
 * <p><b>Basic conditional logic</b> <br/>Using the <code>tpl</code> tag and the <code>if</code>
 * operator you can provide conditional checks for deciding whether or not to render specific parts of the template.
 * Note that there is no <code>else</code> operator &mdash; if needed, you should use two opposite <code>if</code> statements.
 * Properly-encoded attributes are required as seen in the following example:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl for="kids">',
        '&lt;tpl if="age &amp;gt; 1">',  // <-- Note that the &gt; is encoded
            '&lt;p>{name}&lt;/p>',
        '&lt;/tpl>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data);
</code></pre>
 * <p><b>Ability to execute arbitrary inline code</b> <br/>In an XTemplate, anything between {[ ... ]}  is considered
 * code to be executed in the scope of the template. There are some special variables available in that code:
 * <ul>
 * <li><b><code>values</code></b>: The values in the current scope. If you are using scope changing sub-templates, you
 * can change what <code>values</code> is.</li>
 * <li><b><code>parent</code></b>: The scope (values) of the ancestor template.</li>
 * <li><b><code>xindex</code></b>: If you are in a looping template, the index of the loop you are in (1-based).</li>
 * <li><b><code>xcount</code></b>: If you are in a looping template, the total length of the array you are looping.</li>
 * <li><b><code>fm</code></b>: An alias for <code>Ext.util.Format</code>.</li>
 * </ul>
 * This example demonstrates basic row striping using an inline code block and the <code>xindex</code> variable:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Company: {[values.company.toUpperCase() + ", " + values.title]}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl for="kids">',
       '&lt;div class="{[xindex % 2 === 0 ? "even" : "odd"]}">',
        '{name}',
        '&lt;/div>',
    '&lt;/tpl>&lt;/p>'
);
tpl.overwrite(panel.body, data);
</code></pre>
 * <p><b>Template member functions</b> <br/>One or more member functions can be defined directly on the config
 * object passed into the XTemplate constructor for more complex processing:</p>
 * <pre><code>
var tpl = new ext.XTemplate(
    '&lt;p>Name: {name}&lt;/p>',
    '&lt;p>Kids: ',
    '&lt;tpl for="kids">',
        '&lt;tpl if="this.isGirl(name)">',
            '&lt;p>Girl: {name} - {age}&lt;/p>',
        '&lt;/tpl>',
        '&lt;tpl if="this.isGirl(name) == false">',
            '&lt;p>Boy: {name} - {age}&lt;/p>',
        '&lt;/tpl>',
        '&lt;tpl if="this.isBaby(age)">',
            '&lt;p>{name} is a baby!&lt;/p>',
        '&lt;/tpl>',
    '&lt;/tpl>&lt;/p>', {
     isGirl: function(name){
         return name == 'Sara Grace';
     },
     isBaby: function(age){
        return age < 1;
     }
});
tpl.overwrite(panel.body, data);
</code></pre>
*/
public class XTemplate extends Template {
/**
 * @constructor
 * @param parts The HTML fragment or an array of fragments to join(""), or multiple arguments
 * to join("") that can also include a config object
 */
  public function XTemplate(...parts) {
    super(parts);
  }

    protected native function applySubTemplate(parts : *, values, parent, xindex, xcount) : void;

    protected native function compileTpl(tpl) : void;
    /**
     * Returns an HTML fragment of this template with the specified values applied.
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @return The HTML fragment
     */
    override public native function applyTemplate(values : *) : String;
    /**
     * Compile the template to a function for optimized performance.  Recommended if the template will be used frequently.
     * @return The compiled function
     */
    override public native function compile() : Template;
/**
 * Alias for <b class='link' title='#applyTemplate'>applyTemplate</b>
 * Returns an HTML fragment of this template with the specified values applied.
 * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
 * @return The HTML fragment
 * @member ext.XTemplate
 * @method apply
 */
  override public native function apply(values : *) : String;

/**
 * Creates a template from the passed element's value (<i>display:none</i> textarea, preferred) or innerHTML.
 * @param el A DOM element or its id
 * @return The created template
 * @static
 */
override public native function from (el : *, config : Object) : Template;
}}
