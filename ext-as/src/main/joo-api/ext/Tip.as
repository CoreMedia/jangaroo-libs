package ext {
/**
 * This is the base class for <b class='link'>ext.QuickTip</b> and <b class='link'>ext.Tooltip</b> that provides the basic layout and
 * positioning that all tip-based classes require. This class can be used directly for simple, statically-positioned
 * tips that are displayed programmatically, or it can be extended to provide custom tip implementations.
*/
public class Tip extends Panel {
/**
 * @constructor
 * Create a new Tip
 * @param config The configuration options
 */
public function Tip(config : Object) {
  super(config);
}
    /**
     * @cfg {Boolean} closable True to render a close tool button into the tooltip header (defaults to false).
     */
    /**
     * @cfg {Number} width
     * Width in pixels of the tip (defaults to auto).  Width will be ignored if it exceeds the bounds of
     * <b class='link' title='#minWidth'>minWidth</b> or <b class='link' title='#maxWidth'>maxWidth</b>.  The maximum supported value is 500.
     */
    /**
     * @cfg {Number} minWidth The minimum width of the tip in pixels (defaults to 40).
     */
    public var minWidth  : Number;
    /**
     * @cfg {Number} maxWidth The maximum width of the tip in pixels (defaults to 300).  The maximum supported value is 500.
     */
    public var maxWidth  : Number;
    /**
     * @cfg {Boolean/String} shadow True or "sides" for the default effect, "frame" for 4-way shadow, and "drop"
     * for bottom-right shadow (defaults to "sides").
     */
    public var shadow  : *;
    /**
     * @cfg {String} defaultAlign <b>Experimental</b>. The default <b class='link'>ext.Element#alignTo</b> anchor position value
     * for this tip relative to its element of origin (defaults to "tl-bl?").
     */
    public var defaultAlign  : String;
    public var autoRender;
    public var quickShowInterval ;
    public var frame;
    //public var hidden;
    //public var baseCls;
    public var floating;
    public var autoHeight;
    public var closeAction;
    override protected native function initComponent() : void;
    override protected native function afterRender() : void;
    /**
     * Shows this tip at the specified XY position.  Example usage:
     * <pre><code>
// Show the tip at x:50 and y:100
tip.showAt([50,100]);
</code></pre>
     * @param xy An array containing the x and y coordinates
     */
    public native function showAt(xy : Array) : void;
    public native function doAutoWidth() : void;
    /**
     * <b>Experimental</b>. Shows this tip at a position relative to another element using a standard <b class='link'>ext.Element#alignTo</b>
     * anchor position value.  Example usage:
     * <pre><code>
// Show the tip at the default position ('tl-br?')
tip.showBy('my-el');

// Show the tip's top-left corner anchored to the element's top-right corner
tip.showBy('my-el', 'tl-tr');
</code></pre>
     * @param el An HTMLElement, ext.Element or string id of the target element to align to
     * @param position A valid <b class='link'>ext.Element#alignTo</b> anchor position (defaults to 'tl-br?' or
     * <b class='link' title='#defaultAlign'>defaultAlign</b> if specified).
     */
    public native function showBy(el : *, position : String = undefined) : void;
    override protected native function initDraggable() : void;
public native function DD (tip, config) : void;
    public var moveOnly;
    public var scroll;
    public var headerOffsets;
    public native function startDrag() : void;
    public native function endDrag(e) : void;
}}
