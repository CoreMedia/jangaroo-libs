package ext {
/**
 * <p>Base class for any <b class='link' title='ext.Component'>Component</b> that is to be sized as a box, using width and height.</p>
 * <p>BoxComponent provides automatic box model adjustments for sizing and positioning and will work correctly
 * within the Component rendering model.</p>
 * <p>A BoxComponent may be created as a custom Component which encapsulates any HTML element, either a pre-existing
 * element, or one that is created to your specifications at render time. Usually, to participate in layouts,
 * a Component will need to be a <b>Box</b>Component in order to have its width and height managed.</p>
 * <p>To use a pre-existing element as a BoxComponent, configure it so that you preset the <b>el</b> property to the
 * element to reference:<pre><code>
var pageHeader = new ext.BoxComponent({
    el: 'my-header-div'
});</code></pre>
 * This may then be <b class='link' title='ext.Container#add'>added</b> to a <b class='link' title='ext.Container'>Container</b> as a child item.</p>
 * <p>To create a BoxComponent based around a HTML element to be created at render time, use the
 * <b class='link' title='ext.Component#autoEl'>autoEl</b> config option which takes the form of a
 * <b class='link' title='ext.DomHelper'>DomHelper</b> specification:<pre><code>
var myImage = new ext.BoxComponent({
    autoEl: {
        tag: 'img',
        src: '/images/my-image.jpg'
    }
});</code></pre></p>
*/
public class BoxComponent extends Component {
/**
 * @constructor
 * @param config The configuration options.
 * @xtype box
 */
public function BoxComponent(config : *) {
  super(config);
}
    /**
     * @cfg {String} region <p><b>Note</b>: this config is only used when this BoxComponent is rendered
     * by a Container which has been configured to use the <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b>
     * layout manager (e.g. specifying <tt>layout:'border'</tt>).</p><br>
     * <p>See <b class='link'>Ext.layout.BorderLayout</b> also.</p>
     */
    /**
     * @cfg {Object} margins <p><b>Note</b>: this config is only used when this BoxComponent is rendered
     * by a Container which has been configured to use the <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b>
     * or one of the two <b><b class='link' title='Ext.layout.BoxLayout'>BoxLayout</b> subclasses.</b></p>
     * <p>An object containing margins to apply to this BoxComponent in the
     * format:</p><pre><code>
{
    top: (top margin),
    right: (right margin),
    bottom: (bottom margin),
    left: (left margin)
}</code></pre>
     * <p>May also be a string containing space-separated, numeric margin values. The order of the
     * sides associated with each value matches the way CSS processes margin values:</p>
     * <p><div class="mdetail-params"><ul>
     * <li>If there is only one value, it applies to all sides.</li>
     * <li>If there are two values, the top and bottom borders are set to the first value and the
     * right and left are set to the second.</li>
     * <li>If there are three values, the top is set to the first value, the left and right are set
     * to the second, and the bottom is set to the third.</li>
     * <li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li>
     * </ul></div></p>
     * <p>Defaults to:</p><pre><code>
     * {top:0, right:0, bottom:0, left:0}
     * </code></pre>
     */
    /**
     * @cfg {Number} x
     * The local x (left) coordinate for this component if contained within a positioning container.
     */
    /**
     * @cfg {Number} y
     * The local y (top) coordinate for this component if contained within a positioning container.
     */
    /**
     * @cfg {Number} pageX
     * The page level x coordinate for this component if contained within a positioning container.
     */
    /**
     * @cfg {Number} pageY
     * The page level y coordinate for this component if contained within a positioning container.
     */
    /**
     * @cfg {Number} height
     * The height of this component in pixels (defaults to auto).
     * <b>Note</b> to express this dimension as a percentage or offset see <b class='link'>ext.Component#anchor</b>.
     */
    /**
     * @cfg {Number} width
     * The width of this component in pixels (defaults to auto).
     * <b>Note</b> to express this dimension as a percentage or offset see <b class='link'>ext.Component#anchor</b>.
     */
    /**
     * @cfg {Boolean} autoHeight
     * <p>True to use height:'auto', false to use fixed height (or allow it to be managed by its parent
     * Container's <b class='link' title='ext.Container#layout layout'>manager</b>. Defaults to false.</p>
     * <p><b>Note</b>: Although many components inherit this config option, not all will
     * function as expected with a height of 'auto'. Setting autoHeight:true means that the
     * browser will manage height based on the element's contents, and that Ext will not manage it at all.</p>
     * <p>If the <i>browser</i> is managing the height, be aware that resizes performed by the browser in response
     * to changes within the structure of the Component cannot be detected. Therefore changes to the height might
     * result in elements needing to be synchronized with the new height. Example:</p><pre><code>
var w = new ext.Window({
    title: 'Window',
    width: 600,
    autoHeight: true,
    items: {
        title: 'Collapse Me',
        height: 400,
        collapsible: true,
        border: false,
        listeners: {
            beforecollapse: function() {
                w.el.shadow.hide();
            },
            beforeexpand: function() {
                w.el.shadow.hide();
            },
            collapse: function() {
                w.syncShadow();
            },
            expand: function() {
                w.syncShadow();
            }
        }
    }
}).show();
</code></pre>
     */
    /**
     * @cfg {Boolean} autoWidth
     * <p>True to use width:'auto', false to use fixed width (or allow it to be managed by its parent
     * Container's <b class='link' title='ext.Container#layout layout'>manager</b>. Defaults to false.</p>
     * <p><b>Note</b>: Although many components  inherit this config option, not all will
     * function as expected with a width of 'auto'. Setting autoWidth:true means that the
     * browser will manage width based on the element's contents, and that Ext will not manage it at all.</p>
     * <p>If the <i>browser</i> is managing the width, be aware that resizes performed by the browser in response
     * to changes within the structure of the Component cannot be detected. Therefore changes to the width might
     * result in elements needing to be synchronized with the new width. For example, where the target element is:</p><pre><code>
&lt;div id='grid-container' style='margin-left:25%;width:50%'>&lt;/div>
</code></pre>
     * A Panel rendered into that target element must listen for browser window resize in order to relay its
      * child items when the browser changes its width:<pre><code>
var myPanel = new ext.Panel({
    renderTo: 'grid-container',
    monitorResize: true, // relay on browser resize
    title: 'Panel',
    height: 400,
    autoWidth: true,
    layout: 'hbox',
    layoutConfig: {
        align: 'stretch'
    },
    defaults: {
        flex: 1
    },
    items: [{
        title: 'Box 1',
    }, {
        title: 'Box 2'
    }, {
        title: 'Box 3'
    }],
});
</code></pre>
     */
    override protected native function initComponent() : void;
    public var boxReady  : Boolean;
    public var deferHeight;
    /**
     * Sets the width and height of this BoxComponent. This method fires the <b class='link'>#resize</b> event. This method can accept
     * either width and height as separate arguments, or you can pass a size object like <code>{width:10, height:20}</code>.
     * @param width The new width to set. This may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new width in the <b class='link' title='#getEl'>Element</b>'s <b class='link'>ext.Element#defaultUnit</b>s (by default, pixels).</li>
     * <li>A String used to set the CSS width style.</li>
     * <li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li>
     * <li><code>undefined</code> to leave the width unchanged.</li>
     * </ul></div>
     * @param height The new height to set (not required if a size object is passed as the first arg).
     * This may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new height in the <b class='link' title='#getEl'>Element</b>'s <b class='link'>ext.Element#defaultUnit</b>s (by default, pixels).</li>
     * <li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li>
     * <li><code>undefined</code> to leave the height unchanged.</li>
     * </ul></div>
     * @return this
     */
    public native function setSize(width : *, height : *) : BoxComponent;
    /**
     * Sets the width of the component.  This method fires the <b class='link'>#resize</b> event.
     * @param width The new width to setThis may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new width in the <b class='link' title='#getEl'>Element</b>'s <b class='link'>ext.Element#defaultUnit</b>s (by default, pixels).</li>
     * <li>A String used to set the CSS width style.</li>
     * </ul></div>
     * @return this
     */
    public native function setWidth(width : Number) : BoxComponent;
    /**
     * Sets the height of the component.  This method fires the <b class='link'>#resize</b> event.
     * @param height The new height to set. This may be one of:<div class="mdetail-params"><ul>
     * <li>A Number specifying the new height in the <b class='link' title='#getEl'>Element</b>'s <b class='link'>ext.Element#defaultUnit</b>s (by default, pixels).</li>
     * <li>A String used to set the CSS height style.</li>
     * <li><i>undefined</i> to leave the height unchanged.</li>
     * </ul></div>
     * @return this
     */
    public native function setHeight(height : Number) : BoxComponent;
    /**
     * Gets the current size of the component's underlying element.
     * @return An object containing the element's size {width: (element width), height: (element height)}
     */
    public native function getSize() : Object;
    /**
     * Gets the current width of the component's underlying element.
     * @return 
     */
    public native function getWidth() : Number;
    /**
     * Gets the current height of the component's underlying element.
     * @return 
     */
    public native function getHeight() : Number;
    /**
     * Gets the current size of the component's underlying element, including space taken by its margins.
     * @return An object containing the element's size {width: (element width + left/right margins), height: (element height + top/bottom margins)}
     */
    public native function getOuterSize() : Object;
    /**
     * Gets the current XY position of the component's underlying element.
     * @param local If true the element's left and top are returned instead of page XY (defaults to false)
     * @return The XY position of the element (e.g., [100, 200])
     */
    public native function getPosition(local : Boolean = undefined) : Array;
    /**
     * Gets the current box measurements of the component's underlying element.
     * @param local If true the element's left and top are returned instead of page XY (defaults to false)
     * @return box An object in the format {x, y, width, height}
     */
    public native function getBox(local : Boolean = undefined) : Object;
    /**
     * Sets the current box measurements of the component's underlying element.
     * @param box An object in the format {x, y, width, height}
     * @return this
     */
    public native function updateBox(box : Object) : BoxComponent;
    /**
     * <p>Returns the outermost Element of this Component which defines the Components overall size.</p>
     * <p><i>Usually</i> this will return the same Element as <code><b class='link'>#getEl</b></code>,
     * but in some cases, a Component may have some more wrapping Elements around its main
     * active Element.</p>
     * <p>An example is a ComboBox. It is encased in a <i>wrapping</i> Element which
     * contains both the <code>&lt;input></code> Element (which is what would be returned
     * by its <code><b class='link'>#getEl</b></code> method, <i>and</i> the trigger button Element.
     * This Element is returned as the <code>resizeEl</code>.
     */
    public native function getResizeEl() : void;
    public native function getPositionEl() : void;
    /**
     * Sets the left and top of the component.  To set the page XY position instead, use <b class='link'>#setPagePosition</b>.
     * This method fires the <b class='link'>#move</b> event.
     * @param left The new left
     * @param top The new top
     * @return this
     */
    public native function setPosition(left : Number, top : Number) : BoxComponent;
    /**
     * Sets the page XY position of the component.  To set the left and top instead, use <b class='link'>#setPosition</b>.
     * This method fires the <b class='link'>#move</b> event.
     * @param x The new x position
     * @param y The new y position
     * @return this
     */
    public native function setPagePosition(x : Number, y : Number) : BoxComponent;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    /**
     * Force the component's size to recalculate based on the underlying element's current height and width.
     * @return this
     */
    public native function syncSize() : BoxComponent;
    public native function onResize(adjWidth, adjHeight, rawWidth, rawHeight) : void;
    public native function onPosition(x, y) : void;
    protected native function adjustSize(w, h) : void;
    protected native function adjustPosition(x, y) : void;
/**
*/
}}
