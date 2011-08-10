package ext.dd {

import ext.IEventObject;
import ext.config.dropzone;

/**
 * This class provides a container DD instance that allows dropping on multiple child target nodes.
 <p>By default, this class requires that child nodes accepting drop are registered with <a href="Ext.dd.Registry.html">Ext.dd.Registry</a>. However a simpler way to allow a DropZone to manage any number of target elements is to configure the DropZone with an implementation of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a> which interrogates the passed mouse event to see if it has taken place within an element, or class of elements. This is easily done by using the event's <a href="output/Ext.EventObject.html#Ext.EventObject-getTarget">getTarget</a> method to identify a node based on a <a href="Ext.DomQuery.html">Ext.DomQuery</a> selector.</p><p>Once the DropZone has detected through calling getTargetFromEvent, that the mouse is over a drop target, that target is passed as the first parameter to <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a>. You may configure the instance of DropZone with implementations of these methods to provide application-specific behaviour for these events to update both application state, and UI state.</p><p>For example to make a GridPanel a cooperating target with the example illustrated in <a href="Ext.dd.DragZone.html">DragZone</a>, the following technique might be used:</p><pre><code>myGridPanel.on('render', function() {
 myGridPanel.dropZone = new Ext.dd.DropZone(myGridPanel.getView().scroller, {

 //      If the mouse is over a grid row, return that node. This is
 //      provided as the "target" parameter in all "onNodeXXXX" node event handling functions
 getTargetFromEvent: function(e) {
 return e.getTarget(myGridPanel.getView().rowSelector);
 },

 //      On entry into a target node, highlight that node.
 onNodeEnter : function(target, dd, e, data){ 
 Ext.fly(target).addClass('my-row-highlight-class');
 },

 //      On exit from a target node, unhighlight that node.
 onNodeOut : function(target, dd, e, data){ 
 Ext.fly(target).removeClass('my-row-highlight-class');
 },

 //      While over a target node, return the default drop allowed class which
 //      places a "tick" icon into the drag proxy.
 onNodeOver : function(target, dd, e, data){ 
 return Ext.dd.DropZone.prototype.dropAllowed;
 },

 //      On node drop we can interrogate the target to find the underlying
 //      application object that is the real target of the dragged data.
 //      In this case, it is a Record in the GridPanel's Store.
 //      We can use the data set up by the DragZone's getDragData method to read
 //      any data we decided to attach in the DragZone's getDragData method.
 onNodeDrop : function(target, dd, e, data){
 var rowIndex = myGridPanel.getView().findRowIndex(target);
 var r = myGridPanel.getStore().getAt(rowIndex);
 Ext.Msg.alert('Drop gesture', 'Dropped Record id ' + data.draggedRecord.id +
 ' on Record id ' + r.id);
 return true;
 }
 });
 }
 </code></pre>See the <a href="Ext.dd.DragZone.html">DragZone</a> documentation for details about building a DragZone which cooperates with this DropZone.
 * @see ext.config.dropzone
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#cls-Ext.dd.DropZone Ext JS source
 */
public class DropZone extends DropTarget {

  /**
   *
   *
   * @param el The container element
   * @param config
   * @see ext.config.dropzone
   */
  public function DropZone(el:*, config:dropzone) {
    super(null, null);
  }

  /**
   * Returns a custom data object associated with the DOM node that is the target of the event. By default this looks up the event target in the <a href="Ext.dd.Registry.html">Ext.dd.Registry</a>, although you can override this method to provide your own custom lookup.
   *
   * @param e The event
   * @return data The custom data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-getTargetFromEvent Ext JS source
   */
  public native function getTargetFromEvent(e:IEventObject):Object;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop zone that the dragged item has been dropped on it. The drag zone will look up the target node based on the event passed in, and if there is a node registered for that event, it will delegate to <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeDrop">onNodeDrop</a> for node-specific handling, otherwise it will call <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onContainerDrop">onContainerDrop</a>.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return True if the drop was valid, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-notifyDrop Ext JS source
   */
  override public native function notifyDrop(source:DragSource, e:IEventObject, data:Object):Boolean;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop zone that the source is now over the zone. The default implementation returns this.dropNotAllowed and expects that only registered drop nodes can process drag drop operations, so if you need the drop zone itself to be able to process drops you should override this method and provide a custom implementation.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-notifyEnter Ext JS source
   */
  override public native function notifyEnter(source:DragSource, e:IEventObject, data:Object):String;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls once to notify this drop zone that the source has been dragged out of the zone without dropping. If the drag source is currently over a registered node, the notification will be delegated to <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a> for node-specific handling, otherwise it will be ignored.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-notifyOut Ext JS source
   */
  override public native function notifyOut(source:DragSource, e:IEventObject, data:Object):void;

  /**
   * The function a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> calls continuously while it is being dragged over the drop zone. This method will be called on every mouse movement while the drag source is over the drop zone. It will call <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOver">onNodeOver</a> while the drag source is over a registered node, and will also automatically delegate to the appropriate node-specific methods as necessary when the drag source enters and exits registered nodes (<a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeEnter">onNodeEnter</a>, <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onNodeOut">onNodeOut</a>). If the drag source is not currently over a registered node, it will call <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-onContainerOver">onContainerOver</a>.
   *
   * @param source The drag source that was dragged over this drop target
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-notifyOver Ext JS source
   */
  override public native function notifyOver(source:DragSource, e:IEventObject, data:Object):String;

  /**
   * Called when the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> has been dropped on it, but not on any of its registered drop nodes. The default implementation returns false, so it should be overridden to provide the appropriate processing of the drop event if you need the drop zone itself to be able to accept drops. It should return true when valid so that the drag source's repair action does not run.
   *
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return True if the drop was valid, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onContainerDrop Ext JS source
   */
  public native function onContainerDrop(source:DragSource, e:IEventObject, data:Object):Boolean;

  /**
   * Called while the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> is being dragged over it, but not over any of its registered drop nodes. The default implementation returns this.dropNotAllowed, so it should be overridden to provide the proper feedback if necessary.
   *
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onContainerOver Ext JS source
   */
  public native function onContainerOver(source:DragSource, e:IEventObject, data:Object):String;

  /**
   * Called when the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> has been dropped onto the drop node. The default implementation returns false, so it should be overridden to provide the appropriate processing of the drop event and return true so that the drag source's repair action does not run.
   *
   * @param nodeData The custom data associated with the drop node (this is the same value returned from <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a> for this node)
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return True if the drop was valid, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onNodeDrop Ext JS source
   */
  public native function onNodeDrop(nodeData:Object, source:DragSource, e:IEventObject, data:Object):Boolean;

  /**
   * Called when the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> has entered a drop node that has either been registered or detected by a configured implementation of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a>. This method has no default implementation and should be overridden to provide node-specific processing if necessary.
   *
   * @param nodeData The custom data associated with the drop node (this is the same value returned from <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a> for this node)
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onNodeEnter Ext JS source
   */
  public native function onNodeEnter(nodeData:Object, source:DragSource, e:IEventObject, data:Object):void;

  /**
   * Called when the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> has been dragged out of the drop node without dropping. This method has no default implementation and should be overridden to provide node-specific processing if necessary.
   *
   * @param nodeData The custom data associated with the drop node (this is the same value returned from <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a> for this node)
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onNodeOut Ext JS source
   */
  public native function onNodeOut(nodeData:Object, source:DragSource, e:IEventObject, data:Object):void;

  /**
   * Called while the DropZone determines that a <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> is over a drop node that has either been registered or detected by a configured implementation of <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a>. The default implementation returns this.dropNotAllowed, so it should be overridden to provide the proper feedback.
   *
   * @param nodeData The custom data associated with the drop node (this is the same value returned from <a href="output/Ext.dd.DropZone.html#Ext.dd.DropZone-getTargetFromEvent">getTargetFromEvent</a> for this node)
   * @param source The drag source that was dragged over this drop zone
   * @param e The event
   * @param data An object containing arbitrary data supplied by the drag source
   * @return status The CSS class that communicates the drop status back to the source so that the underlying <a href="Ext.dd.StatusProxy.html">Ext.dd.StatusProxy</a> can be updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DropZone.html#method-Ext.dd.DropZone-onNodeOver Ext JS source
   */
  public native function onNodeOver(nodeData:Object, source:DragSource, e:IEventObject, data:Object):String;

}
}
    