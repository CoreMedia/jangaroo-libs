package ext.config {

import ext.form.Number;

/**
 * A core util class to bring Draggable behavior to any DOM element, acts as a base class for Scroller and Sortable
 *
 * <p>This class serves as a
 * typed config object for constructor of class Draggable.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Draggable
 */
[ExtConfig(target="ext.util.Draggable")]
public class draggable extends observable {

  public function draggable(config:Object = null) {

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
   Can be either a DOM element, an instance of Ext.Element, 'parent' or null for no constrain
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
   Possible values: 'vertical', 'horizontal', or 'both' Defaults to 'both'
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   Whether or not the draggable behavior is disabled on instantiation Defaults to false
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   The element to actually bind touch events to, the only string accepted is 'parent' for convenience. Defaults to this class' element itself
   */
  public native function get eventTarget():*;

  /**
   * @private
   */
  public native function set eventTarget(value:*):void;

  /**
   Draggable and Droppable objects can participate in a group which are capable of interacting. Defaults to 'base'
   */
  public native function get group():String;

  /**
   * @private
   */
  public native function set group(value:String):void;

  /**
   Whether or not the element or it's proxy will be reverted back (with animation) when it's not dropped and held by a Droppable
   */
  public native function get revert():Boolean;

  /**
   * @private
   */
  public native function set revert(value:Boolean):void;

  /**
   Whether or not to translate the element using CSS Transform (much faster) instead of left and top properties, defaults to true
   */
  public native function get useCssTransform():Boolean;

  /**
   * @private
   */
  public native function set useCssTransform(value:Boolean):void;


}
}
    