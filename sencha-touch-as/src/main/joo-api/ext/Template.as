package ext {


/**
 * Represents an HTML fragment template. Templates may be <a href="output/Ext.Template.html#Ext.Template-compile">precompiled</a> for greater performance.
 An instance of this class may be created by passing to the constructor either a single argument, or multiple arguments: <div class="mdetail-params"><ul><li><b>single argument</b> : String/Array <div class="sub-desc">The single argument may be either a String or an Array:<ul><li><tt>String</tt> :</li><li style="list-style: none"><pre><code>var t = new Ext.Template("&lt;div&gt;Hello {0}.&lt;/div&gt;");
 t.<a href="output/Ext.Template.html#Ext.Template-append">append</a>('some-element', ['foo']);
 </code></pre></li><li><tt>Array</tt> :</li><li style="list-style: none">An Array will be combined with <code>join('')</code>. <pre><code>var t = new Ext.Template([
 '&lt;div name="{id}"&gt;',
 '&lt;span class="{cls}"&gt;{name:trim} {value:ellipsis(10)}&lt;/span&gt;',
 '&lt;/div&gt;',
 ]);
 t.<a href="output/Ext.Template.html#Ext.Template-compile">compile</a>();
 t.<a href="output/Ext.Template.html#Ext.Template-append">append</a>('some-element', {id: 'myid', cls: 'myclass', name: 'foo', value: 'bar'});
 </code></pre></li></ul></div></li><li><b>multiple arguments</b> : String, Object, Array, ... <div class="sub-desc">Multiple arguments will be combined with <code>join('')</code>. <pre><code>var t = new Ext.Template(
 '&lt;div name="{id}"&gt;',
 '&lt;span class="{cls}"&gt;{name} {value}&lt;/span&gt;',
 '&lt;/div&gt;',
 // a configuration object:
 {
 compiled: true,      // <a href="output/Ext.Template.html#Ext.Template-compile">compile</a> immediately
 }
 );
 </code></pre><p><b>Notes</b>:</p><div class="mdetail-params"><ul><li>Formatting and <code>disableFormats</code> are not applicable for Sencha Touch.</li><li>For a list of available format functions, see <a href="Ext.util.Format.html">Ext.util.Format</a>.</li><li><code>disableFormats</code> reduces <code><a href="output/Ext.Template.html#Ext.Template-apply">apply</a></code> time when no formatting is required.</li></ul></div></div></li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.template
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#cls-Ext.Template Ext JS source
 */
[Native]
public class Template {

  /**
   *
   *
   * @see ext.config.template
   */
  public function Template() {
    super();
  }

  /**
   true to disable format functions in the template. If the template doesn't contain format functions, setting disableFormats to true will reduce apply time (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disableFormats():Boolean;

  /**
   * Applies the supplied <code>values</code> to the template and appends the new node(s) to the specified <code>el</code>. <p>For example usage <a href="output/Ext.Template.html#Ext.Template-Template">see the constructor</a>.</p>
   *
   * @param el The context element
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @param returnElement true to return an Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-append Ext JS source
   */
  public native function append(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Alias for <a href="output/Ext.Template.html#Ext.Template-applyTemplate">applyTemplate</a> Returns an HTML fragment of this template with the specified <code>values</code> applied.
   *
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @return The HTML fragment
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-apply Ext JS source
   */
  public native function apply(values:*):String;

  /**
   * Creates a template from the passed element's value (<i>display:none</i> textarea, preferred) or innerHTML.
   *
   * @param el A DOM element or its id
   * @param config A configuration object
   * @return The created template
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-from Ext JS source
   */
  public static native function from(el:*, config:Object):Template;

  /**
   * Applies the supplied values to the template and inserts the new node(s) after el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-insertAfter Ext JS source
   */
  public native function insertAfter(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and inserts the new node(s) before el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-insertBefore Ext JS source
   */
  public native function insertBefore(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and inserts the new node(s) as the first child of el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-insertFirst Ext JS source
   */
  public native function insertFirst(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and overwrites the content of el with the new node(s).
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-overwrite Ext JS source
   */
  public native function overwrite(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Sets the HTML used as the template and optionally compiles it.
   *
   * @param html
   * @param compile True to compile the template (defaults to undefined)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Template.html#method-Ext.Template-set Ext JS source
   */
  public native function set(html:String, compile:Boolean = false):Template;

}
}
    