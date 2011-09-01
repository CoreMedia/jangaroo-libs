package ext.util {


/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Droppable</code>

 *       </li>

 *       <li>
 *           <code>draggable:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="drop")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Droppable</code>

 *       </li>

 *       <li>
 *           <code>draggable:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dropactivate")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Droppable</code>

 *       </li>

 *       <li>
 *           <code>draggable:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dropdeactivate")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Droppable</code>

 *       </li>

 *       <li>
 *           <code>draggable:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dropenter")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Droppable</code>

 *       </li>

 *       <li>
 *           <code>draggable:ext.Draggable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="dropleave")]


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.droppable
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#cls-Ext.util.Droppable Ext JS source
 */
public class Droppable extends Observable {

  /**
   *
   *
   * @see ext.config.droppable
   */
  public function Droppable() {
    super();
  }

  /**
   The CSS added to a Droppable when a Draggable in the same group is being dragged. Defaults to 'x-drop-active'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get activeCls():String;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   Draggable and Droppable objects can participate in a group which are capable of interacting. Defaults to 'base'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get group():String;

  /**
   The CSS class to add to the droppable when hovering over a valid drop. (Defaults to 'x-drop-hover')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hoverCls():String;

  /**
   The CSS class to add to the droppable when dragging a draggable that is not in the same group. Defaults to 'x-drop-invalid'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get invalidCls():String;

  /**
   Determines when a drop is considered 'valid' whether it simply need to intersect the region or if it needs to be contained within the region. Valid values are: 'intersects' or 'contains'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get validDropMode():String;

  /**
   *
   *
   * @param el String, HtmlElement or Ext.Element representing an element on the page.
   * @param config Configuration options for this class.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#method-Ext.util.Droppable-constructor Ext JS source
   */
  public native function constructor(el:*, config:Object):void;

  /**
   * Disable the Droppable target.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#method-Ext.util.Droppable-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enable the Droppable target. This is invoked immediately after constructing a Droppable if the disabled parameter is NOT set to true.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#method-Ext.util.Droppable-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Method to determine whether this Component is currently disabled.
   *
   * @return the disabled state of this Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#method-Ext.util.Droppable-isDisabled Ext JS source
   */
  public native function isDisabled():Boolean;

  /**
   * Method to determine whether this Droppable is currently monitoring drag operations of Draggables.
   *
   * @return the monitoring state of this Droppable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Droppable.html#method-Ext.util.Droppable-isMonitoring Ext JS source
   */
  public native function isMonitoring():Boolean;

}
}
    