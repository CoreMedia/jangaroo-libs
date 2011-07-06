package ext.updater {

import ext.Element;
import ext.Updater;

/**
 * This class is a base class implementing a simple render method which updates an element using results from an Ajax request.
 <p>The BasicRenderer updates the element's innerHTML with the responseText. To perform a custom render (i.e. XML or JSON processing), create an object with a conforming <a href="output/Ext.Updater.BasicRenderer.html#Ext.Updater.BasicRenderer-render">render</a> method and pass it to setRenderer on the Updater.</p>
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#cls-Ext.Updater.BasicRenderer Ext JS source
 */
public class BasicRenderer {

  /**
   *
   *
   */
  public function BasicRenderer() {
    super();
  }

  /**
   * This method is called when an Ajax response is received, and an Element needs updating.
   *
   * @param el The element being rendered
   * @param xhr The XMLHttpRequest object
   * @param updateManager The calling update manager
   * @param callback A callback that will need to be called if loadScripts is true on the Updater
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater.BasicRenderer-render Ext JS source
   */
  public native function render(el:Element, xhr:Object, updateManager:Updater, callback:Function):void;

}
}
    