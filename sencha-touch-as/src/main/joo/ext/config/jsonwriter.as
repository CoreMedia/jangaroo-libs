package ext.config {

import joo.JavaScriptObject;

/**
 * Writer that outputs model data in JSON format

 *
 * <p>This class serves as a
 * typed config object for constructor of class JsonWriter.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.JsonWriter
 */
[ExtConfig(target="ext.data.JsonWriter")]
public class jsonwriter extends JavaScriptObject {

  public function jsonwriter(config:Object = null) {

    super(config);
  }


  /**
   True to use Ext.encode() on the data before sending. Defaults to <tt>false</tt>.
   */
  public native function get encode():Boolean;

  /**
   * @private
   */
  public native function set encode(value:Boolean):void;

  /**
   The key under which the records in this Writer will be placed. Defaults to 'records'. Example generated request: <pre><code>{'records': [{name: 'my record'}, {name: 'another record'}]}
   </code></pre>
   */
  public native function get root():String;

  /**
   * @private
   */
  public native function set root(value:String):void;


}
}
    