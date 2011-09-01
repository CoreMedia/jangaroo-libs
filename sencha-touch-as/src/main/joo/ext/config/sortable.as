package ext.config {

import ext.form.Number;

/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class Sortable.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Sortable
 */
[ExtConfig(target="ext.util.Sortable")]
public class sortable extends observable {

  public function sortable(config:Object = null) {

    super(config);
  }


  /**
   A simple CSS selector that represents elements within the draggable that should NOT initiate a drag.
   */
  public native function get cancelSelector():String;

  /**
   * @private
   */
  public native function set cancelSelector(value:String):void;

  /**
   An Element to constrain the Sortable dragging to. Defaults to <tt>window</tt>. If <tt>true</tt> is specified, the dragging will be constrained to the element of the sortable.
   */
  public native function get constrain():*;

  /**
   * @private
   */
  public native function set constrain(value:*):void;

  /**
   How many milliseconds a user must hold the draggable before starting a drag operation. Defaults to 0 or immediate.
   */
  public native function get delay():ext.form.Number;

  /**
   * @private
   */
  public native function set delay(value:ext.form.Number):void;

  /**
   Possible values: 'vertical', 'horizontal' Defaults to 'vertical'
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   Passing in true will disable this Sortable.
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   Draggable and Droppable objects can participate in a group which are capable of interacting. Defaults to 'base'
   */
  public native function get group():String;

  /**
   * @private
   */
  public native function set group(value:String):void;

  /**
   A simple CSS selector to indicate what is the handle to drag the Sortable.
   */
  public native function get handleSelector():String;

  /**
   * @private
   */
  public native function set handleSelector(value:String):void;

  /**
   A simple CSS selector that represents individual items within the Sortable.
   */
  public native function get itemSelector():String;

  /**
   * @private
   */
  public native function set itemSelector(value:String):void;

  /**
   This should NOT be changed.
   */
  public native function get revert():Boolean;

  /**
   * @private
   */
  public native function set revert(value:Boolean):void;


}
}
    