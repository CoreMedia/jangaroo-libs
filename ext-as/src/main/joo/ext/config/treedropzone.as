package ext.config {


/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class TreeDropZone.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.tree.TreeDropZone
 */
[ExtConfig(target="ext.tree.TreeDropZone")]
public class treedropzone extends dropzone {

  public function treedropzone(config:Object = null) {

    super(config);
  }


  /**
   True if drops on the tree container (outside of a specific tree node) are allowed (defaults to false)
   */
  public native function get allowContainerDrop():String;

  /**
   * @private
   */
  public native function set allowContainerDrop(value:String):void;

  /**
   Allow inserting a dragged node between an expanded parent node and its first child that will become a sibling of the parent when dropped (defaults to false)
   */
  public native function get allowParentInsert():Boolean;

  /**
   * @private
   */
  public native function set allowParentInsert(value:Boolean):void;

  /**
   True if the tree should only allow append drops (use for trees which are sorted, defaults to false)
   */
  public native function get appendOnly():String;

  /**
   * @private
   */
  public native function set appendOnly(value:String):void;

  /**
   A named drag drop group to which this object belongs. If a group is specified, then this object will only interact with other drag drop objects in the same group (defaults to 'TreeDD').
   */
  override public native function get ddGroup():String;

  /**
   * @private
   */
  override public native function set ddGroup(value:String):void;

  /**
   The delay in milliseconds to wait before expanding a target tree node while dragging a droppable node over the target (defaults to 1000)
   */
  public native function get expandDelay():String;

  /**
   * @private
   */
  public native function set expandDelay(value:String):void;


}
}
    