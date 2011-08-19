package ext.config {


/**
 * A Collection class that maintains both numeric indexes and keys and exposes events.
 *
 * <p>This class serves as a
 * typed config object for constructor of class MixedCollection.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.MixedCollection
 */
[ExtConfig(target="ext.util.MixedCollection")]
public class mixedcollection extends observable {

  public function mixedcollection(config:Object = null) {

    super(config);
  }


  /**
   Specify <tt>true</tt> if the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-addAll">addAll</a> function should add function references to the collection. Defaults to <tt>false</tt>.
   */
  public native function get allowFunctions():Boolean;

  /**
   * @private
   */
  public native function set allowFunctions(value:Boolean):void;


}
}
    