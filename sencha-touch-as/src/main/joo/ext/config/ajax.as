package ext.config {


/**
 * A singleton instance of an <a href="Ext.data.Connection.html">Ext.data.Connection</a>.
 *
 * <p>This class serves as a
 * typed config object for constructor of class Ajax.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.AjaxClass
 */
[ExtConfig(target="ext.AjaxClass")]
public class ajax extends connection {

  public function ajax(config:Object = null) {

    super(config);
  }


}
}
    