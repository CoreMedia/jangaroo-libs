package ext {
/**
 * Represents an HTML fragment template. Templates can be precompiled for greater performance.
 * For a list of available format functions, see <b class='link'>Ext.util.Format</b>.<br />
 * Usage:
<pre><code>
var t = new ext.Template(
    '&lt;div name="{id}"&gt;',
        '&lt;span class="{cls}"&gt;{name:trim} {value:ellipsis(10)}&lt;/span&gt;',
    '&lt;/div&gt;'
);
t.append('some-element', {id: 'myid', cls: 'myclass', name: 'foo', value: 'bar'});
</code></pre>
*/
public class Template {
/**
 * @constructor
 * @param html The HTML fragment or an array of fragments to join("") or multiple arguments to join("")
 */
public function Template(html : *) {
  super(html);
}

    /**
     * Returns an HTML fragment of this template with the specified values applied.
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @return The HTML fragment
     */
    public native function applyTemplate(values : *) : String;
    /**
     * Sets the HTML used as the template and optionally compiles it.
     * @param html
     * @param compile True to compile the template (defaults to undefined)
     * @return this
     */
    public native function set(html : String, compile : Boolean = undefined) : Template;
    /**
    * The regular expression used to match template variables
    * @property
    */
    public var re  : RegExp;
    /**
     * Compiles the template into an internal function, eliminating the RegEx overhead.
     * @return this
     */
    public native function compile() : Template;
    /**
     * Applies the supplied values to the template and inserts the new node(s) as the first child of el.
     * @param el The context element
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @param returnElement true to return a ext.Element (defaults to undefined)
     * @return The new node or Element
     */
    public native function insertFirst(el : *, values : *, returnElement : Boolean = undefined) : *;
    /**
     * Applies the supplied values to the template and inserts the new node(s) before el.
     * @param el The context element
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @param returnElement true to return a ext.Element (defaults to undefined)
     * @return The new node or Element
     */
    public native function insertBefore(el : *, values : *, returnElement : Boolean = undefined) : *;
    /**
     * Applies the supplied values to the template and inserts the new node(s) after el.
     * @param el The context element
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @param returnElement true to return a ext.Element (defaults to undefined)
     * @return The new node or Element
     */
    public native function insertAfter(el : *, values : *, returnElement : Boolean = undefined) : *;
    /**
     * Applies the supplied values to the template and appends the new node(s) to el.
     * @param el The context element
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @param returnElement true to return a ext.Element (defaults to undefined)
     * @return The new node or Element
     */
    public native function append(el : *, values : *, returnElement : Boolean = undefined) : *;
    public native function doInsert(where, el, values, returnEl) : void;
    /**
     * Applies the supplied values to the template and overwrites the content of el with the new node(s).
     * @param el The context element
     * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
     * @param returnElement true to return a ext.Element (defaults to undefined)
     * @return The new node or Element
     */
    public native function overwrite(el : *, values : *, returnElement : Boolean = undefined) : *;
/**
 * Alias for <b class='link' title='#applyTemplate'>applyTemplate</b>
 * Returns an HTML fragment of this template with the specified values applied.
 * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
 * @return The HTML fragment
 */
  public native function apply(values : *) : String;
/**
 * Creates a template from the passed element's value (<i>display:none</i> textarea, preferred) or innerHTML.
 * @param el A DOM element or its id
 * @param config A configuration object
 * @return The created template
 * @static
 */
public native function from (el : *, config : Object) : Template;

    /**
     * <code>true</code> to disable format functions (defaults to <code>false</code>)
     * @property
     */
    public var disableFormats  : Boolean;

    public native function call(fnName, value, allValues) : void;
}}
