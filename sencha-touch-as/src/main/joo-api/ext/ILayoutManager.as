package ext {


/**
 * Provides a registry of all Layouts (instances of <a href="Ext.layout.Layout.html">Ext.layout.Layout</a> or any subclass thereof) on a page.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton LayoutManager.</p>
 * @see ext.#LayoutManager ext.LayoutManager
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LayoutManager.html#cls-Ext.LayoutManager Ext JS source
 */
public interface ILayoutManager {

  /**
   * Creates a new Component from the specified config object using the config object's <a href="output/Ext.component.html#Ext.component-xtype">xtype</a> to determine the class to instantiate.
   *
   * @param config A configuration object for the Component you wish to create.
   * @param defaultType The constructor to provide the default Component type if the config object does not contain a <code>xtype</code>. (Optional if the config contains a <code>xtype</code>).
   * @return The newly instantiated Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/LayoutManager.html#method-Ext.LayoutManager-create Ext JS source
   */
  function create(config:Object, defaultType:Class):Component;

}
}
    