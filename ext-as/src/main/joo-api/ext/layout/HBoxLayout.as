package ext.layout {
/**
 * A layout that arranges items horizontally
 */
    public class HBoxLayout extends BoxLayout {
/**
     * @cfg {String} align
     * Controls how the child items of the container are aligned. Acceptable configuration values for this
     * property are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>top</code></b> : <b>Default</b><div class="sub-desc">child items are aligned vertically
     * at the <b>left</b> side of the container</div></li>
     * <li><b><code>middle</code></b> : <div class="sub-desc">child items are aligned vertically at the
     * <b>mid-height</b> of the container</div></li>
     * <li><b><code>stretch</code></b> : <div class="sub-desc">child items are stretched vertically to fill
     * the height of the container</div></li>
     * <li><b><code>stretchmax</code></b> : <div class="sub-desc">child items are stretched vertically to
     * the size of the largest item.</div></li>
     */
    public var align  : Number;
    /**
     * @cfg {String} pack
     * Controls how the child items of the container are packed together. Acceptable configuration values
     * for this property are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>start</code></b> : <b>Default</b><div class="sub-desc">child items are packed together at
     * <b>left</b> side of container</div></li>
     * <li><b><code>center</code></b> : <div class="sub-desc">child items are packed together at
     * <b>mid-width</b> of container</div></li>
     * <li><b><code>end</code></b> : <div class="sub-desc">child items are packed together at <b>right</b>
     * side of container</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Number} flex
     * This configuation option is to be applied to <b>child <code>items</code></b> of the container managed
     * by this layout. Each child item with a <code>flex</code> property will be flexed <b>horizontally</b>
     * according to each item's <b>relative</b> <code>flex</code> value compared to the sum of all items with
     * a <code>flex</code> value specified.  Any child items that have either a <code>flex = 0</code> or
     * <code>flex = undefined</code> will not be 'flexed' (the initial size will not be changed).
     */
    override protected native function onLayout(ct, target) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
