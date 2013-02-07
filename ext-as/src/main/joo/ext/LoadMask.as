package ext {
import ext.config.loadmask;
import ext.data.Store;

/**
 * A simple utility class for generically masking elements while loading data. If the <a href="output/Ext.LoadMask.html#Ext.LoadMask-store">store</a> config option is specified, the masking will be automatically synchronized with the store's loading process and the mask element will be cached for reuse. For all other elements, this mask will replace the element's Updater load indicator and will be destroyed after the initial load. <p>Example usage:</p><pre><code>// Basic mask:
 var myMask = new Ext.LoadMask(Ext.getBody(), {msg:"Please wait..."});
 myMask.show();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.loadmask
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.LoadMask")]
public class LoadMask
 {

  /**
   * Create a new LoadMask
   *
   * @param el The element or DOM node, or its id
   * @param config The config object
   * @see ext.config.loadmask
   */
  public function LoadMask(el:*, config:loadmask) {
    super();
  }

  /**
   True if the mask is currently disabled so that it will not be displayed (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask-property-disabled Sencha Docs Ext JS 3.4
   */
  public native function get disabled():Boolean;

  /**
   The text to display in a centered loading message box (defaults to 'Loading...')
   */
  public native function get msg():String;

  /**
   The CSS class to apply to the loading message element (defaults to "x-mask-loading")
   */
  public native function get msgCls():String;

  /**
   True to create a single-use mask that is automatically destroyed after loading (useful for page loads), False to persist the mask element reference for multiple uses (e.g., for paged data widgets). Defaults to false.
   */
  public native function get removeMask():Boolean;

  /**
   Optional Store to which the mask is bound. The mask is displayed when a load request is issued, and hidden on either load success, or load fail.
   */
  public native function get store():Store;

  /**
   * Disables the mask to prevent it from being displayed
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask-method-disable Sencha Docs Ext JS 3.4
   */
  public native function disable():void;

  /**
   * Enables the mask so that it can be displayed
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask-method-enable Sencha Docs Ext JS 3.4
   */
  public native function enable():void;

  /**
   * Hide this LoadMask.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask-method-hide Sencha Docs Ext JS 3.4
   */
  public native function hide():void;

  /**
   * Show this LoadMask over the configured Element.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.LoadMask-method-show Sencha Docs Ext JS 3.4
   */
  public native function show():void;

}
}
    