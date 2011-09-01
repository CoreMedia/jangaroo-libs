package ext.config {


/**
 *
 *
 * <p>This class serves as a
 * typed config object for constructor of class Node.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Node
 */
[ExtConfig(target="ext.data.Node")]
public class node extends observable {

  public function node(config:Object = null) {

    super(config);
  }


  /**
   The id for this node. If one is not specified, one is generated.
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   true if this node is a leaf and does not have children
   */
  public native function get leaf():Boolean;

  /**
   * @private
   */
  public native function set leaf(value:Boolean):void;


}
}
    