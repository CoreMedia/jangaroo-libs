package ext.layout {
/**
 * <p>This is a layout that contains multiple panels in an expandable accordion style such that only
 * <b>one panel can be open at any given time</b>.  Each panel has built-in support for expanding and collapsing.
 * <p>This class is intended to be extended or created via the <code><b class='link' title='ext.Container#layout'>layout</b></code>
 * configuration property.  See <code><b class='link'>ext.Container#layout</b></code> for additional details.</p>
 * <p>Example usage:</p>
 * <pre><code>
var accordion = new ext.Panel({
    title&#58; 'Accordion Layout',
    layout&#58;'accordion',
    defaults&#58; {
        &#47;/ applied to each contained panel
        bodyStyle&#58; 'padding:15px'
    },
    layoutConfig&#58; {
        &#47;/ layout-specific configs go here
        titleCollapse&#58; false,
        animate&#58; true,
        activeOnTop&#58; true
    },
    items&#58; [{
        title&#58; 'Panel 1',
        html&#58; '&lt;p&gt;Panel content!&lt;/p&gt;'
    },{
        title&#58; 'Panel 2',
        html&#58; '&lt;p&gt;Panel content!&lt;/p&gt;'
    },{
        title&#58; 'Panel 3',
        html&#58; '&lt;p&gt;Panel content!&lt;/p&gt;'
    }]
});
</code></pre>
 */
public class AccordionLayout extends FitLayout {
/**
     * @cfg {Boolean} fill
     * True to adjust the active item's height to fill the available space in the container, false to use the
     * item's current height, or auto height if not explicitly set (defaults to true).
     */
    public var fill ;
    /**
     * @cfg {Boolean} autoWidth
     * True to set each contained item's width to 'auto', false to use the item's current width (defaults to true).
     * Note that some components, in particular the <b class='link' title='Ext.grid.GridPanel'>grid</b>, will not function properly within
     * layouts if they have auto width, so in such cases this config should be set to false.
     */
    public var autoWidth  : Boolean;
    /**
     * @cfg {Boolean} titleCollapse
     * True to allow expand/collapse of each contained panel by clicking anywhere on the title bar, false to allow
     * expand/collapse only when the toggle tool button is clicked (defaults to true).  When set to false,
     * <b class='link' title='#hideCollapseTool'>hideCollapseTool</b> should be false also.
     */
    public var titleCollapse  : Boolean;
    /**
     * @cfg {Boolean} hideCollapseTool
     * True to hide the contained panels' collapse/expand toggle buttons, false to display them (defaults to false).
     * When set to true, <b class='link' title='#titleCollapse'>titleCollapse</b> should be true also.
     */
    public var hideCollapseTool  : Boolean;
    /**
     * @cfg {Boolean} collapseFirst
     * True to make sure the collapse/expand toggle button always renders first (to the left of) any other tools
     * in the contained panels' title bars, false to render it last (defaults to false).
     */
    public var collapseFirst  : Boolean;
    /**
     * @cfg {Boolean} animate
     * True to slide the contained panels open and closed during expand/collapse using animation, false to open and
     * close directly with no animation (defaults to false).  Note: to defer to the specific config setting of each
     * contained panel for this property, set this to undefined at the layout level.
     */
    public var animate  : Boolean;
    /**
     * @cfg {Boolean} sequence
     * <b>Experimental</b>. If animate is set to true, this will result in each animation running in sequence.
     */
    public var sequence  : Boolean;
    /**
     * @cfg {Boolean} activeOnTop
     * True to swap the position of each panel as it is expanded so that it becomes the first item in the container,
     * false to keep the panels in the rendered order. <b>This is NOT compatible with "animate:true"</b> (defaults to false).
     */
    public var activeOnTop  : Boolean;
    //override public native function renderItem(c) : void;
    protected native function beforeExpand(p, anim) : void;
    override protected native function setItemSize(item, size) : void;
    /**
     * Sets the active (expanded) item in the layout.
     * @param item The string component id or numeric index of the item to activate
     */
    public native function setActiveItem(item : *) : void;
}}
