package ext {

import ext.config.toolbar;

/**
 * Toolbars are most commonly used as dockedItems within an Ext.Panel. They can be docked at the 'top' or 'bottom' of a Panel by specifying the dock config.
 <p>The <a href="output/Ext.Toolbar.html#Ext.Toolbar-defaultType">defaultType</a> of Toolbar's is '<a href="Ext.Button.html">button</a>'.</p><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Toolbar/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var myToolbar = new Ext.Toolbar({
 dock : 'top',
 title: 'My Toolbar',
 items: [
 {
 text: 'My Button'
 }
 ]
 });

 var myPanel = new Ext.Panel({
 dockedItems: [myToolbar],
 fullscreen : true,
 html       : 'Test Panel'
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'toolbar' / the EXML element &lt;toolbar>.</p>
 * @see ext.config.toolbar
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Toolbar Ext JS source
 */
public class Toolbar extends Container {

  /**
   * Create a new Toolbar.
   *
   * @param config The config object
   * @see ext.config.toolbar
   */
  public function Toolbar(config:toolbar = null) {
    super(null);
  }

  /**
   The title Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#prop-Ext.Toolbar-titleEl Ext JS source
   */
  public native function get titleEl():Element;

  /**
   * @private
   */
  public native function set titleEl(value:Element):void;

  /**
   The title of the Toolbar.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get title():String;

  /**
   The CSS class to apply to the titleEl (defaults to <code>'x-toolbar-title'</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get titleCls():String;

  /**
   * Hide the title if it exists.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#method-Ext.Toolbar-hideTitle Ext JS source
   */
  public native function hideTitle():void;

  /**
   * Set the title of the Toolbar
   *
   * @param title This can be arbitrary HTML.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#method-Ext.Toolbar-setTitle Ext JS source
   */
  public native function setTitle(title:String):void;

  /**
   * Show the title if it exists.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#method-Ext.Toolbar-showTitle Ext JS source
   */
  public native function showTitle():void;

}
}
    