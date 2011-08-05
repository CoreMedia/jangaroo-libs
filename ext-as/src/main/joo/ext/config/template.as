package ext.config {

import joo.JavaScriptObject;

/**
 * Represents an HTML fragment template. Templates may be <a href="output/Ext.Template.html#Ext.Template-compile">precompiled</a> for greater performance.
 <p>For example usage <a href="output/Ext.Template.html#Ext.Template-Template">see the constructor</a>.</p>
 * <p>This class serves as a typed config object for constructor of class Template.</p>
 *
 * @see ext.Template
 */
[ExtConfig(target="ext.Template")]
public class template extends JavaScriptObject {

  public function template(config:Object = null) {
    super(config);
  }


  /**
   Specify <tt>true</tt> to compile the template immediately (see <code><a href="output/Ext.Template.html#Ext.Template-compile">compile</a></code>). Defaults to <tt>false</tt>.
   */
  public native function get compiled():Boolean;

  /**
   * @private
   */
  public native function set compiled(value:Boolean):void;

  /**
   Specify <tt>true</tt> to disable format functions in the template. If the template does not contain <a href="Ext.util.Format.html">format functions</a>, setting <code>disableFormats</code> to true will reduce <code><a href="output/Ext.Template.html#Ext.Template-apply">apply</a></code> time. Defaults to <tt>false</tt>. <pre><code>var t = new Ext.Template(
   '&lt;div name="{id}"&gt;',
   '&lt;span class="{cls}"&gt;{name} {value}&lt;/span&gt;',
   '&lt;/div&gt;',
   {
   compiled: true,      // <a href="output/Ext.Template.html#Ext.Template-compile">compile</a> immediately
   disableFormats: true // reduce</code> <a href="output/Ext.Template.html#Ext.Template-apply">apply</a> time since no formatting
   }
   );
   </pre>For a list of available format functions, see <a href="Ext.util.Format.html">Ext.util.Format</a>.
   */
  public native function get disableFormats():Boolean;

  /**
   * @private
   */
  public native function set disableFormats(value:Boolean):void;

  /**
   The regular expression used to match template variables. Defaults to:<pre><code>re : /\{([\w\-]+)\}/g                                     // for Ext Core
   re : /\{([\w\-]+)(?:\:([\w\.]&#42;)(?:\((.&#42;?)?\))?)?\}/g      // for Ext JS
   </code></pre>
   */
  public native function get re():RegExp;

  /**
   * @private
   */
  public native function set re(value:RegExp):void;


}
}
    