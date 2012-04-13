package ext.dd {
import ext.IEventObject;
import ext.config.dragsource;

/**
 * A simple class that provides the basic implementation needed to make any element draggable.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.dragsource
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource Sencha Docs Ext JS 3.4
 */
public class DragSource extends DDProxy {

  /**
   *
   *
   * @param el The container element
   * @param config
   * @see ext.config.dragsource
   */
  public function DragSource(el:*, config:dragsource) {
    super(null, null, null);
  }

  /**
   A named drag drop group to which this object belongs. If a group is specified, then this object will only interact with other drag drop objects in the same group (defaults to undefined).
   */
  public native function get ddGroup():String;

  /**
   The CSS class returned to the drag source when drop is allowed (defaults to "x-dd-drop-ok").
   */
  public native function get dropAllowed():String;

  /**
   The CSS class returned to the drag source when drop is not allowed (defaults to "x-dd-drop-nodrop").
   */
  public native function get dropNotAllowed():String;

  /**
   * An empty function by default, but provided so that you can perform a custom action after a valid drag drop has occurred by providing an implementation.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dropped element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-afterDragDrop Sencha Docs Ext JS 3.4
   */
  public native function afterDragDrop(target:DragDrop, e:IEventObject, id:String):void;

  /**
   * An empty function by default, but provided so that you can perform a custom action when the dragged item enters the drop target by providing an implementation.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-afterDragEnter Sencha Docs Ext JS 3.4
   */
  public native function afterDragEnter(target:DragDrop, e:IEventObject, id:String):void;

  /**
   * An empty function by default, but provided so that you can perform a custom action after the dragged item is dragged out of the target without dropping.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-afterDragOut Sencha Docs Ext JS 3.4
   */
  public native function afterDragOut(target:DragDrop, e:IEventObject, id:String):void;

  /**
   * An empty function by default, but provided so that you can perform a custom action while the dragged item is over the drop target by providing an implementation.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-afterDragOver Sencha Docs Ext JS 3.4
   */
  public native function afterDragOver(target:DragDrop, e:IEventObject, id:String):void;

  /**
   * An empty function by default, but provided so that you can perform a custom action after an invalid drop has occurred by providing an implementation.
   *
   * @param e The event object
   * @param id The id of the dropped element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-afterInvalidDrop Sencha Docs Ext JS 3.4
   */
  public native function afterInvalidDrop(e:IEventObject, id:String):void;

  /**
   * An empty function by default, but provided so that you can perform a custom action before the dragged item is dropped onto the target and optionally cancel the onDragDrop.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @return isValid True if the drag drop event is valid, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-beforeDragDrop Sencha Docs Ext JS 3.4
   */
  public native function beforeDragDrop(target:DragDrop, e:IEventObject, id:String):Boolean;

  /**
   * An empty function by default, but provided so that you can perform a custom action before the dragged item enters the drop target and optionally cancel the onDragEnter.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @return isValid True if the drag event is valid, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-beforeDragEnter Sencha Docs Ext JS 3.4
   */
  public native function beforeDragEnter(target:DragDrop, e:IEventObject, id:String):Boolean;

  /**
   * An empty function by default, but provided so that you can perform a custom action before the dragged item is dragged out of the target without dropping, and optionally cancel the onDragOut.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @return isValid True if the drag event is valid, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-beforeDragOut Sencha Docs Ext JS 3.4
   */
  public native function beforeDragOut(target:DragDrop, e:IEventObject, id:String):Boolean;

  /**
   * An empty function by default, but provided so that you can perform a custom action while the dragged item is over the drop target and optionally cancel the onDragOver.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @return isValid True if the drag event is valid, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-beforeDragOver Sencha Docs Ext JS 3.4
   */
  public native function beforeDragOver(target:DragDrop, e:IEventObject, id:String):Boolean;

  /**
   * An empty function by default, but provided so that you can perform a custom action after an invalid drop has occurred.
   *
   * @param target The drop target
   * @param e The event object
   * @param id The id of the dragged element
   * @return isValid True if the invalid drop should proceed, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-beforeInvalidDrop Sencha Docs Ext JS 3.4
   */
  public native function beforeInvalidDrop(target:DragDrop, e:IEventObject, id:String):Boolean;

  /**
   * Returns the data object associated with this drag source
   *
   * @param e The mouse down event
   * @return data An object containing arbitrary data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-getDragData Sencha Docs Ext JS 3.4
   */
  public native function getDragData(e:IEventObject):Object;

  /**
   * Returns the drag source's underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a>
   *
   * @return proxy The StatusProxy
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-getProxy Sencha Docs Ext JS 3.4
   */
  public native function getProxy():StatusProxy;

  /**
   * Hides the drag source's <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-hideProxy Sencha Docs Ext JS 3.4
   */
  public native function hideProxy():void;

  /**
   * An empty function by default, but provided so that you can perform a custom action before the initial drag event begins and optionally cancel it.
   *
   * @param data An object containing arbitrary data to be shared with drop targets
   * @param e The event object
   * @return isValid True if the drag event is valid, else false to cancel
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-onBeforeDrag Sencha Docs Ext JS 3.4
   */
  public native function onBeforeDrag(data:Object, e:IEventObject):Boolean;

  /**
   * An empty function by default, but provided so that you can perform a custom action once the initial drag event has begun. The drag cannot be canceled from this function.
   *
   * @param x The x position of the click on the dragged object
   * @param y The y position of the click on the dragged object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragSource-method-onStartDrag Sencha Docs Ext JS 3.4
   */
  public native function onStartDrag(x:Number, y:Number):void;

}
}
    