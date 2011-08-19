package ext.config {


/**
 * An implementation of Ext.data.DataProxy that simply passes the data specified in its constructor to the Reader when its load method is called.
 *
 * <p>This class serves as a
 * typed config object for constructor of class MemoryProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.MemoryProxy
 */
[ExtConfig(target="ext.data.MemoryProxy")]
public class memoryproxy extends dataproxy {

  public function memoryproxy(config:Object = null) {

    super(config);
  }


}
}
    