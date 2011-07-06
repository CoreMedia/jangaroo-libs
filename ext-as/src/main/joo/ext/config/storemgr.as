package ext.config {


/**
 * The default global group of stores.
 * <p>This class serves as a typed config object for constructor of class StoreMgr.</p>
 *
 * @see ext.StoreMgrClass
 */
[ExtConfig(target="ext.StoreMgrClass")]
public class storemgr extends mixedcollection {

  public function storemgr(config:Object = null) {

    super(config);
  }


}
}
    