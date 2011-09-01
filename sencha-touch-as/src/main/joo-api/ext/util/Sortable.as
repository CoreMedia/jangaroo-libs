package ext.util {

import ext.config.sortable;
import ext.form.Number;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Sortable</code>

 *       </li>

 *       <li>
 *           <code>el:ext.Element</code>
 The Element being dragged.
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the element after the sort change.
 *       </li>

 * </ul>
 */
[Event(name="sortchange")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Sortable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="sortend")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Sortable</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="sortstart")]


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.sortable
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#cls-Ext.util.Sortable Ext JS source
 */
public class Sortable extends Observable {

  /**
   *
   *
   * @param el
   * @param config
   * @see ext.config.sortable
   */
  public function Sortable(el:*, config:sortable) {
    super();
  }

  /**
   Read-only property that indicates whether a Sortable is currently sorting.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#prop-Ext.util.Sortable-sorting Ext JS source
   */
  public native function get sorting():Boolean;

  /**
   * @private
   */
  public native function set sorting(value:Boolean):void;

  /**
   Read-only value representing whether the Draggable can be moved vertically. This is automatically calculated by Draggable by the direction configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#prop-Ext.util.Sortable-vertical Ext JS source
   */
  public native function get vertical():Boolean;

  /**
   * @private
   */
  public native function set vertical(value:Boolean):void;

  /**
   Read-only value representing whether the Draggable can be moved horizontally. This is automatically calculated by Draggable by the direction configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#prop-Ext.util.Sortable-vertical Ext JS source
   */
  public native function get vertical():Boolean;

  /**
   * @private
   */
  public native function set vertical(value:Boolean):void;

  /**
   A simple CSS selector that represents elements within the draggable that should NOT initiate a drag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cancelSelector():String;

  /**
   An Element to constrain the Sortable dragging to. Defaults to <tt>window</tt>. If <tt>true</tt> is specified, the dragging will be constrained to the element of the sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():*;

  /**
   How many milliseconds a user must hold the draggable before starting a drag operation. Defaults to 0 or immediate.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get delay():ext.form.Number;

  /**
   Possible values: 'vertical', 'horizontal' Defaults to 'vertical'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   Passing in true will disable this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   Draggable and Droppable objects can participate in a group which are capable of interacting. Defaults to 'base'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get group():String;

  /**
   A simple CSS selector to indicate what is the handle to drag the Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get handleSelector():String;

  /**
   A simple CSS selector that represents individual items within the Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemSelector():String;

  /**
   This should NOT be changed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get revert():Boolean;

  /**
   * Disables sorting for this Sortable.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables sorting for this Sortable. This method is invoked immediately after construction of a Sortable unless the disabled configuration is set to true.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Method to determine whether this Sortable is currently disabled.
   *
   * @return the disabled state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-isDisabled Ext JS source
   */
  public native function isDisabled():Boolean;

  /**
   * Method to determine whether this Sortable is currently sorting.
   *
   * @return the sorting state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-isHorizontal Ext JS source
   */
  public native function isHorizontal():Boolean;

  /**
   * Method to determine whether this Sortable is currently sorting.
   *
   * @return the sorting state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-isSorting Ext JS source
   */
  public native function isSorting():Boolean;

  /**
   * Method to determine whether this Sortable is currently disabled.
   *
   * @return the disabled state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Sortable.html#method-Ext.util.Sortable-isVertical Ext JS source
   */
  public native function isVertical():Boolean;

}
}
    