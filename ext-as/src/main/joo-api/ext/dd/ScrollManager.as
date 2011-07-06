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
 * @see ext.dd.IScrollManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#cls-Ext.dd.ScrollManager Ext JS source
 */
public const ScrollManager:IScrollManager;

}
