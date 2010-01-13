package ext {
/**
 * A simple utility class for generically masking elements while loading data.  If the <b class='link' title='#store'>store</b>
 * config option is specified, the masking will be automatically synchronized with the store's loading
 * process and the mask element will be cached for reuse.  For all other elements, this mask will replace the
 * element's Updater load indicator and will be destroyed after the initial load.
 * <p>Example usage:</p>
 *<pre><code>
&#47;/ Basic mask:
var myMask = new ext.LoadMask(Ext.getBody(), {msg:"Please wait..."});
myMask.show();
</code></pre>
*/
public class LoadMask {
/**
 * @constructor
 * Create a new LoadMask
 * @param el The element or DOM node, or its id
 * @param config The config object
 */
public function LoadMask(el : *, config : Object) {
  super(el, config);
}
    /**
     * @cfg {ext.data.Store} store
     * Optional Store to which the mask is bound. The mask is displayed when a load request is issued, and
     * hidden on either load sucess, or load fail.
     */
    /**
     * @cfg {Boolean} removeMask
     * True to create a single-use mask that is automatically destroyed after loading (useful for page loads),
     * False to persist the mask element reference for multiple uses (e.g., for paged data widgets).  Defaults to false.
     */
    /**
     * @cfg {String} msg
     * The text to display in a centered loading message box (defaults to 'Loading...')
     */
    public var msg  : String;
    /**
     * @cfg {String} msgCls
     * The CSS class to apply to the loading message element (defaults to "x-mask-loading")
     */
    public var msgCls  : String;
    /**
     * Read-only. True if the mask is currently disabled so that it will not be displayed (defaults to false)
     */
    public var disabled : Boolean;
    /**
     * Disables the mask to prevent it from being displayed
     */
    public native function disable() : void;
    /**
     * Enables the mask so that it can be displayed
     */
    public native function enable() : void;
    protected native function onLoad() : void;
    protected native function onBeforeLoad() : void;
    /**
     * Show this LoadMask over the configured Element.
     */
    public native function show() : void;
    /**
     * Hide this LoadMask.
     */
    public native function hide() : void;
    protected native function destroy() : void;
}}
