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
 * @see ext.config.dragtracker
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#cls-Ext.dd.DragTracker Ext JS source
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get active():Boolean;

  /**
   Defaults to <tt>false</tt>. Specify <tt>true</tt> to defer trigger start by 1000 ms. Specify a Number for the number of milliseconds to defer trigger start.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoStart():*;

  /**
   Number of pixels the drag target must be moved before dragging is considered to have started. Defaults to <tt>5</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tolerance():Number;

  /**
   * Returns the drag target
   *
   * @return The element currently being tracked
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#method-Ext.dd.DragTracker-getDragTarget Ext JS source
   */
  public native function getDragTarget():Element;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when the user first clicks and holds the mouse button down. Return false to disallow the drag
   *
   * @param e The event object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#method-Ext.dd.DragTracker-onBeforeStart Ext JS source
   */
  public native function onBeforeStart(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called whenever a drag has been detected.
   *
   * @param e The event object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#method-Ext.dd.DragTracker-onDrag Ext JS source
   */
  public native function onDrag(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when a drag operation has been completed (e.g. the user clicked and held the mouse down, dragged the element and then released the mouse button)
   *
   * @param e The event object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#method-Ext.dd.DragTracker-onEnd Ext JS source
   */
  public native function onEnd(e:IEventObject):void;

  /**
   * Template method which should be overridden by each DragTracker instance. Called when a drag operation starts (e.g. the user has moved the tracked element beyond the specified tolerance)
   *
   * @param e The event object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DragTracker.html#method-Ext.dd.DragTracker-onStart Ext JS source
   */
  public native function onStart(e:IEventObject):void;

}
}
    