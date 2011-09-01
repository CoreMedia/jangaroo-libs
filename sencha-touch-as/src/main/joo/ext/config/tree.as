package ext.config {


/**
 * Represents a tree data structure and bubbles all the events for its nodes. The nodes in the tree have most standard DOM functionality.
 *
 * <p>This class serves as a
 * typed config object for constructor of class Tree.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Tree
 */
[ExtConfig(target="ext.data.Tree")]
public class tree extends observable {

  public function tree(config:Object = null) {

    super(config);
  }


  /**
   The token used to separate paths in node ids (defaults to '/').
   */
  public native function get pathSeparator():String;

  /**
   * @private
   */
  public native function set pathSeparator(value:String):void;


}
}
    