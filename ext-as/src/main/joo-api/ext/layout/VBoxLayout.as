package ext.layout {
/**
 * A layout that arranges items vertically
 */
    public class VBoxLayout extends BoxLayout {
/**
     * @cfg {String} align
     * Controls how the child items of the container are aligned. Acceptable configuration values for this
     * property are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>left</code></b> : <b>Default</b><div class="sub-desc">child items are aligned horizontally
     * at the <b>left</b> side of the container</div></li>
     * <li><b><code>center</code></b> : <div class="sub-desc">child items are aligned horizontally at the
     * <b>mid-width</b> of the container</div></li>
     * <li><b><code>stretch</code></b> : <div class="sub-desc">child items are stretched horizontally to fill
     * the width of the container</div></li>
     * <li><b><code>stretchmax</code></b> : <div class="sub-desc">child items are stretched horizontally to
     * the size of the largest item.</div></li>
     * </ul></div>
     */
    public var align ;
    /**
     * @cfg {String} pack
     * Controls how the child items of the container are packed together. Acceptable configuration values
     * for this property are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>start</code></b> : <b>Default</b><div class="sub-desc">child items are packed together at
     * <b>top</b> side of container</div></li>
     * <li><b><code>center</code></b> : <div class="sub-desc">child items are packed together at
     * <b>mid-height</b> of container</div></li>
     * <li><b><code>end</code></b> : <div class="sub-desc">child items are packed together at <b>bottom</b>
     * side of container</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Number} flex
     * This configuation option is to be applied to <b>child <code>items</code></b> of the container managed
     * by this layout. Each child item with a <code>flex</code> property will be flexed <b>vertically</b>
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
