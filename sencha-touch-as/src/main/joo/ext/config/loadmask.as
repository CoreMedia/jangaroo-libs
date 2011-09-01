package ext.config {

import ext.data.Store;

import joo.JavaScriptObject;

/**
 * A simple utility class for generically masking elements while loading data. If the <a href="output/Ext.LoadMask.html#Ext.LoadMask-store">store</a> config option is specified, the masking will be automatically synchronized with the store's loading process and the mask element will be cached for reuse. <p>Example usage:</p><pre><code>// Basic mask:
 var myMask = new Ext.LoadMask(Ext.getBody(), {msg:"Please wait..."});
 myMask.show();
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class LoadMask.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.LoadMask
 */
[ExtConfig(target="ext.LoadMask")]
public class loadmask extends JavaScriptObject {

  public function loadmask(config:Object = null) {

    super(config);
  }


  /**
   The text to display in a centered loading message box (defaults to 'Loading...')
   */
  public native function get msg():String;

  /**
   * @private
   */
  public native function set msg(value:String):void;

  /**
   The CSS class to apply to the loading message element (defaults to "x-mask-loading")
   */
  public native function get msgCls():String;

  /**
   * @private
   */
  public native function set msgCls(value:String):void;

  /**
   Optional Store to which the mask is bound. The mask is displayed when a load request is issued, and hidden on either load sucess, or load fail.
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;


}
}
    