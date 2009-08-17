package ext.layout {

/**
 * <p>This is a multi-pane, application-oriented UI layout style that supports multiple
 * nested panels, automatic <b class='link' title='Ext.layout.borderlayout.Region#split'>split</b> bars between
 * <b class='link' title='Ext.layout.borderlayout.Region#borderlayout.Region'>regions</b> and built-in
 * <b class='link' title='Ext.layout.borderlayout.Region#collapsible expanding and'>collapsing</b> of regions.</p>
 * <p>This class is intended to be extended or created via the <tt>layout:'border'</tt>
 * <b class='link'>ext.Container#layout</b> config, and should generally not need to be created directly
 * via the new keyword.</p>
 * <p>BorderLayout does not have any direct config options (other than inherited ones).
 * All configuration options available for customizing the BorderLayout are at the
 * <b class='link'>Ext.layout.borderlayout.Region</b> and <b class='link'>Ext.layout.borderlayout.SplitRegion</b>
 * levels.</p>
 * <p>Example usage:</p>
 * <pre><code>
var myBorderPanel = new ext.Panel({
    <b class='link' title='ext.Component#renderTo'>renderTo</b>: document.body,
    <b class='link' title='ext.BoxComponent#width'>width</b>: 700,
    <b class='link' title='ext.BoxComponent#height'>height</b>: 500,
    <b class='link' title='ext.Panel#title'>title</b>: 'Border Layout',
    <b class='link' title='ext.Container#layout'>layout</b>: 'border',
    <b class='link' title='ext.Container#items'>items</b>: [{
        <b class='link' title='ext.Panel#title'>title</b>: 'South Region is resizable',
        <b class='link' title='Ext.layout.borderlayout.Region#borderlayout.Region'>region</b>: 'south',     // position for region
        <b class='link' title='ext.BoxComponent#height'>height</b>: 100,
        <b class='link' title='Ext.layout.borderlayout.Region#split'>split</b>: true,         // enable resizing
        <b class='link' title='ext.SplitBar#minSize'>minSize</b>: 75,         // defaults to <b class='link' title='Ext.layout.borderlayout.Region#minHeight'>50</b> 
        <b class='link' title='ext.SplitBar#maxSize'>maxSize</b>: 150,
        <b class='link' title='Ext.layout.borderlayout.Region#margins'>margins</b>: '0 5 5 5'
    },{
        // xtype: 'panel' implied by default
        <b class='link' title='ext.Panel#title'>title</b>: 'West Region is collapsible',
        <b class='link' title='Ext.layout.borderlayout.Region#borderlayout.Region'>region</b>:'west',
        <b class='link' title='Ext.layout.borderlayout.Region#margins'>margins</b>: '5 0 0 5',
        <b class='link' title='ext.BoxComponent#width'>width</b>: 200,
        <b class='link' title='Ext.layout.borderlayout.Region#collapsible'>collapsible</b>: true,   // make collapsible
        <b class='link' title='Ext.layout.borderlayout.Region#cmargins'>cmargins</b>: '5 5 0 5', // adjust top margin when collapsed
        <b class='link' title='ext.Component#id'>id</b>: 'west-region-container',
        <b class='link' title='ext.Container#layout'>layout</b>: 'fit',
        <b class='link' title='ext.Panel#unstyled'>unstyled</b>: true
    },{
        <b class='link' title='ext.Panel#title'>title</b>: 'Center Region',
        <b class='link' title='Ext.layout.borderlayout.Region#borderlayout.Region'>region</b>: 'center',     // center region is required, no width/height specified
        <b class='link' title='ext.Component#xtype'>xtype</b>: 'container',
        <b class='link' title='ext.Container#layout'>layout</b>: 'fit',
        <b class='link' title='Ext.layout.borderlayout.Region#margins'>margins</b>: '5 5 0 0'
    }]
});
</code></pre>
 * <p><b><u>Notes</u></b>:</p><div class="mdetail-params"><ul>
 * <li>Any container using the BorderLayout <b>must</b> have a child item with <tt>region:'center'</tt>.
 * The child item in the center region will always be resized to fill the remaining space not used by
 * the other regions in the layout.</li>
 * <li>Any child items with a region of <tt>west</tt> or <tt>east</tt> must have <tt>width</tt> defined
 * (an integer representing the number of pixels that the region should take up).</li>
 * <li>Any child items with a region of <tt>north</tt> or <tt>south</tt> must have <tt>height</tt> defined.</li>
 * <li>The regions of a BorderLayout are <b>fixed at render time</b> and thereafter, its child Components may not be removed or added</b>.  To add/remove
 * Components within a BorderLayout, have them wrapped by an additional Container which is directly
 * managed by the BorderLayout.  If the region is to be collapsible, the Container used directly
 * by the BorderLayout manager should be a Panel.  In the following example a Container (an ext.Panel)
 * is added to the west region:
 * <div style="margin-left:16px"><pre><code>
wrc = <b class='link' title='Ext#getCmp'>Ext.getCmp</b>('west-region-container');
wrc.<b class='link' title='ext.Panel#removeAll'>removeAll</b>();
wrc.<b class='link' title='ext.Container#add'>add</b>({
    title: 'Added Panel',
    html: 'Some content'
});
wrc.<b class='link' title='ext.Container#doLayout'>doLayout</b>();
 * </code></pre></div>
 * </li>
 * <li> To reference a <b class='link' title='Ext.layout.borderlayout.Region'>Region</b>:
 * <div style="margin-left:16px"><pre><code>
wr = myBorderPanel.layout.west;
 * </code></pre></div>
 * </li>
 * </ul></div>
 */
public class BorderLayout extends ContainerLayout {
  protected var rendered : Boolean = true;

  override protected native function onLayout(ct, target) : void;

  override public native function destroy() : void;
    /**
     * @property activeItem
     * @hide
     */
}}
