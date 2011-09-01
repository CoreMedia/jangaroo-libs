package ext.config {

import joo.JavaScriptObject;

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
 * <p>This class serves as a
 * typed config object for constructor of class Template.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Template
 */
[ExtConfig(target="ext.Template")]
public class template extends JavaScriptObject {

  public function template(config:Object = null) {

    super(config);
  }


  /**
   true to disable format functions in the template. If the template doesn't contain format functions, setting disableFormats to true will reduce apply time (defaults to false)
   */
  public native function get disableFormats():Boolean;

  /**
   * @private
   */
  public native function set disableFormats(value:Boolean):void;


}
}
    