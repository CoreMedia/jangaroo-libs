package ext.dd {
import ext.Element;
import ext.IEventObject;
import ext.util.Observable;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="drag")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="dragend")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="dragstart")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="mousedown")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="mousemove")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Object</code>

 *       </li>

 *       <li>
 *           <code>e:Object</code>
 event object
 *       </li>

 * </ul>
 */
[Event(name="mouseup")]


/**
 * A DragTracker listens for drag events on an Element and fires events at the start and end of the drag, as well as during the drag. This is useful for components such as <a href="Ext.slider.MultiSlider.html">Ext.slider.MultiSlider</a>, where there is an element that can be dragged around to change the Slider's value. DragTracker provides a series of template methods that should be overridden to provide functionality in response to detected drag operations. These are onBeforeStart, onStart, onDrag and onEnd. See <a href="Ext.slider.MultiSlider.html">Ext.slider.MultiSlider</a>'s initEvents function for an example implementation.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.dragtracker
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker Sencha Docs Ext JS 3.4
 */
public class DragTracker extends Observable {

  /**
   *
   *
   * @see ext.config.dragtracker
   */
  public function DragTracker() {
    super();
  }

  /**
   Defaults to <tt>false</tt>.
   */
  public native function get active():Boolean;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to defer trigger start by 1000 ms. Specify a Number for the number of milliseconds to defer trigger start.
   */
  public native function get autoStart():*;

  /**
   Number of pixels the drag target must be moved before dragging is considered to have started. Defaults to <tt>5</tt>.
   */
  public native function get tolerance():Number;

  /**
   * Returns the drag target
   *
   * @return The element currently being tracked
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker-method-getDragTarget Sencha Docs Ext JS 3.4
   */
  public native function getDragTarget():Element;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when the user first clicks and holds the mouse button down. Return false to disallow the drag
   *
   * @param e The event object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker-method-onBeforeStart Sencha Docs Ext JS 3.4
   */
  public native function onBeforeStart(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called whenever a drag has been detected.
   *
   * @param e The event object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker-method-onDrag Sencha Docs Ext JS 3.4
   */
  public native function onDrag(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when a drag operation has been completed (e.g. the user clicked and held the mouse down, dragged the element and then released the mouse button)
   *
   * @param e The event object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker-method-onEnd Sencha Docs Ext JS 3.4
   */
  public native function onEnd(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when a drag operation starts (e.g. the user has moved the tracked element beyond the specified tolerance)
   *
   * @param e The event object
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragTracker-method-onStart Sencha Docs Ext JS 3.4
   */
  public native function onStart(e:IEventObject):void;

}
}
    