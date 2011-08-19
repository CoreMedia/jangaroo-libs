package ext.dd {

import ext.Element;

import js.HTMLElement;

/**
 * A custom drag proxy implementation specific to <a href="Ext.Panel.html">Ext.Panel</a>s. This class is primarily used internally for the Panel's drag drop implementation, and should never need to be created directly.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.panelproxy
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#cls-Ext.dd.PanelProxy Ext JS source
 */
public class PanelProxy {

  /**
   *
   *
   * @param panel <a href="Ext.Panel.html">Ext.Panel</a> to proxy for
   * @param config options
   * @see ext.config.panelproxy
   */
  public function PanelProxy(panel:*, config:*) {
    super();
  }

  /**
   True to insert a placeholder proxy element while dragging the panel, false to drag with no proxy (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get insertProxy():Boolean;

  /**
   * Gets the proxy's element
   *
   * @return The proxy's element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-getEl Ext JS source
   */
  public native function getEl():Element;

  /**
   * Gets the proxy's ghost element
   *
   * @return The proxy's ghost element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-getGhost Ext JS source
   */
  public native function getGhost():Element;

  /**
   * Gets the proxy's element
   *
   * @return The proxy's element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-getProxy Ext JS source
   */
  public native function getProxy():Element;

  /**
   * Hides the proxy
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-hide Ext JS source
   */
  public native function hide():void;

  /**
   * Moves the proxy to a different position in the DOM. This is typically called while dragging the Panel to keep the proxy sync'd to the Panel's location.
   *
   * @param parentNode The proxy's parent DOM node
   * @param before The sibling node before which the proxy should be inserted (defaults to the parent's last child if not specified)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-moveProxy Ext JS source
   */
  public native function moveProxy(parentNode:HTMLElement, before:HTMLElement = null):void;

  /**
   * Shows the proxy
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PanelDD.html#method-Ext.dd.PanelProxy-show Ext JS source
   */
  public native function show():void;

}
}
    