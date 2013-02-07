package ext {
import ext.config.viewport;

/**
 * A specialized container representing the viewable application area (the browser viewport).
 <p>The Viewport renders itself to the document body, and automatically sizes itself to the size of the browser viewport and manages window resizing. There may only be one Viewport created in a page. Inner layouts are available by virtue of the fact that all <a href="Ext.Panel.html">Panel</a>s added to the Viewport, either through its <a href="output/Ext.Viewport.html#Ext.Viewport-items">items</a>, or through the items, or the <a href="output/Ext.Viewport.html#Ext.Viewport-add">add</a> method of any of its child Panels may themselves have a layout.</p><p>The Viewport does not provide scrolling, so child Panels within the Viewport should provide for scrolling if needed using the <a href="output/Ext.Viewport.html#Ext.Viewport-autoScroll">autoScroll</a> config.</p><p>An example showing a classic application border layout:</p><pre><code>new Ext.Viewport({
 layout: 'border',
 items: [{
 region: 'north',
 html: '&lt;h1 class="x-panel-header"&gt;Page Title&lt;/h1&gt;',
 autoHeight: true,
 border: false,
 margins: '0 0 5 0'
 }, {
 region: 'west',
 collapsible: true,
 title: 'Navigation',
 width: 200
 // the west region might typically utilize a <a href="Ext.tree.TreePanel.html">TreePanel</a> or a Panel with <a href="Ext.layout.AccordionLayout.html">Accordion layout</a>
 }, {
 region: 'south',
 title: 'Title for Panel',
 collapsible: true,
 html: 'Information goes here',
 split: true,
 height: 100,
 minHeight: 100
 }, {
 region: 'east',
 title: 'Title for the Grid Panel',
 collapsible: true,
 split: true,
 width: 200,
 xtype: 'grid',
 // remaining grid configuration not shown ...
 // notice that the GridPanel is added directly as the region
 // it is not "overnested" inside another Panel
 }, {
 region: 'center',
 xtype: 'tabpanel', // TabPanel itself has no title
 items: {
 title: 'Default Tab',
 html: 'The first tab\'s content. Others may be added dynamically'
 }
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'viewport' / the EXML element &lt;viewport>.</p>
 * @see ext.config.viewport
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Viewport Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.Viewport")]
public class Viewport extends Container {

  /**
   * Create a new Viewport
   *
   * @param config The config object
   * @see ext.config.viewport
   */
  public function Viewport(config:viewport) {
    super(null);
  }

}
}
    