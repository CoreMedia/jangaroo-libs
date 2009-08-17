package ext.dd {
import ext.Element;
import ext.Panel;

import js.HTMLElement;

/**
 * A custom drag proxy implementation specific to <b class='link'>ext.Panel</b>s. This class is primarily used internally
 * for the Panel's drag drop implementation, and should never need to be created directly.
*/
public class PanelProxy {
/**
 * @constructor
 * @param panel The <b class='link'>ext.Panel</b> to proxy for
 * @param config Configuration options
 */
public function PanelProxy(panel : Panel, config : Object = null) {
  super();
  panel++;
  config++;
}
    /**
     * @cfg {Boolean} insertProxy True to insert a placeholder proxy element while dragging the panel,
     * false to drag with no proxy (defaults to true).
     */
    public var insertProxy  : Boolean;
    public var setStatus ;
    public var reset ;
    public var update ;
    public var stop ;
    public var sync;
    /**
     * Gets the proxy's element
     * @return The proxy's element
     */
    public native function getEl() : Element;
    /**
     * Gets the proxy's ghost element
     * @return The proxy's ghost element
     */
    public native function getGhost() : Element;
    /**
     * Gets the proxy's element
     * @return The proxy's element
     */
    public native function getProxy() : Element;
    /**
     * Hides the proxy
     */
    public native function hide() : void;
    /**
     * Shows the proxy
     */
    public native function show() : void;
    protected native function repair(xy, callback, scope) : void;
    /**
     * Moves the proxy to a different position in the DOM.  This is typically called while dragging the Panel
     * to keep the proxy sync'd to the Panel's location.
     * @param parentNode The proxy's parent DOM node
     * @param before The sibling node before which the proxy should be inserted (defaults
     * to the parent's last child if not specified)
     */
    public native function moveProxy(parentNode : HTMLElement, before : HTMLElement = undefined) : void;

}}
