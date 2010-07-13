package ext {
import js.HTMLElement;

/**
 * <p>A basic tab container. TabPanels can be used exactly like a standard <b class='link'>ext.Panel</b>
 * for layout purposes, but also have special support for containing child Components
 * (<code><b class='link' title='ext.Container#items'>items</b></code>) that are managed using a
 * <b class='link' title='Ext.layout.CardLayout CardLayout layout'>manager</b>, and displayed as separate tabs.</p>
 *
 * <b>Note:</b> By default, a tab's close tool <i>destroys</i> the child tab Component
 * and all its descendants. This makes the child tab Component, and all its descendants <b>unusable</b>. To enable
 * re-use of a tab, configure the TabPanel with <b><code><b class='link' title='#autoDestroy autoDestroy:'>false</b></code></b>.
 *
 * <p><b><u>TabPanel header/footer elements</u></b></p>
 * <p>TabPanels use their <b class='link' title='ext.Panel#header'>header</b> or <b class='link' title='ext.Panel#footer'>footer</b> element
 * (depending on the <b class='link' title='#tabPosition'>tabPosition</b> configuration) to accommodate the tab selector buttons.
 * This means that a TabPanel will not display any configured title, and will not display any
 * configured header <b class='link' title='ext.Panel#tools'>tools</b>.</p>
 * <p>To display a header, embed the TabPanel in a <b class='link' title='ext.Panel'>Panel</b> which uses
 * <b><code><b class='link' title='ext.Container#layout'>layout:'fit'</b></code></b>.</p>
 *
 * <p><b><u>Tab Events</u></b></p>
 * <p>There is no actual tab class &mdash; each tab is simply a <b class='link' title='ext.BoxComponent'>Component</b>
 * such as a <b class='link' title='ext.Panel'>Panel</b>. However, when rendered in a TabPanel, each child Component
 * can fire additional events that only exist for tabs and are not available from other Components.
 * These events are:</p>
 * <div><ul class="mdetail-params">
 * <li><code><b class='link' title='ext.Panel#activate'>activate</b></code> : Fires when this Component becomes
 * the active tab.</li>
 * <li><code><b class='link' title='ext.Panel#deactivate'>deactivate</b></code> : Fires when the Component that
 * was the active tab becomes deactivated.</li>
 * </ul></div>
 * <p><b><u>Creating TabPanels from Code</u></b></p>
 * <p>TabPanels can be created and rendered completely in code, as in this example:</p>
 * <pre><code>
var tabs = new ext.TabPanel({
    renderTo&#58; Ext.getBody(),
    activeTab&#58; 0,
    items&#58; [{
        title&#58; 'Tab 1',
        html&#58; 'A simple tab'
    },{
        title&#58; 'Tab 2',
        html&#58; 'Another one'
    }]
});
</code></pre>
 * <p><b><u>Creating TabPanels from Existing Markup</u></b></p>
 * <p>TabPanels can also be rendered from pre-existing markup in a couple of ways.</p>
 * <div><ul class="mdetail-params">
 *
 * <li>Pre-Structured Markup</li>
 * <div class="sub-desc">
 * <p>A container div with one or more nested tab divs with class <code>'x-tab'</code> can be rendered entirely
 * from existing markup (See the <b class='link' title='#autoTabs'>autoTabs</b> example).</p>
 * </div>
 *
 * <li>Un-Structured Markup</li>
 * <div class="sub-desc">
 * <p>A TabPanel can also be rendered from markup that is not strictly structured by simply specifying by id
 * which elements should be the container and the tabs. Using this method tab content can be pulled from different
 * elements within the page by id regardless of page structure. For example:</p>
 * <pre><code>
var tabs = new ext.TabPanel({
    renderTo&#58; 'my-tabs',
    activeTab&#58; 0,
    items&#58;[
        {contentEl:'tab1', title:'Tab 1'},
        {contentEl:'tab2', title:'Tab 2'}
    ]
});

&#47;/ Note that the tabs do not have to be nested within the container (although they can be)
&lt;div id="my-tabs">&lt;/div>
&lt;div id="tab1" class="x-hide-display">A simple tab&lt;/div>
&lt;div id="tab2" class="x-hide-display">Another one&lt;/div>
</code></pre>
 * Note that the tab divs in this example contain the class <code>'x-hide-display'</code> so that they can be rendered
 * deferred without displaying outside the tabs. You could alternately set <code><b class='link' title='#deferredRender'>deferredRender</b> = false </code>
 * to render all content tabs on page load.
 * </div>
 *
 * </ul></div>
 *
*/
public class TabPanel extends Panel {
/**
 * @constructor
 * @param config The configuration options
 * @xtype tabpanel
 */
public function TabPanel(config : Object) {
  super(config);
}
    /**
     * @cfg {Boolean} layoutOnTabChange
     * Set to true to force a layout of the active tab when the tab is changed. Defaults to false.
     * See <b class='link'>Ext.layout.CardLayout</b>.<code><b class='link' title='Ext.layout.CardLayout#layoutOnCardChange'>layoutOnCardChange</b></code>.
     */
    /**
     * @cfg {String} tabCls <b>This config option is used on <u>child Components</u> of ths TabPanel.</b> A CSS
     * class name applied to the tab strip item representing the child Component, allowing special
     * styling to be applied.
     */
    /**
     * @cfg {Boolean} monitorResize True to automatically monitor window resize events and rerender the layout on
     * browser resize (defaults to true).
     */
    public var monitorResize  : Boolean;
    /**
     * @cfg {Boolean} deferredRender
     * <p><code>true</code> by default to defer the rendering of child <code><b class='link' title='ext.Container#items'>items</b></code>
     * to the browsers DOM until a tab is activated. <code>false</code> will render all contained
     * <code><b class='link' title='ext.Container#items'>items</b></code> as soon as the <b class='link' title='Ext.layout.CardLayout'>layout</b>
     * is rendered. If there is a significant amount of content or a lot of heavy controls being
     * rendered into panels that are not displayed by default, setting this to <code>true</code> might
     * improve performance.</p>
     * <br><p>The <code>deferredRender</code> property is internally passed to the layout manager for
     * TabPanels (<b class='link'>Ext.layout.CardLayout</b>) as its <b class='link'>Ext.layout.CardLayout#deferredRender</b>
     * configuration value.</p>
     * <br><p><b>Note</b>: leaving <code>deferredRender</code> as <code>true</code> means that the content
     * within an unactivated tab will not be available. For example, this means that if the TabPanel
     * is within a <b class='link' title='ext.form.FormPanel'>form</b>, then until a tab is activated, any Fields within
     * unactivated tabs will not be rendered, and will therefore not be submitted and will not be
     * available to either <b class='link' title='ext.form.BasicForm#getValues'>getValues</b> or
     * <b class='link' title='ext.form.BasicForm#setValues'>setValues</b>.</p>
     */
    public var deferredRender  : Boolean;
    /**
     * @cfg {Number} tabWidth The initial width in pixels of each new tab (defaults to 120).
     */
    public var tabWidth  : Number;
    /**
     * @cfg {Number} minTabWidth The minimum width in pixels for each tab when <b class='link' title='#resizeTabs'>resizeTabs</b> = true (defaults to 30).
     */
    public var minTabWidth  : Number;
    /**
     * @cfg {Boolean} resizeTabs True to automatically resize each tab so that the tabs will completely fill the
     * tab strip (defaults to false).  Setting this to true may cause specific widths that might be set per tab to
     * be overridden in order to fit them all into view (although <b class='link' title='#minTabWidth'>minTabWidth</b> will always be honored).
     */
    public var resizeTabs  : Boolean;
    /**
     * @cfg {Boolean} enableTabScroll True to enable scrolling to tabs that may be invisible due to overflowing the
     * overall TabPanel width. Only available with tabPosition:'top' (defaults to false).
     */
    public var enableTabScroll  : Boolean;
    /**
     * @cfg {Number} scrollIncrement The number of pixels to scroll each time a tab scroll button is pressed
     * (defaults to <code>100</code>, or if <code><b class='link' title='#resizeTabs'>resizeTabs</b> = true</code>, the calculated tab width).  Only
     * applies when <code><b class='link' title='#enableTabScroll'>enableTabScroll</b> = true</code>.
     */
    public var scrollIncrement  : Number;
    /**
     * @cfg {Number} scrollRepeatInterval Number of milliseconds between each scroll while a tab scroll button is
     * continuously pressed (defaults to <code>400</code>).
     */
    public var scrollRepeatInterval  : Number;
    /**
     * @cfg {Float} scrollDuration The number of milliseconds that each scroll animation should last (defaults
     * to <code>.35</code>). Only applies when <code><b class='link' title='#animScroll'>animScroll</b> = true</code>.
     */
    public var scrollDuration  : Number;
    /**
     * @cfg {Boolean} animScroll True to animate tab scrolling so that hidden tabs slide smoothly into view (defaults
     * to <code>true</code>).  Only applies when <code><b class='link' title='#enableTabScroll'>enableTabScroll</b> = true</code>.
     */
    public var animScroll  : Boolean;
    /**
     * @cfg {String} tabPosition The position where the tab strip should be rendered (defaults to <code>'top'</code>).
     * The only other supported value is <code>'bottom'</code>.  <b>Note</b>: tab scrolling is only supported for
     * <code>tabPosition: 'top'</code>.
     */
    public var tabPosition  : String;
    /**
     * @cfg {String} baseCls The base CSS class applied to the panel (defaults to <code>'x-tab-panel'</code>).
     */
    //public var baseCls  : String;
    /**
     * @cfg {Boolean} autoTabs
     * <p><code>true</code> to query the DOM for any divs with a class of 'x-tab' to be automatically converted
     * to tabs and added to this panel (defaults to <code>false</code>).  Note that the query will be executed within
     * the scope of the container element only (so that multiple tab panels from markup can be supported via this
     * method).</p>
     * <p>This method is only possible when the markup is structured correctly as a container with nested divs
     * containing the class <code>'x-tab'</code>. To create TabPanels without these limitations, or to pull tab content
     * from other elements on the page, see the example at the top of the class for generating tabs from markup.</p>
     * <p>There are a couple of things to note when using this method:<ul>
     * <li>When using the <code>autoTabs</code> config (as opposed to passing individual tab configs in the TabPanel's
     * <b class='link' title='#items'>items</b> collection), you must use <code><b class='link' title='#applyTo'>applyTo</b></code> to correctly use the specified <code>id</code>
     * as the tab container. The <code>autoTabs</code> method <em>replaces</em> existing content with the TabPanel
     * components.</li>
     * <li>Make sure that you set <code><b class='link' title='#deferredRender'>deferredRender</b>: false</code> so that the content elements for each
     * tab will be rendered into the TabPanel immediately upon page load, otherwise they will not be transformed
     * until each tab is activated and will be visible outside the TabPanel.</li>
     * </ul>Example usage:</p>
     * <pre><code>
var tabs = new ext.TabPanel({
    applyTo&#58; 'my-tabs',
    activeTab&#58; 0,
    deferredRender&#58; false,
    autoTabs&#58; true
});

&#47;/ This markup will be converted to a TabPanel from the code above
&lt;div id="my-tabs">
    &lt;div class="x-tab" title="Tab 1">A simple tab&lt;/div>
    &lt;div class="x-tab" title="Tab 2">Another one&lt;/div>
&lt;/div>
</code></pre>
     */
    public var autoTabs  : Boolean;
    /**
     * @cfg {String} autoTabSelector The CSS selector used to search for tabs in existing markup when
     * <code><b class='link' title='#autoTabs'>autoTabs</b> = true</code> (defaults to <code>'div.x-tab'</code>).  This can be any valid selector
     * supported by <b class='link'>ext.DomQuery#select</b>. Note that the query will be executed within the scope of this
     * tab panel only (so that multiple tab panels from markup can be supported on a page).
     */
    public var autoTabSelector  : String;
    /**
     * @cfg {String/Number} activeTab A string id or the numeric index of the tab that should be initially
     * activated on render (defaults to none).
     */
    public var activeTab  : *;
    /**
     * @cfg {Number} tabMargin The number of pixels of space to calculate into the sizing and scrolling of
     * tabs. If you change the margin in CSS, you will need to update this value so calculations are correct
     * with either <code><b class='link' title='#resizeTabs'>resizeTabs</b></code> or scrolling tabs. (defaults to <code>2</code>)
     */
    public var tabMargin  : Number;
    /**
     * @cfg {Boolean} plain </code>true</code> to render the tab strip without a background container image
     * (defaults to <code>false</code>).
     */
    public var plain  : Boolean;
    /**
     * @cfg {Number} wheelIncrement For scrolling tabs, the number of pixels to increment on mouse wheel
     * scrolling (defaults to <code>20</code>).
     */
    public var wheelIncrement  : Number;
    public var idDelimiter ;
    protected var itemCls ;
    //public var elements ;
    //public var headerAsText ;
    public var frame ;
    public var hideBorders ;
    override protected native function initComponent() : void;
        /**
         * @cfg {Object} layoutConfig
         * TabPanel implicitly uses <b class='link'>Ext.layout.CardLayout</b> as its layout manager.
         * <code>layoutConfig</code> may be used to configure this layout manager.
         * <code><b class='link' title='#deferredRender'>deferredRender</b></code> and <code><b class='link' title='#layoutOnTabChange'>layoutOnTabChange</b></code>
         * configured on the TabPanel will be applied as configs to the layout manager.
         */
    public var layoutConfig : Object;
    override protected native function onRender(container : Element, position : Element) : void;
        /**
         * @cfg {Template/XTemplate} itemTpl <p>(Optional) A <b class='link' title='ext.Template'>Template</b> or
         * <b class='link' title='ext.XTemplate'>XTemplate</b> which may be provided to process the data object returned from
         * <code><b class='link' title='#getTemplateArgs'>getTemplateArgs</b></code> to produce a clickable selector element in the tab strip.</p>
         * <p>The main element created should be a <code>&lt;li></code> element. In order for a click event on
         * a selector element to be connected to its item, it must take its <i>id</i> from the TabPanel's
         * native <code><b class='link' title='#getTemplateArgs'>getTemplateArgs</b></code>.</p>
         * <p>The child element which contains the title text must be marked by the CSS class
         * <code>x-tab-strip-inner</code>.</p>
         * <p>To enable closability, the created element should contain an element marked by the CSS class
         * <code>x-tab-strip-close</code>.</p>
         * <p>If a custom <code>itemTpl</code> is supplied, it is the developer's responsibility to create CSS
         * style rules to create the desired appearance.</p>
         * Below is an example of how to create customized tab selector items:<pre><code>
new ext.TabPanel({
    renderTo&#58; document.body,
    minTabWidth&#58; 115,
    tabWidth&#58; 135,
    enableTabScroll&#58; true,
    width&#58; 600,
    height&#58; 250,
    defaults&#58; {autoScroll:true},
    itemTpl&#58; new ext.XTemplate(
    '&lt;li class="{cls}" id="{id}" style="overflow:hidden">',
         '&lt;tpl if="closable">',
            '&lt;a class="x-tab-strip-close" onclick="return false;">&lt;/a>',
         '&lt;/tpl>',
         '&lt;a class="x-tab-right" href="#" onclick="return false;" style="padding-left:6px">',
            '&lt;em class="x-tab-left">',
                '&lt;span class="x-tab-strip-inner">',
                    '&lt;img src="{src}" style="float:left;margin:3px 3px 0 0">',
                    '&lt;span style="margin-left:20px" class="x-tab-strip-text {iconCls}">{text} {extra}&lt;/span>',
                '&lt;/span>',
            '&lt;/em>',
        '&lt;/a>',
    '&lt;/li>'
    ),
    getTemplateArgs&#58; function(item) {
&#47;/      Call the native method to collect the base data. Like the ID!
        var result = ext.TabPanel.prototype.getTemplateArgs.call(this, item);

&#47;/      Add stuff used in our template
        return Ext.apply(result, {
            closable&#58; item.closable,
            src&#58; item.iconSrc,
            extra&#58; item.extraText || ''
        });
    },
    items&#58; [{
        title&#58; 'New Tab 1',
        iconSrc&#58; '../shared/icons/fam/grid.png',
        html&#58; 'Tab Body 1',
        closable&#58; true
    }, {
        title&#58; 'New Tab 2',
        iconSrc&#58; '../shared/icons/fam/grid.png',
        html&#58; 'Tab Body 2',
        extraText&#58; 'Extra stuff in the tab button'
    }]
});
</code></pre>
         */
    public var itemTpl : Template;
    override protected native function afterRender() : void;
    override protected native function initEvents() : void;
    protected native function findTargets(e) : void;
    protected native function onStripMouseDown(e) : void;
    protected native function onStripContextMenu(e) : void;
    /**
     * True to scan the markup in this tab panel for <code><b class='link' title='#autoTabs'>autoTabs</b></code> using the
     * <code><b class='link' title='#autoTabSelector'>autoTabSelector</b></code>
     * @param removeExisting True to remove existing tabs
     */
    public native function readTabs(removeExisting : Boolean) : void;
    protected native function initTab(item, index) : void;
    /**
     * <p>Provides template arguments for rendering a tab selector item in the tab strip.</p>
     * <p>This method returns an object hash containing properties used by the TabPanel's <code><b class='link' title='#itemTpl'>itemTpl</b></code>
     * to create a formatted, clickable tab selector element. The properties which must be returned
     * are:</p><div class="mdetail-params"><ul>
     * <li><b>id</b> : String<div class="sub-desc">A unique identifier which links to the item</div></li>
     * <li><b>text</b> : String<div class="sub-desc">The text to display</div></li>
     * <li><b>cls</b> : String<div class="sub-desc">The CSS class name</div></li>
     * <li><b>iconCls</b> : String<div class="sub-desc">A CSS class to provide appearance for an icon.</div></li>
     * </ul></div>
     * @param item The <b class='link' title='ext.BoxComponent'>BoxComponent</b> for which to create a selector element in the tab strip.
     * @return An object hash containing the properties required to render the selector element.
     */
    public native function getTemplateArgs(item : BoxComponent) : Object;
    protected native function onAdd(tp, item, index) : void;
    override protected native function onBeforeAdd(item) : void;
    protected native function onRemove(tp, item) : void;
    protected native function onBeforeShowItem(item) : void;
    protected native function onItemDisabled(item) : void;
    protected native function onItemEnabled(item) : void;
    protected native function onItemTitleChanged(item) : void;
    protected native function onItemIconChanged(item, iconCls, oldCls) : void;
    /**
     * Gets the DOM element for the tab strip item which activates the child panel with the specified
     * ID. Access this to change the visual treatment of the item, for example by changing the CSS class name.
     * @param tab The tab component, or the tab's index, or the tabs id or itemId.
     * @return The DOM node
     */
    public native function getTabEl(tab : *) : HTMLElement;
    //override protected native function onResize() : void;
    /**
     * Suspends any internal calculations or scrolling while doing a bulk operation. See <b class='link' title='#endUpdate'>endUpdate</b>
     */
    public native function beginUpdate() : void;
    /**
     * Resumes calculations and scrolling at the end of a bulk operation. See <b class='link' title='#beginUpdate'>beginUpdate</b>
     */
    public native function endUpdate() : void;
    /**
     * Hides the tab strip item for the passed tab
     * @param item The tab index, id or item
     */
    public native function hideTabStripItem(item : *) : void;
    /**
     * Unhides the tab strip item for the passed tab
     * @param item The tab index, id or item
     */
    public native function unhideTabStripItem(item : *) : void;
    protected native function delegateUpdates() : void;
    protected native function autoSizeTabs() : void;
    override protected native function adjustBodyWidth(w) : void;
    /**
     * Sets the specified tab as the active tab. This method fires the <b class='link' title='#beforetabchange'>beforetabchange</b> event which
     * can <code>return false</code> to cancel the tab change.
     * @param item
     * The id or tab Panel to activate. This parameter may be any of the following:
     * <div><ul class="mdetail-params">
     * <li>a <b><code>String</code></b> : representing the <code><b class='link' title='ext.Component#itemId'>itemId</b></code>
     * or <code><b class='link' title='ext.Component#id'>id</b></code> of the child component </li>
     * <li>a <b><code>Number</code></b> : representing the position of the child component
     * within the <code><b class='link' title='ext.Container#items'>items</b></code> <b>property</b></li>
     * </ul></div>
     * <p>For additional information see <b class='link'>Ext.util.MixedCollection#get</b>.
     */
    public native function setActiveTab(item : *) : void;
    /**
     * Gets the currently active tab.
     * @return The active tab
     */
    public native function getActiveTab() : Panel;
    /**
     * Gets the specified tab by id.
     * @param id The tab id
     * @return The tab
     */
    public native function getItem(id : String) : Panel;
    protected native function autoScrollTabs() : void;
    protected native function createScrollers() : void;
    protected native function getScrollWidth() : void;
    protected native function getScrollPos() : void;
    protected native function getScrollArea() : void;
    protected native function getScrollAnim() : void;
    protected native function getScrollIncrement() : void;
    /**
     * Scrolls to a particular tab if tab scrolling is enabled
     * @param item The item to scroll to
     * @param animate True to enable animations
     */
    public native function scrollToTab(item : Panel, animate : Boolean) : void;
    protected native function scrollTo(pos, animate) : void;
    public native function onWheel(e) : void;
    protected native function onScrollRight() : void;
    protected native function onScrollLeft() : void;
    protected native function updateScrollButtons() : void;
    override protected native function beforeDestroy() : void;
    /**
     * @cfg {Boolean} collapsible
     * @hide
     */
    /**
     * @cfg {String} header
     * @hide
     */
    /**
     * @cfg {Boolean} headerAsText
     * @hide
     */
    /**
     * @property header
     * @hide
     */
    /**
     * @property title
     * @hide
     */
    /**
     * @cfg {Array} tools
     * @hide
     */
    /**
     * @cfg {Array} toolTemplate
     * @hide
     */
    /**
     * @cfg {Boolean} hideCollapseTool
     * @hide
     */
    /**
     * @cfg {Boolean} titleCollapse
     * @hide
     */
    /**
     * @cfg {Boolean} collapsed
     * @hide
     */
    /**
     * @cfg {String} layout
     * @hide
     */
    /**
     * @cfg {Boolean} preventBodyReset
     * @hide
     */
/**
 * See <b class='link' title='#setActiveTab'>setActiveTab</b>. Sets the specified tab as the active tab. This method fires
 * the <b class='link' title='#beforetabchange'>beforetabchange</b> event which can <code>return false</code> to cancel the tab change.
 * @param tab The id or tab Panel to activate
 * @method activate
 */
public native function AccessStack (tab : *) : void;
}}
