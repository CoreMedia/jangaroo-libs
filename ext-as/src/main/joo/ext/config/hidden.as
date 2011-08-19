package ext.config {


/**
 * A basic hidden field for storing hidden values in forms that need to be passed in the form submit.
 *
 * <p>This class represents the xtype 'hidden' and serves as a
 * typed config object for constructor of class Hidden.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Hidden
 */
[ExtConfig(target="ext.form.Hidden", xtype="hidden")]
public class hidden extends field {

  public function hidden(config:Object = null) {

    super(config);
  }


}
}
    