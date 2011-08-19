package ext.config {

import joo.JavaScriptObject;

/**
 * A custom drag proxy implementation specific to <a href="Ext.Panel.html">Ext.Panel</a>s. This class is primarily used internally for the Panel's drag drop implementation, and should never need to be created directly.
 *
 * <p>This class serves as a
 * typed config object for constructor of class PanelProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.dd.PanelProxy
 */
[ExtConfig(target="ext.dd.PanelProxy")]
public class panelproxy extends JavaScriptObject {

  public function panelproxy(config:Object = null) {

    super(config);
  }


  /**
   True to insert a placeholder proxy element while dragging the panel, false to drag with no proxy (defaults to true).
   */
  public native function get insertProxy():Boolean;

  /**
   * @private
   */
  public native function set insertProxy(value:Boolean):void;


}
}
    