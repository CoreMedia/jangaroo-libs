package ext.config {

import ext.Ext;
import ext.data.Store;

/**
 * A simple utility class for generically masking elements while loading data. If the <a href="output/Ext.LoadMask.html#Ext.LoadMask-store">store</a> config option is specified, the masking will be automatically synchronized with the store's loading process and the mask element will be cached for reuse. For all other elements, this mask will replace the element's Updater load indicator and will be destroyed after the initial load. <p>Example usage:</p><pre><code>// Basic mask:
 var myMask = new Ext.LoadMask(Ext.getBody(), {msg:"Please wait..."});
 myMask.show();
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class LoadMask.</p>
 *
 * @see ext.LoadMask
 */
[ExtConfig(target="ext.LoadMask")]
public class loadmask {

  public function loadmask(config:Object = null) {

    Ext.apply(this, config);
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
   True to create a single-use mask that is automatically destroyed after loading (useful for page loads), False to persist the mask element reference for multiple uses (e.g., for paged data widgets). Defaults to false.
   */
  public native function get removeMask():Boolean;

  /**
   * @private
   */
  public native function set removeMask(value:Boolean):void;

  /**
   Optional Store to which the mask is bound. The mask is displayed when a load request is issued, and hidden on either load success, or load fail.
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;


}
}
    