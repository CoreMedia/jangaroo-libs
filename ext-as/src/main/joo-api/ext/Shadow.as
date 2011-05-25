package ext {
/**
 * Simple class that can provide a shadow effect for any element.  Note that the element MUST be absolutely positioned,
 * and the shadow does not provide any shimming.  This should be used only in simple cases -- for more advanced
 * functionality that can also provide the same shadow effect, see the <b class='link'>ext.Layer</b> class.
*/
public class Shadow {
/**
 * @constructor
 * Create a new Shadow
 * @param config The config object
 */
public native function Shadow(config:Object = null);
    /**
     * @cfg {String} mode
     * The shadow display mode.  Supports the following options:<div class="mdetail-params"><ul>
     * <li><b><code>sides</code></b> : Shadow displays on both sides and bottom only</li>
     * <li><b><code>frame</code></b> : Shadow displays equally on all four sides</li>
     * <li><b><code>drop</code></b> : Traditional bottom-right drop shadow</li>
     * </ul></div>
     */
    /**
     * @cfg {String} offset
     * The number of pixels to offset the shadow from the element (defaults to <code>4</code>)
     */
    public var offset : String;
    protected var defaultMode;
    /**
     * Displays the shadow under the target element
     * @param targetEl The id or element under which the shadow should display
     */
    public native function show(targetEl : *) : void;
    /**
     * Returns true if the shadow is visible, else false
     */
    public native function isVisible() : void;
    /**
     * Direct alignment when values are already available. Show must be called at least once before
     * calling this method to ensure it is initialized.
     * @param left The target element left position
     * @param top The target element top position
     * @param width The target element width
     * @param height The target element height
     */
    public native function realign(left : Number, top : Number, width : Number, height : Number) : void;
    /**
     * Hides this shadow
     */
    public native function hide() : void;
    /**
     * Adjust the z-index of this shadow
     * @param zindex The new z-index
     */
    public native function setZIndex(zindex : Number) : void;
public native function Pool () : void;
}}
