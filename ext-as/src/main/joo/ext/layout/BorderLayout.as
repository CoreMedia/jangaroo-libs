package ext.layout {
import ext.config.borderlayout;

/**
 * This is a multi-pane, application-oriented UI layout style that supports multiple nested panels, automatic <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a> bars between <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-BorderLayout.Region">regions</a> and built-in <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">expanding and collapsing</a> of regions.
 <p>This class is intended to be extended or created via the <tt>layout:'border'</tt> <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.</p><p>BorderLayout does not have any direct config options (other than inherited ones). All configuration options available for customizing the BorderLayout are at the <a href="Ext.layout.BorderLayout.Region.html">Ext.layout.BorderLayout.Region</a> and <a href="Ext.layout.BorderLayout.SplitRegion.html">Ext.layout.BorderLayout.SplitRegion</a> levels.</p><p>Example usage:</p><pre><code>var myBorderPanel = new Ext.Panel({
 <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a>: document.body,
 <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-width">width</a>: 700,
 <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a>: 500,
 <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'Border Layout',
 <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>: 'border',
 <a href="output/Ext.Container.html#Ext.Container-items">items</a>: [{
 <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'South Region is resizable',
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-BorderLayout.Region">region</a>: 'south',     // position for region
 <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a>: 100,
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-split">split</a>: true,         // enable resizing
 <a href="output/Ext.SplitBar.html#Ext.SplitBar-minSize">minSize</a>: 75,         // defaults to <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-minHeight">50</a>
 <a href="output/Ext.SplitBar.html#Ext.SplitBar-maxSize">maxSize</a>: 150,
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-margins">margins</a>: '0 5 5 5'
 },{
 // xtype: 'panel' implied by default
 <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'West Region is collapsible',
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-BorderLayout.Region">region</a>:'west',
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-margins">margins</a>: '5 0 0 5',
 <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-width">width</a>: 200,
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-collapsible">collapsible</a>: true,   // make collapsible
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-cmargins">cmargins</a>: '5 5 0 5', // adjust top margin when collapsed
 <a href="output/Ext.Component.html#Ext.Component-id">id</a>: 'west-region-container',
 <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>: 'fit',
 <a href="output/Ext.Panel.html#Ext.Panel-unstyled">unstyled</a>: true
 },{
 <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'Center Region',
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-BorderLayout.Region">region</a>: 'center',     // center region is required, no width/height specified
 <a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a>: 'container',
 <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>: 'fit',
 <a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-margins">margins</a>: '5 5 0 0'
 }]
 });
 </code></pre><p><b><u>Notes</u></b>:</p><div class="mdetail-params"><ul><li>Any container using the BorderLayout <b>must</b> have a child item with <tt>region:'center'</tt>. The child item in the center region will always be resized to fill the remaining space not used by the other regions in the layout.</li><li>Any child items with a region of <tt>west</tt> or <tt>east</tt> must have <tt>width</tt> defined (an integer representing the number of pixels that the region should take up).</li><li>Any child items with a region of <tt>north</tt> or <tt>south</tt> must have <tt>height</tt> defined.</li><li>The regions of a BorderLayout are <b>fixed at render time</b> and thereafter, its child Components may not be removed or added. To add/remove Components within a BorderLayout, have them wrapped by an additional Container which is directly managed by the BorderLayout. If the region is to be collapsible, the Container used directly by the BorderLayout manager should be a Panel. In the following example a Container (an Ext.Panel) is added to the west region: <div style="margin-left:16px"><pre><code>wrc = <a href="output/Ext.html#Ext-getCmp">Ext.getCmp</a>('west-region-container');
 wrc.<a href="output/Ext.Panel.html#Ext.Panel-removeAll">removeAll</a>();
 wrc.<a href="output/Ext.Container.html#Ext.Container-add">add</a>({
 title: 'Added Panel',
 html: 'Some content'
 });
 wrc.<a href="output/Ext.Container.html#Ext.Container-doLayout">doLayout</a>();
 </code></pre></div></li><li>To reference a <a href="Ext.layout.BorderLayout.Region.html">Region</a>: <div style="margin-left:16px"><pre><code>wr = myBorderPanel.layout.west;
 </code></pre></div></li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.borderlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.BorderLayout Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "layout.BorderLayout")]
public class BorderLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.borderlayout
   */
  public function BorderLayout(config:borderlayout = null) {
    super(config);
  }

}
}
    