package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class TreeDragZone.</p>
 *
 * @see ext.tree.TreeDragZone
 */
[ExtConfig(target="ext.tree.TreeDragZone")]
public class treedragzone extends dragzone {

  public function treedragzone(config:Object = null) {

    super(config);
  }


  /**
   A named drag drop group to which this object belongs. If a group is specified, then this object will only interact with other drag drop objects in the same group (defaults to 'TreeDD').
   */
  override public native function get ddGroup():String;

  /**
   * @private
   */
  override public native function set ddGroup(value:String):void;


}
}
    