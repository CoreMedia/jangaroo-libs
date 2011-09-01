package ext.config {


/**
 * A store class that allows the representation of hierarchical data.

 *
 * <p>This class serves as a
 * typed config object for constructor of class TreeStore.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.TreeStore
 */
[ExtConfig(target="ext.data.TreeStore")]
public class treestore extends abstractstore {

  public function treestore(config:Object = null) {

    super(config);
  }


  /**
   Default to true. Remove previously existing child nodes before loading.
   */
  public native function get clearOnLoad():Boolean;

  /**
   * @private
   */
  public native function set clearOnLoad(value:Boolean):void;

  /**
   The default root id. Defaults to 'root'
   */
  public native function get defaultRootId():String;

  /**
   * @private
   */
  public native function set defaultRootId(value:String):void;

  /**
   The name of the parameter sent to the server which contains the identifier of the node. Defaults to <tt>'node'</tt>.
   */
  public native function get nodeParam():String;

  /**
   * @private
   */
  public native function set nodeParam(value:String):void;


}
}
    