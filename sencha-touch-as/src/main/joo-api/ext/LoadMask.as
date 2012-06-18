package ext {

import ext.config.loadmask;
import ext.data.Store;

/**
 * A simple utility class for generically masking elements while loading data. If the <a href="output/Ext.LoadMask.html#Ext.LoadMask-store">store</a> config option is specified, the masking will be automatically synchronized with the store's loading process and the mask element will be cached for reuse. <p>Example usage:</p><pre><code>// Basic mask:
 var myMask = new Ext.LoadMask(Ext.getBody(), {msg:"Please wait..."});
 myMask.show();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.loadmask
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#cls-Ext.LoadMask Ext JS source
 */
[Native]
public class LoadMask {

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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#prop-Ext.LoadMask-disabled Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   The text to display in a centered loading message box (defaults to 'Loading...')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get msg():String;

  /**
   The CSS class to apply to the loading message element (defaults to "x-mask-loading")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get msgCls():String;

  /**
   Optional Store to which the mask is bound. The mask is displayed when a load request is issued, and hidden on either load sucess, or load fail.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get store():Store;

  /**
   * Changes the data store bound to this LoadMask.
   *
   * @param store The store to bind to this LoadMask
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-bindStore Ext JS source
   */
  public native function bindStore(store:Store):void;

  /**
   * Disables the mask to prevent it from being displayed
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables the mask so that it can be displayed
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Hide this LoadMask.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-hide Ext JS source
   */
  public native function hide():void;

  /**
   * Method to determine whether this LoadMask is currently disabled.
   *
   * @return the disabled state of this LoadMask.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-isDisabled Ext JS source
   */
  public native function isDisabled():Boolean;

  /**
   * Show this LoadMask over the configured Element.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LoadMask.html#method-Ext.LoadMask-show Ext JS source
   */
  public native function show():void;

}
}
    