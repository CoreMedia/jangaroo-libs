package ext.layout {

/**
 * <p>Base Class for HBoxLayout and VBoxLayout Classes. Generally it should not need to be used directly.</p>
 */
    public class BoxLayout extends ContainerLayout {
/**
     * @cfg {Object} defaultMargins
     * <p>If the individual contained items do not have a <code>margins</code>
     * property specified, the default margins from this property will be
     * applied to each item.</p>
     * <br><p>This property may be specified as an object containing margins
     * to apply in the format:</p><pre><code>
{
    top: (top margin),
    right: (right margin),
    bottom: (bottom margin),
    left: (left margin)
}</code></pre>
     * <p>This property may also be specified as a string containing
     * space-separated, numeric margin values. The order of the sides associated
     * with each value matches the way CSS processes margin values:</p>
     * <div class="mdetail-params"><ul>
     * <li>If there is only one value, it applies to all sides.</li>
     * <li>If there are two values, the top and bottom borders are set to the
     * first value and the right and left are set to the second.</li>
     * <li>If there are three values, the top is set to the first value, the left
     * and right are set to the second, and the bottom is set to the third.</li>
     * <li>If there are four values, they apply to the top, right, bottom, and
     * left, respectively.</li>
     * </ul></div>
     * <p>Defaults to:</p><pre><code>
     * {top:0, right:0, bottom:0, left:0}
     * </code></pre>
     */
    public var defaultMargins ;
    /**
     * @cfg {String} padding
     * Defaults to <code>'0'</code>. Sets the padding to be applied to all child items managed by this
     * container's layout. 
     */
    public var padding  : String;
    public var pack ;
    public var scrollOffset ;
    public var extraCls ;
    public var ctCls ;
    public var innerCls ;
    override protected native function isValidParent(c, target) : void;
    override protected native function onLayout(ct, target) : void;
    override protected native function renderItem(c, position, target) : void;
    public native function getTargetSize(target) : void;
    public native function getItems(ct) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
