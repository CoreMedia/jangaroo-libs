package ext.dd {


/**
 * Provides automatic scrolling of overflow regions in the page during drag operations.
 <p>The ScrollManager configs will be used as the defaults for any scroll container registered with it, but you can also override most of the configs per scroll container by adding a <tt>ddScrollConfig</tt> object to the target element that contains these properties: <a href="output/Ext.dd.ScrollManager.html#Ext.dd.ScrollManager-hthresh">hthresh</a>, <a href="output/Ext.dd.ScrollManager.html#Ext.dd.ScrollManager-vthresh">vthresh</a>, <a href="output/Ext.dd.ScrollManager.html#Ext.dd.ScrollManager-increment">increment</a> and <a href="output/Ext.dd.ScrollManager.html#Ext.dd.ScrollManager-frequency">frequency</a>. Example usage:</p><pre><code>var el = Ext.get('scroll-ct');
 el.ddScrollConfig = {
 vthresh: 50,
 hthresh: -1,
 frequency: 100,
 increment: 200
 };
 Ext.dd.ScrollManager.register(el);
 </code></pre><b>Note: This class uses "Point Mode" and is untested in "Intersect Mode".</b>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton ScrollManager.</p>
 * @see ext.dd.#ScrollManager ext.dd.ScrollManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#cls-Ext.dd.ScrollManager Ext JS source
 */
public interface IScrollManager extends IDDScrollConfig {

  /**
   * Manually trigger a cache refresh.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#method-Ext.dd.ScrollManager-refreshCache Ext JS source
   */
  function refreshCache():void;

  /**
   * Registers new overflow element(s) to auto scroll
   *
   * @param el The id of or the element to be scrolled or an array of either
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#method-Ext.dd.ScrollManager-register Ext JS source
   */
  function register(el:*):void;

  /**
   * Unregisters overflow element(s) so they are no longer scrolled
   *
   * @param el The id of or the element to be removed or an array of either
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#method-Ext.dd.ScrollManager-unregister Ext JS source
   */
  function unregister(el:*):void;

}
}
    