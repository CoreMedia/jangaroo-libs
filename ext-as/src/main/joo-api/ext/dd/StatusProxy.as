package ext.dd {
import ext.Element;
import ext.Layer;

/**
 * A specialized drag proxy that supports a drop status icon, <b class='link'>ext.Layer</b> styles and auto-repair.  This is the
 * default drag proxy used by all Ext.dd components.
*/
public class StatusProxy {
  public var dh;
  public var shadow;

  /**
 * @constructor
 * @param config
 */
public function StatusProxy(config : Object) {
  super(config);
}
    /**
     * @cfg {String} dropAllowed
     * The CSS class to apply to the status element when drop is allowed (defaults to "x-dd-drop-ok").
     */
    public var dropAllowed  : String;
    /**
     * @cfg {String} dropNotAllowed
     * The CSS class to apply to the status element when drop is not allowed (defaults to "x-dd-drop-nodrop").
     */
    public var dropNotAllowed  : String;
    /**
     * Updates the proxy's visual element to indicate the status of whether or not drop is allowed
     * over the current target element.
     * @param cssClass The css class for the new drop status indicator image
     */
    public native function setStatus(cssClass : String) : void;
    /**
     * Resets the status indicator to the default dropNotAllowed value
     * @param clearGhost True to also remove all content from the ghost, false to preserve it
     */
    public native function reset(clearGhost : Boolean) : void;
    /**
     * Updates the contents of the ghost element
     * @param html The html that will replace the current innerHTML of the ghost element, or a
     * DOM node to append as the child of the ghost element (in which case the innerHTML will be cleared first).
     */
    public native function update(html : *) : void;
    /**
     * Returns the underlying proxy <b class='link'>ext.Layer</b>
     * @return el
    */
    public native function getEl() : Layer;
    /**
     * Returns the ghost element
     * @return el
     */
    public native function getGhost() : Element;
    /**
     * Hides the proxy
     * @param clear True to reset the status and clear the ghost contents, false to preserve them
     */
    public native function hide(clear : Boolean) : void;
    /**
     * Stops the repair animation if it's currently running
     */
    public native function stop() : void;
    /**
     * Displays this proxy
     */
    public native function show() : void;
    /**
     * Force the Layer to sync its shadow and shim positions to the element
     */
    public native function sync() : void;
    /**
     * Causes the proxy to return to its position of origin via an animation.  Should be called after an
     * invalid drop operation by the item being dragged.
     * @param xy The XY position of the element ([x, y])
     * @param callback The function to call after the repair is complete
     * @param scope The scope in which to execute the callback
     */
    public native function repair(xy : Array, callback : Function, scope : Object) : void;
    protected native function afterRepair() : void;
}}
