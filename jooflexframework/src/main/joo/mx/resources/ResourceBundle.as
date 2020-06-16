/**
 * Created by fwienber on 08.04.2016.
 */
package mx.resources {

public class ResourceBundle implements IResourceBundle {

  public function ResourceBundle(locale:String, bundleName:String, content:Object) {
    Object['apply'](this, {
      locale: locale,
      bundleName: bundleName,
      content: content
    });
  }

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

}
}
