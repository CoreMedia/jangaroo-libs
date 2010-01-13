package ext {

import ext.util.Observable;

/**
 * <p>Applies drag handles to an element to make it resizable. The drag handles are inserted into the element 
 * and positioned absolute. Some elements, such as a textarea or image, don't support this. To overcome that, you can wrap
 * the textarea in a div and set 'resizeChild' to true (or to the id of the element), <b>or</b> set wrap:true in your config and
 * the element will be wrapped for you automatically.</p>
 * <p>Here is the list of valid resize handles:</p>
 * <pre>
Value   Description
------  -------------------
 'n'     north
 's'     south
 'e'     east
 'w'     west
 'nw'    northwest
 'sw'    southwest
 'se'    southeast
 'ne'    northeast
 'all'   all
</pre>
 * <p>Here's an example showing the creation of a typical Resizable:</p>
 * <pre><code>
var resizer = new ext.Resizable('element-id', {
    handles&#58; 'all',
    minWidth&#58; 200,
    minHeight&#58; 100,
    maxWidth&#58; 500,
    maxHeight&#58; 400,
    pinned&#58; true
});
resizer.on('resize', myHandler);
</code></pre>
 * <p>To hide a particular handle, set its display to none in CSS, or through script:<br>
 * resizer.east.setDisplayed(false);</p>
*/
public class Resizable extends Observable {
/**
 * @constructor
 * Create a new resizable component
 * @param el The id or element to resize
 * @param config configuration options
  */
public function Resizable(el : *, config : Object) {
  super();
  el++;
  config++;
}
    /**
     * The proxy Element that is resized in place of the real Element during the resize operation.
     * This may be queried using <b class='link'>ext.Element#getBox</b> to provide the new area to resize to.
     * Read only.
     * @property proxy
     */
    /**
     * @cfg {Array/String} adjustments String 'auto' or an array [width, height] with values to be <b>added</b> to the
     * resize operation's new size (defaults to <code>[0, 0]</code>)
     */
    public var adjustments  : *;
    /**
     * @cfg {Boolean} animate True to animate the resize (not compatible with dynamic sizing, defaults to false)
     */
    public var animate  : Boolean;
    /**
     * @cfg {Mixed} constrainTo Constrain the resize to a particular element
     */
    /**
     * @cfg {Boolean} disableTrackOver True to disable mouse tracking. This is only applied at config time. (defaults to false)
     */
    public var disableTrackOver  : Boolean;
    /**
     * @cfg {Boolean} draggable Convenience to initialize drag drop (defaults to false)
     */
    public var draggable : Boolean;
    /**
     * @cfg {Number} duration Animation duration if animate = true (defaults to 0.35)
     */
    public var duration  : Number;
    /**
     * @cfg {Boolean} dynamic True to resize the element while dragging instead of using a proxy (defaults to false)
     */
    public var dynamic  : Boolean;
    /**
     * @cfg {String} easing Animation easing if animate = true (defaults to <code>'easingOutStrong'</code>)
     */
    public var easing  : String;
    /**
     * @cfg {Boolean} enabled False to disable resizing (defaults to true)
     */
    public var enabled  : Boolean;
    /**
     * @property enabled Writable. False if resizing is disabled.
     */
    /**
     * @cfg {String} handles String consisting of the resize handles to display (defaults to undefined).
     * Specify either <code>'all'</code> or any of <code>'n s e w ne nw se sw'</code>.
     */
    public var handles  : String;
    /**
     * @cfg {Boolean} multiDirectional <b>Deprecated</b>.  Deprecated style of adding multi-direction resize handles.
     */
    public var multiDirectional  : Boolean;
    /**
     * @cfg {Number} height The height of the element in pixels (defaults to null)
     */
    public var height  : Number;
    /**
     * @cfg {Number} width The width of the element in pixels (defaults to null)
     */
    public var width  : Number;
    /**
     * @cfg {Number} heightIncrement The increment to snap the height resize in pixels
     * (only applies if <code><b class='link' title='#dynamic'>dynamic</b>==true</code>). Defaults to <code>0</code>.
     */
    public var heightIncrement  : Number;
    /**
     * @cfg {Number} widthIncrement The increment to snap the width resize in pixels
     * (only applies if <code><b class='link' title='#dynamic'>dynamic</b>==true</code>). Defaults to <code>0</code>.
     */
    public var widthIncrement  : Number;
    /**
     * @cfg {Number} minHeight The minimum height for the element (defaults to 5)
     */
    public var minHeight  : Number;
    /**
     * @cfg {Number} minWidth The minimum width for the element (defaults to 5)
     */
    public var minWidth  : Number;
    /**
     * @cfg {Number} maxHeight The maximum height for the element (defaults to 10000)
     */
    public var maxHeight  : Number;
    /**
     * @cfg {Number} maxWidth The maximum width for the element (defaults to 10000)
     */
    public var maxWidth  : Number;
    /**
     * @cfg {Number} minX The minimum x for the element (defaults to 0)
     */
    public var minX : Number;
    /**
     * @cfg {Number} minY The minimum x for the element (defaults to 0)
     */
    public var minY : Number;
    /**
     * @cfg {Boolean} pinned True to ensure that the resize handles are always visible, false to display them only when the
     * user mouses over the resizable borders. This is only applied at config time. (defaults to false)
     */
    public var pinned  : Boolean;
    /**
     * @cfg {Boolean} preserveRatio True to preserve the original ratio between height
     * and width during resize (defaults to false)
     */
    public var preserveRatio  : Boolean;
    /**
     * @cfg {Boolean/String/Element} resizeChild True to resize the first child, or id/element to resize (defaults to false) 
     */ 
    public var resizeChild  : *;
    /**
     * @cfg {Boolean} transparent True for transparent handles. This is only applied at config time. (defaults to false)
     */
    public var transparent : Boolean;
    /**
     * @cfg {ext.lib.Region} resizeRegion Constrain the resize to a particular region
     */
    /**
     * @cfg {Boolean} wrap True to wrap an element with a div if needed (required for textareas and images, defaults to false)
     * in favor of the handles config option (defaults to false)
     */
    /**
     * Perform a manual resize and fires the 'resize' event.
     * @param width
     * @param height
     */
    public native function resizeTo(width : Number, height : Number) : void;
    protected native function startSizing(e, handle) : void;
    protected native function onMouseUp(e) : void;
    protected native function updateChildSize() : void;
    protected native function snap(value, inc, min) : void;
    /**
     * <p>Performs resizing of the associated Element. This method is called internally by this
     * class, and should not be called by user code.</p>
     * <p>If a Resizable is being used to resize an Element which encapsulates a more complex UI
     * component such as a Panel, this method may be overridden by specifying an implementation
     * as a config option to provide appropriate behaviour at the end of the resize operation on
     * mouseup, for example resizing the Panel, and relaying the Panel's content.</p>
     * <p>The new area to be resized to is available by examining the state of the <b class='link' title='#proxy'>proxy</b>
     * Element. Example:
<pre><code>
new ext.Panel({
    title&#58; 'Resize me',
    x&#58; 100,
    y&#58; 100,
    renderTo&#58; Ext.getBody(),
    floating&#58; true,
    frame&#58; true,
    width&#58; 400,
    height&#58; 200,
    listeners&#58; {
        render&#58; function(p) {
            new ext.Resizable(p.getEl(), {
                handles&#58; 'all',
                pinned&#58; true,
                transparent&#58; true,
                resizeElement&#58; function() {
                    var box = this.proxy.getBox();
                    p.updateBox(box);
                    if (p.layout) {
                        p.doLayout();
                    }
                    return box;
                }
           });
       }
    }
}).show();
</code></pre>
     */
    public native function resizeElement() : void;
    protected native function constrain(v, diff, m, mx) : void;
    protected native function onMouseMove(e) : void;
    protected native function handleOver() : void;
    protected native function handleOut() : void;
    /**
     * Returns the element this component is bound to.
     * @return 
     */
    public native function getEl() : Element;
    /**
     * Returns the resizeChild element (or null).
     * @return 
     */
    public native function getResizeChild() : Element;
    /**
     * Destroys this resizable. If the element was wrapped and 
     * removeEl is not true then the element remains.
     * @param removeEl true to remove the element from the DOM
     */
    public native function destroy(removeEl : Boolean = undefined) : void;
    public native function syncHandleHeight() : void;
    protected var n : Boolean;
protected native function Handle (rz, pos, disableTrackOver, transparent) : void;
    protected native function afterResize(rz) : void;
    protected native function onMouseDown(e) : void;
    protected native function onMouseOver(e) : void;
    protected native function onMouseOut(e) : void;
}}
