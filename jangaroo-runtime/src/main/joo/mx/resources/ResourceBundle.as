/**
 * Created by fwienber on 08.04.2016.
 */
package mx.resources {

[Rename("joo.ResourceBundle")]
public class ResourceBundle implements IResourceBundle {

  /**
   * @inheritDoc
   */
  public native function get locale():String;

  /**
   * @inheritDoc
   */
  public native function get bundleName():String;

  /**
   * @inheritDoc
   */
  public native function get content():Object;

  public function ResourceBundle(locale:String, bundleName:String, content:Object) {
    this['locale'] = locale;
    this['bundleName'] = bundleName;
    this['content'] = content;
  }

}
}
