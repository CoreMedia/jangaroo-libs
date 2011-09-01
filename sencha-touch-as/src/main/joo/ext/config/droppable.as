package ext.config {


/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class Droppable.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Droppable
 */
[ExtConfig(target="ext.util.Droppable")]
public class droppable extends observable {

  public function droppable(config:Object = null) {

    super(config);
  }


  /**
   The CSS added to a Droppable when a Draggable in the same group is being dragged. Defaults to 'x-drop-active'.
   */
  public native function get activeCls():String;

  /**
   * @private
   */
  public native function set activeCls(value:String):void;

  /**

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
   The CSS class to add to the droppable when hovering over a valid drop. (Defaults to 'x-drop-hover')
   */
  public native function get hoverCls():String;

  /**
   * @private
   */
  public native function set hoverCls(value:String):void;

  /**
   The CSS class to add to the droppable when dragging a draggable that is not in the same group. Defaults to 'x-drop-invalid'.
   */
  public native function get invalidCls():String;

  /**
   * @private
   */
  public native function set invalidCls(value:String):void;

  /**
   Determines when a drop is considered 'valid' whether it simply need to intersect the region or if it needs to be contained within the region. Valid values are: 'intersects' or 'contains'
   */
  public native function get validDropMode():String;

  /**
   * @private
   */
  public native function set validDropMode(value:String):void;


}
}
    