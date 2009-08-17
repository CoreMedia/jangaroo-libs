package ext {
import ext.util.Observable;

/**
 * Creates draggable splitter bar functionality from two elements (element to be dragged and element to be resized).
 * <br><br>
 * Usage:
 * <pre><code>
var split = new ext.SplitBar("elementToDrag", "elementToSize",
                   ext.SplitBar.HORIZONTAL, ext.SplitBar.LEFT);
split.setAdapter(new Ext.splitbar.AbsoluteLayoutAdapter("container"));
split.minSize = 100;
split.maxSize = 600;
split.animate = true;
split.on('moved', splitterMoved);
</code></pre>
*/
public class SplitBar extends Observable {
/**
 * @constructor
 * Create a new SplitBar
 * @param dragElement The element to be dragged and act as the SplitBar.
 * @param resizingElement The element to be resized based on where the SplitBar element is dragged
 * @param orientation Either ext.SplitBar.HORIZONTAL or ext.SplitBar.VERTICAL. (Defaults to HORIZONTAL)
 * @param placement Either ext.SplitBar.LEFT or ext.SplitBar.RIGHT for horizontal or  
                        ext.SplitBar.TOP or ext.SplitBar.BOTTOM for vertical. (By default, this is determined automatically by the initial
                        position of the SplitBar).
 */
public function SplitBar(dragElement : *, resizingElement : *, orientation : Number = undefined, placement : Number = undefined) {
  super();
  dragElement++;
  resizingElement++;
  orientation++;
  placement++;
}

    /**
     * @private
     * The orientation of the split. Either ext.SplitBar.HORIZONTAL or ext.SplitBar.VERTICAL. (Defaults to HORIZONTAL)
     * Note: If this is changed after creating the SplitBar, the placement property must be manually updated
     */
    /**
     * The increment, in pixels by which to move this SplitBar. When <i>undefined</i>, the SplitBar moves smoothly.
     * @property tickSize
     */
    /**
     * The minimum size of the resizing element. (Defaults to 0)
     */
    /**
     * The maximum size of the resizing element. (Defaults to 2000)
     */
    /**
     * Whether to animate the transition to the new size
     */
    /**
     * Whether to create a transparent shim that overlays the page when dragging, enables dragging across iframes.
     */
    /**
     * @private The adapter to use to positon and resize elements
     */
    public native function onStartProxyDrag(e) : void;
    /** 
     * @private Called after the drag operation by the DDProxy
     */
    public native function onEndProxyDrag(e) : void;
    /**
     * Get the adapter this SplitBar uses
     * @return adapter object
     */
    public native function getAdapter() : Object;
    /**
     * Set the adapter this SplitBar uses
     * @param adapter A SplitBar adapter object
     */
    public native function setAdapter(adapter : Object) : void;
    /**
     * Gets the minimum size for the resizing element
     * @return The minimum size
     */
    public native function getMinimumSize() : Number;
    /**
     * Sets the minimum size for the resizing element
     * @param minSize The minimum size
     */
    public native function setMinimumSize(minSize : Number) : void;
    /**
     * Gets the maximum size for the resizing element
     * @return The maximum size
     */
    public native function getMaximumSize() : Number;
    /**
     * Sets the maximum size for the resizing element
     * @param maxSize The maximum size
     */
    public native function setMaximumSize(maxSize : Number) : void;
    /**
     * Sets the initialize size for the resizing element
     * @param size The initial size
     */
    public native function setCurrentSize(size : Number) : void;
    /**
     * Destroy this splitbar. 
     * @param removeEl True to remove the element
     */
    public native function destroy(removeEl : Boolean) : void;
/**
 * @private static Create our own proxy element element. So it will be the same same size on all browsers, we won't use borders. Instead we use a background color.
 */
public native function createProxy (dir) : void;
/** 
*/
}}
