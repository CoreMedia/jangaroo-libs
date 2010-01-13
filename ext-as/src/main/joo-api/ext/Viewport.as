package ext {
/**
 * <p>A specialized container representing the viewable application area (the browser viewport).</p>
 * <p>The Viewport renders itself to the document body, and automatically sizes itself to the size of
 * the browser viewport and manages window resizing. There may only be one Viewport created
 * in a page. Inner layouts are available by virtue of the fact that all <b class='link' title='ext.Panel'>Panel</b>s
 * added to the Viewport, either through its <b class='link' title='#items'>items</b>, or through the items, or the <b class='link' title='#add'>add</b>
 * method of any of its child Panels may themselves have a layout.</p>
 * <p>The Viewport does not provide scrolling, so child Panels within the Viewport should provide
 * for scrolling if needed using the <b class='link' title='#autoScroll'>autoScroll</b> config.</p>
 * <p>An example showing a classic application border layout:</p><pre><code>
new ext.Viewport({
    layout&#58; 'border',
    items&#58; [{
        region&#58; 'north',
        html&#58; '&lt;h1 class="x-panel-header">Page Title&lt;/h1>',
        autoHeight&#58; true,
        border&#58; false,
        margins&#58; '0 0 5 0'
    }, {
        region&#58; 'west',
        collapsible&#58; true,
        title&#58; 'Navigation',
        width&#58; 200
        &#47;/ the west region might typically utilize a <b class='link' title='Ext.tree.TreePanel'>TreePanel</b> or a Panel with <b class='link' title='Ext.layout.AccordionLayout Accordion'>layout</b> 
    }, {
        region&#58; 'south',
        title&#58; 'Title for Panel',
        collapsible&#58; true,
        html&#58; 'Information goes here',
        split&#58; true,
        height&#58; 100,
        minHeight&#58; 100
    }, {
        region&#58; 'east',
        title&#58; 'Title for the Grid Panel',
        collapsible&#58; true,
        split&#58; true,
        width&#58; 200,
        xtype&#58; 'grid',
        &#47;/ remaining grid configuration not shown ...
        &#47;/ notice that the GridPanel is added directly as the region
        &#47;/ it is not "overnested" inside another Panel
    }, {
        region&#58; 'center',
        xtype&#58; 'tabpanel', // TabPanel itself has no title
        items&#58; {
            title&#58; 'Default Tab',
            html&#58; 'The first tab\'s content. Others may be added dynamically'
        }
    }]
});
</code></pre>
*/
public class Viewport extends Container {
/**
 * @constructor
 * Create a new Viewport
 * @param config The config object
 * @xtype viewport
 */
public function Viewport(config : Object) {
  super(config);
}
    /**
     * @cfg {Mixed} applyTo @hide
	 */
    /**
     * @cfg {Boolean} allowDomMove @hide
	 */
    /**
     * @cfg {Boolean} hideParent @hide
	 */
    /**
     * @cfg {Mixed} renderTo @hide
	 */
    /**
     * @cfg {Boolean} hideParent @hide
	 */
    /**
     * @cfg {Number} height @hide
	 */
    /**
     * @cfg {Number} width @hide
	 */
    /**
     * @cfg {Boolean} autoHeight @hide
	 */
    /**
     * @cfg {Boolean} autoWidth @hide
	 */
    /**
     * @cfg {Boolean} deferHeight @hide
	 */
    /**
     * @cfg {Boolean} monitorResize @hide
	 */
    override protected native function initComponent() : void;
    public native function fireResize(w, h) : void;
}}
