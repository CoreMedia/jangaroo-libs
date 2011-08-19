package ext.config {

import joo.JavaScriptObject;

/**
 * A specialized drag proxy that supports a drop status icon, <a href="Ext.Layer.html">Ext.Layer</a> styles and auto-repair. This is the default drag proxy used by all Ext.dd components.
 *
 * <p>This class serves as a
 * typed config object for constructor of class StatusProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.dd.StatusProxy
 */
[ExtConfig(target="ext.dd.StatusProxy")]
public class statusproxy extends JavaScriptObject {

  public function statusproxy(config:Object = null) {

    super(config);
  }


  /**
   The CSS class to apply to the status element when drop is allowed (defaults to "x-dd-drop-ok").
   */
  public native function get dropAllowed():String;

  /**
   * @private
   */
  public native function set dropAllowed(value:String):void;

  /**
   The CSS class to apply to the status element when drop is not allowed (defaults to "x-dd-drop-nodrop").
   */
  public native function get dropNotAllowed():String;

  /**
   * @private
   */
  public native function set dropNotAllowed(value:String):void;


}
}
    