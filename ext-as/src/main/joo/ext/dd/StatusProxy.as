package ext.dd {
import ext.Element;
import ext.Layer;
import ext.config.statusproxy;

/**
 * A specialized drag proxy that supports a drop status icon, <a href="Ext.Layer.html">Ext.Layer</a> styles and auto-repair. This is the default drag proxy used by all Ext.dd components.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.statusproxy
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.dd.StatusProxy")]
public class StatusProxy {

  /**
   *
   *
   * @param config
   * @see ext.config.statusproxy
   */
  public function StatusProxy(config:statusproxy) {
    super();
  }

  /**
   The CSS class to apply to the status element when drop is allowed (defaults to "x-dd-drop-ok").
   */
  public native function get dropAllowed():String;

  /**
   The CSS class to apply to the status element when drop is not allowed (defaults to "x-dd-drop-nodrop").
   */
  public native function get dropNotAllowed():String;

  /**
   * Returns the underlying proxy <a href="Ext.Layer.html">Ext.Layer</a>
   *
   * @return el
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-getEl Sencha Docs Ext JS 3.4
   */
  public native function getEl():Layer;

  /**
   * Returns the ghost element
   *
   * @return el
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-getGhost Sencha Docs Ext JS 3.4
   */
  public native function getGhost():Element;

  /**
   * Hides the proxy
   *
   * @param clear True to reset the status and clear the ghost contents, false to preserve them
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-hide Sencha Docs Ext JS 3.4
   */
  public native function hide(clear:Boolean):void;

  /**
   * Causes the proxy to return to its position of origin via an animation. Should be called after an invalid drop operation by the item being dragged.
   *
   * @param xy The XY position of the element ([x, y])
   * @param callback The function to call after the repair is complete.
   * @param scope The scope (<code>this</code> reference) in which the callback function is executed. Defaults to the browser window.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-repair Sencha Docs Ext JS 3.4
   */
  public native function repair(xy:Array, callback:Function, scope:Object):void;

  /**
   * Resets the status indicator to the default dropNotAllowed value
   *
   * @param clearGhost True to also remove all content from the ghost, false to preserve it
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-reset Sencha Docs Ext JS 3.4
   */
  public native function reset(clearGhost:Boolean):void;

  /**
   * Updates the proxy's visual element to indicate the status of whether or not drop is allowed over the current target element.
   *
   * @param cssClass The css class for the new drop status indicator image
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-setStatus Sencha Docs Ext JS 3.4
   */
  public native function setStatus(cssClass:String):void;

  /**
   * Displays this proxy
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-show Sencha Docs Ext JS 3.4
   */
  public native function show():void;

  /**
   * Stops the repair animation if it's currently running
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-stop Sencha Docs Ext JS 3.4
   */
  public native function stop():void;

  /**
   * Force the Layer to sync its shadow and shim positions to the element
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-sync Sencha Docs Ext JS 3.4
   */
  public native function sync():void;

  /**
   * Updates the contents of the ghost element
   *
   * @param html The html that will replace the current innerHTML of the ghost element, or a DOM node to append as the child of the ghost element (in which case the innerHTML will be cleared first).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.StatusProxy-method-update Sencha Docs Ext JS 3.4
   */
  public native function update(html:*):void;

}
}
    