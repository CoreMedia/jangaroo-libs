package ext.config {


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
 *
 * <p>This class serves as a
 * typed config object for constructor of class DropZone.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.dd.DropZone
 */
[ExtConfig(target="ext.dd.DropZone")]
public class dropzone extends droptarget {

  public function dropzone(config:Object = null) {

    super(config);
  }


}
}
    