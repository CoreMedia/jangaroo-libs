package ext.config {


/**
 * WebStorageProxy is simply a superclass for the <a href="Ext.data.LocalStorageProxy.html">localStorage</a> and <a href="Ext.data.SessionStorageProxy.html">sessionStorage</a> proxies. It uses the new HTML5 key/value client-side storage objects to save <a href="Ext.data.Model.html">model instances</a> for offline use.

 *
 * <p>This class serves as a
 * typed config object for constructor of class WebStorageProxy.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.WebStorageProxy
 */
[ExtConfig(target="ext.data.WebStorageProxy")]
public class webstorageproxy extends clientproxy {

  public function webstorageproxy(config:Object = null) {

    super(config);
  }


  /**
   The unique ID used as the key in which all record data are stored in the local storage object
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;


}
}
    