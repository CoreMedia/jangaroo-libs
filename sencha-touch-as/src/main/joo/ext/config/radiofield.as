package ext.config {


/**
 * Single radio field. Same as Checkbox, but provided as a convenience for automatically setting the input type. Radio grouping is handled automatically by the browser if you give each radio in a group the same name.

 *
 * <p>This class represents the xtype 'radiofield' and serves as a
 * typed config object for constructor of class Radio.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Radio
 */
[ExtConfig(target="ext.form.Radio", xtype="radiofield")]
public class radiofield extends checkboxfield {

  public function radiofield(config:Object = null) {

    super(config);
  }


}
}
    