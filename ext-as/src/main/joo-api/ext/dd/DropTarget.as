package ext.dd {

import ext.IEventObject;

/**
 * A simple class that provides the basic implementation needed to make any element a drop target that can have draggable items dropped onto it. The drop has no effect until an implementation of notifyDrop is provided.
 * @see ext.config.droptarget
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropTarget.html#cls-Ext.dd.DropTarget Ext JS source
 */
public class DropTarget extends DDTarget {

  /**
   *
   *
   * @param el The container element
   * @param config
   * @see ext.config.droptarget
   */
  public function DropTarget(el:*, config:Object) {
    super(null, null, null);
  }

  /**
   A named drag drop group to which this object belongs. If a group is specified, then this object will only interact with other drag drop objects in the same group (defaults to undefined).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get ddGroup():String;

  /**
   The CSS class returned to the drag source when drop is allowed (defaults to "x-dd-drop-ok").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dropAllowed():String;

  /**
   The CSS class returned to the drag source when drop is not allowed (defaults to "x-dd-drop-nodrop").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dropNotAllowed():String;

  /**
   The CSS class applied to the drop target element while the drag source is over it (defaults to "").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get overClass():String;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop target that the dragged item has been dropped on it. This method has no default implementation and returns false, so you must provide an implementation that does something to process the drop event and returns true so that the drag source's repair action does not run.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return True if the drop was valid, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropTarget.html#method-Ext.dd.DropTarget-notifyDrop Ext JS source
   */
  public native function notifyDrop(source:DragSource, e:IEventObject, data:Object):Boolean;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop target that the source is now over the target. This default implementation adds the CSS class specified by overClass (if any) to the drop element and returns the dropAllowed config value. This method should be overridden if drop validation is required.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropTarget.html#method-Ext.dd.DropTarget-notifyEnter Ext JS source
   */
  public native function notifyEnter(source:DragSource, e:IEventObject, data:Object):String;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop target that the source has been dragged out of the target without dropping. This default implementation simply removes the CSS class specified by overClass (if any) from the drop element.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropTarget.html#method-Ext.dd.DropTarget-notifyOut Ext JS source
   */
  public native function notifyOut(source:DragSource, e:IEventObject, data:Object):void;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls continuously while it is being dragged over the target. This method will be called on every mouse movement while the drag source is over the drop target. This default implementation simply returns the dropAllowed config value.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropTarget.html#method-Ext.dd.DropTarget-notifyOver Ext JS source
   */
  public native function notifyOver(source:DragSource, e:IEventObject, data:Object):String;

}
}
    