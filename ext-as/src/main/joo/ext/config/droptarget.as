package ext.config {

import joo.JavaScriptObject;

/**
 * A simple class that provides the basic implementation needed to make any element a drop target that can have draggable items dropped onto it. The drop has no effect until an implementation of notifyDrop is provided.
 *
 * <p>This class serves as a
 * typed config object for constructor of class DropTarget.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.dd.DropTarget
 */
[ExtConfig(target="ext.dd.DropTarget")]
public class droptarget extends JavaScriptObject {

  public function droptarget(config:Object = null) {

    super(config);
  }


  /**
   A named drag drop group to which this object belongs. If a group is specified, then this object will only interact with other drag drop objects in the same group (defaults to undefined).
   */
  public native function get ddGroup():String;

  /**
   * @private
   */
  public native function set ddGroup(value:String):void;

  /**
   The CSS class returned to the drag source when drop is allowed (defaults to "x-dd-drop-ok").
   */
  public native function get dropAllowed():String;

  /**
   * @private
   */
  public native function set dropAllowed(value:String):void;

  /**
   The CSS class returned to the drag source when drop is not allowed (defaults to "x-dd-drop-nodrop").
   */
  public native function get dropNotAllowed():String;

  /**
   * @private
   */
  public native function set dropNotAllowed(value:String):void;

  /**
   The CSS class applied to the drop target element while the drag source is over it (defaults to "").
   */
  public native function get overClass():String;

  /**
   * @private
   */
  public native function set overClass(value:String):void;


}
}
    