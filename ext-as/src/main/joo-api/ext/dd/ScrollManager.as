package ext.dd {
/**
 * <p>Provides automatic scrolling of overflow regions in the page during drag operations.</p>
 * <p>The ScrollManager configs will be used as the defaults for any scroll container registered with it,
 * but you can also override most of the configs per scroll container by adding a 
 * <tt>ddScrollConfig</tt> object to the target element that contains these properties: <b class='link'>#hthresh</b>,
 * <b class='link'>#vthresh</b>, <b class='link'>#increment</b> and <b class='link'>#frequency</b>.  Example usage:
 * <pre><code>
var el = Ext.get('scroll-ct');
el.ddScrollConfig = {
    vthresh: 50,
    hthresh: -1,
    frequency: 100,
    increment: 200
};
Ext.dd.ScrollManager.register(el);
</code></pre>
 * <b>Note: This class uses "Point Mode" and is untested in "Intersect Mode".</b>
*/
public class ScrollManager {
/**
 * @singleton
 */
        /**
         * Registers new overflow element(s) to auto scroll
         * @param el The id of or the element to be scrolled or an array of either
         */
        public static native function register(el : *) : void;
        /**
         * Unregisters overflow element(s) so they are no longer scrolled
         * @param el The id of or the element to be removed or an array of either
         */
        public static native function unregister(el : *) : void;
        /**
         * The number of pixels from the top or bottom edge of a container the pointer needs to be to
         * trigger scrolling (defaults to 25)
         */
        public static var vthresh  : Number;
        /**
         * The number of pixels from the right or left edge of a container the pointer needs to be to
         * trigger scrolling (defaults to 25)
         */
        public static var hthresh  : Number;
        /**
         * The number of pixels to scroll in each scroll increment (defaults to 50)
         */
        public static var increment  : Number;
        /**
         * The frequency of scrolls in milliseconds (defaults to 500)
         */
        public static var frequency  : Number;
        /**
         * True to animate the scroll (defaults to true)
         */
        public static var animate : Boolean;
        /**
         * The animation duration in seconds - 
         * MUST BE less than Ext.dd.ScrollManager.frequency! (defaults to .4)
         */
        public static var animDuration : Number;
        /**
         * Manually trigger a cache refresh.
         */
        public static native function refreshCache() : void;
}}
