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
 * <p>This interface defines the type of the singleton ScrollManager.</p>
 * @see ext.dd.#ScrollManager ext.dd.ScrollManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#cls-Ext.dd.ScrollManager Ext JS source
 */
public interface IScrollManager {

  /**
   The animation duration in seconds - MUST BE less than Ext.dd.ScrollManager.frequency! (defaults to .4)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-animDuration Ext JS source
   */
  function get animDuration():Number;

  /**
   * @private
   */
  function set animDuration(value:Number):void;

  /**
   True to animate the scroll (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-animate Ext JS source
   */
  function get animate():Boolean;

  /**
   * @private
   */
  function set animate(value:Boolean):void;

  /**
   The named drag drop <a href="output/Ext.dd.DragSource.html#Ext.dd.DragSource-ddGroup">group</a> to which this container belongs (defaults to undefined). If a ddGroup is specified, then container scrolling will only occur when a dragged object is in the same ddGroup.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-ddGroup Ext JS source
   */
  function get ddGroup():String;

  /**
   * @private
   */
  function set ddGroup(value:String):void;

  /**
   The frequency of scrolls in milliseconds (defaults to 500)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-frequency Ext JS source
   */
  function get frequency():Number;

  /**
   * @private
   */
  function set frequency(value:Number):void;

  /**
   The number of pixels from the right or left edge of a container the pointer needs to be to trigger scrolling (defaults to 25)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-hthresh Ext JS source
   */
  function get hthresh():Number;

  /**
   * @private
   */
  function set hthresh(value:Number):void;

  /**
   The number of pixels to scroll in each scroll increment (defaults to 100)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-increment Ext JS source
   */
  function get increment():Number;

  /**
   * @private
   */
  function set increment(value:Number):void;

  /**
   The number of pixels from the top or bottom edge of a container the pointer needs to be to trigger scrolling (defaults to 25)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ScrollManager.html#prop-Ext.dd.ScrollManager-vthresh Ext JS source
   */
  function get vthresh():Number;

  /**
   * @private
   */
  function set vthresh(value:Number):void;

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
    