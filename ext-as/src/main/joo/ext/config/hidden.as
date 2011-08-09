package ext.config {


/**
 * A basic hidden field for storing hidden values in forms that need to be passed in the form submit.
 * <p>This class serves as a typed config object for constructor of class Hidden.</p>
 *
 * @see ext.form.Hidden
 */
[ExtConfig(target="ext.form.Hidden", xtype="hidden")]
public class hidden extends field {

  public function hidden(config:Object = null) {

    super(config);
  }


}
}
    