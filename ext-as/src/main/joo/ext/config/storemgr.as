package ext.config {


/**
 * The default global group of stores.
 *
 * <p>This class serves as a
 * typed config object for constructor of class StoreMgr.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.StoreMgrClass
 */
[ExtConfig(target="ext.StoreMgrClass")]
public class storemgr extends mixedcollection {

  public function storemgr(config:Object = null) {

    super(config);
  }


}
}
    