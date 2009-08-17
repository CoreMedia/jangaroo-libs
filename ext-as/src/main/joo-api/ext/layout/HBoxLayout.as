package ext.layout {
/**
 * A layout that arranges items horizontally
 */
    /**
*/
public class HBoxLayout extends BoxLayout {
/**
     * @cfg {String} align
     * Controls how the child items of the container are aligned. Acceptable configuration values for this
     * property are:
     * <div class="mdetail-params"><ul>
     * <li><b><tt>top</tt></b> : <b>Default</b><div class="sub-desc">child items are aligned vertically
     * at the <b>left</b> side of the container</div></li>
     * <li><b><tt>middle</tt></b> : <div class="sub-desc">child items are aligned vertically at the
     * <b>mid-height</b> of the container</div></li>
     * <li><b><tt>stretch</tt></b> : <div class="sub-desc">child items are stretched vertically to fill
     * the height of the container</div></li>
     * <li><b><tt>stretchmax</tt></b> : <div class="sub-desc">child items are stretched vertically to
     * the size of the largest item.</div></li>
     */
    public var align  : Number;
    /**
     * @cfg {String} pack
     * Controls how the child items of the container are packed together. Acceptable configuration values
     * for this property are:
     * <div class="mdetail-params"><ul>
     * <li><b><tt>start</tt></b> : <b>Default</b><div class="sub-desc">child items are packed together at
     * <b>left</b> side of container</div></li>
     * <li><b><tt>center</tt></b> : <div class="sub-desc">child items are packed together at
     * <b>mid-width</b> of container</div></li>
     * <li><b><tt>end</tt></b> : <div class="sub-desc">child items are packed together at <b>right</b>
     * side of container</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Number} flex
     * This configuation option is to be applied to <b>child <tt>items</tt></b> of the container managed
     * by this layout. Each child item with a <tt>flex</tt> property will be flexed <b>horizontally</b>
     * according to each item's <b>relative</b> <tt>flex</tt> value compared to the sum of all items with
     * a <tt>flex</tt> value specified.  Any child items that have either a <tt>flex = 0</tt> or
     * <tt>flex = undefined</tt> will not be 'flexed' (the initial size will not be changed).
     */
    override protected native function onLayout(ct, target) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
