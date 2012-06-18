package ext {

import ext.config.panel;
import ext.lib.Panel;

/**
 * Panel is a container that has specific functionality and structural components that make it the perfect building block for application-oriented user interfaces.
 <p>Panels are, by virtue of their inheritance from <a href="Ext.Container.html">Ext.Container</a>, capable of being configured with a <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>, and containing child Components.</p><p>When either specifying child <a href="output/Ext.Component.html#Ext.Component-items">items</a> of a Panel, or dynamically <a href="output/Ext.Container.html#Ext.Container-add">adding</a> Components to a Panel, remember to consider how you wish the Panel to arrange those child elements, and whether those child elements need to be sized using one of Ext's built-in <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> schemes. By default, Panels use the <a href="Ext.layout.ContainerLayout.html">ContainerLayout</a> scheme. This simply renders child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b> at all.</p><h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Panel.html#Ext.Panel-fullscreen">fullscreen</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-layout">layout</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-items">items</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-dockedItems">dockedItems</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-html">html</a></li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.Panel.html#Ext.Panel-show">show</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-hide">hide</a></li><li><a href="output/Ext.Panel.html#Ext.Panel-showBy">showBy</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Panel/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var panel = new Ext.Panel({
 fullscreen: true,

 dockedItems: [
 {
 dock : 'top',
 xtype: 'toolbar',
 title: 'Standard Titlebar'
 },
 {
 dock : 'top',
 xtype: 'toolbar',
 ui   : 'light',
 items: [
 {
 text: 'Test Button'
 }
 ]
 }
 ],

 html: 'Testing'
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'panel' / the EXML element &lt;panel>.</p>
 * @see ext.config.panel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel1.html#cls-Ext.Panel Ext JS source
 */
[Native]
public class Panel extends ext.lib.Panel {

  /**
   * Create a new Panel
   *
   * @param config The config object
   * @see ext.config.panel
   */
  public function Panel(config:panel) {
    super();
  }

}
}
    