package ext.dd {
/**
 * A DragDrop implementation that does not move, but can be a drop
 * target.  You would get the same result by simply omitting implementation
 * for the event callbacks, but this way we reduce the processing cost of the
 * event listener and the callbacks.
*/
public class DDTarget extends DragDrop {
/**
 * @constructor
 * @param id the id of the element that is a drop target
 * @param sGroup the group of related DragDrop objects
 * @param config an object containing configurable attributes
 *                 Valid properties for DDTarget in addition to those in
 *                 DragDrop:
 *                    none
 */
  public function DDTarget(id:String, sGroup:String, config:Object) {
    super(id, sGroup, config);
  }
    override public native function toString() : String;
}}
