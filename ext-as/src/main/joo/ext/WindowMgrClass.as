package ext {


/**
 * The default global window group that is available automatically. To have more than one group of windows with separate z-order stacks, create additional instances of <a href="Ext.WindowGroup.html">Ext.WindowGroup</a> as needed.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton WindowMgr.</p>
 * @see ext.#WindowMgr ext.WindowMgr
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.WindowMgr Sencha Docs Ext JS 3.4
 */
[Native]
public class WindowMgrClass extends WindowGroup {

  /**
   * @private
   *
   */
  public function WindowMgrClass() {
    super();
  }

}
}
    