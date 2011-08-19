package ext {
import ext.config.tabpanel;

import js.HTMLElement;

/**
 * Fires before the active tab changes. Handlers can <tt>return false</tt> to cancel the tab change.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.TabPanel</code>

 *       </li>

 *       <li>
 *           <code>newTab:ext.Panel</code>
 The tab being activated
 *       </li>

 *       <li>
 *           <code>currentTab:ext.Panel</code>
 The current active tab
 *       </li>

 * </ul>
 */
[Event(name="beforetabchange")]

/**
 * Relays the contextmenu event from a tab selector element in the tab strip.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.TabPanel</code>

 *       </li>

 *       <li>
 *           <code>tab:ext.Panel</code>
 The target tab
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="contextmenu")]

/**
 * Fires after the active tab has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.TabPanel</code>

 *       </li>

 *       <li>
 *           <code>tab:ext.Panel</code>
 The new active tab
 *       </li>

 * </ul>
 */
[Event(name="tabchange")]


/**
 * A basic tab container. TabPanels can be used exactly like a standard <a href="Ext.Panel.html">Ext.Panel</a> for layout purposes, but also have special support for containing child Components (<tt><a href="output/Ext.Container.html#Ext.Container-items">items</a></tt>) that are managed using a <a href="Ext.layout.CardLayout.html">CardLayout layout manager</a>, and displayed as separate tabs.
 <b>Note:</b> By default, a tab's close tool <i>destroys</i> the child tab Component and all its descendants. This makes the child tab Component, and all its descendants <b>unusable</b>. To enable re-use of a tab, configure the TabPanel with <b><code><a href="output/Ext.TabPanel.html#Ext.TabPanel-autoDestroy">autoDestroy: false</a></code></b>. <p style="font-weight: bold"><u>TabPanel header/footer elements</u></p><p>TabPanels use their <a href="output/Ext.Panel.html#Ext.Panel-header">header</a> or <a href="output/Ext.Panel.html#Ext.Panel-footer">footer</a> element (depending on the <a href="output/Ext.TabPanel.html#Ext.TabPanel-tabPosition">tabPosition</a> configuration) to accommodate the tab selector buttons. This means that a TabPanel will not display any configured title, and will not display any configured header <a href="output/Ext.Panel.html#Ext.Panel-tools">tools</a>.</p><p>To display a header, embed the TabPanel in a <a href="Ext.Panel.html">Panel</a> which uses <b><tt><a href="output/Ext.Container.html#Ext.Container-layout">layout:'fit'</a></tt></b>.</p><p style="font-weight: bold"><u>Tab Events</u></p><p>There is no actual tab class — each tab is simply a <a href="Ext.BoxComponent.html">Component</a> such as a <a href="Ext.Panel.html">Panel</a>. However, when rendered in a TabPanel, each child Component can fire additional events that only exist for tabs and are not available from other Components. These events are:</p><div><ul class="mdetail-params"><li><tt><b><a href="output/Ext.Panel.html#Ext.Panel-activate">activate</a></b></tt> : Fires when this Component becomes the active tab.</li><li><tt><b><a href="output/Ext.Panel.html#Ext.Panel-deactivate">deactivate</a></b></tt> : Fires when the Component that was the active tab becomes deactivated.</li><li><tt><b><a href="output/Ext.Panel.html#Ext.Panel-beforeclose">beforeclose</a></b></tt> : Fires when the user clicks on the close tool of a closeable tab. May be vetoed by returning <code>false</code> from a handler.</li><li><tt><b><a href="output/Ext.Panel.html#Ext.Panel-close">close</a></b></tt> : Fires a closeable tab has been closed by the user.</li></ul></div><p style="font-weight: bold"><u>Creating TabPanels from Code</u></p><p>TabPanels can be created and rendered completely in code, as in this example:</p><pre><code>var tabs = new Ext.TabPanel({
 renderTo: Ext.getBody(),
 activeTab: 0,
 items: [{
 title: 'Tab 1',
 html: 'A simple tab'
 },{
 title: 'Tab 2',
 html: 'Another one'
 }]
 });
 </code></pre><p style="font-weight: bold"><u>Creating TabPanels from Existing Markup</u></p><p>TabPanels can also be rendered from pre-existing markup in a couple of ways.</p><div><ul class="mdetail-params"><li>Pre-Structured Markup</li><li style="list-style: none"><div class="sub-desc"><p>A container div with one or more nested tab divs with class <tt>'x-tab'</tt> can be rendered entirely from existing markup (See the <a href="output/Ext.TabPanel.html#Ext.TabPanel-autoTabs">autoTabs</a> example).</p></div></li><li>Un-Structured Markup</li><li style="list-style: none"><div class="sub-desc"><p>A TabPanel can also be rendered from markup that is not strictly structured by simply specifying by id which elements should be the container and the tabs. Using this method tab content can be pulled from different elements within the page by id regardless of page structure. For example:</p><pre><code>var tabs = new Ext.TabPanel({
 renderTo: 'my-tabs',
 activeTab: 0,
 items:[
 {contentEl:'tab1', title:'Tab 1'},
 {contentEl:'tab2', title:'Tab 2'}
 ]
 });

 // Note that the tabs do not have to be nested within the container (although they can be)
 &lt;div id="my-tabs"&gt;&lt;/div&gt;
 &lt;div id="tab1" class="x-hide-display"&gt;A simple tab&lt;/div&gt;
 &lt;div id="tab2" class="x-hide-display"&gt;Another one&lt;/div&gt;
 </code></pre>Note that the tab divs in this example contain the class <tt>'x-hide-display'</tt> so that they can be rendered deferred without displaying outside the tabs. You could alternately set <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-deferredRender">deferredRender</a> = false</tt> to render all content tabs on page load.</div></li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tabpanel' / the EXML element &lt;tabpanel>.</p>
 * @see ext.config.tabpanel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#cls-Ext.TabPanel Ext JS source
 */
public class TabPanel extends Panel {

  /**
   *
   *
   * @param config The configuration options
   * @see ext.config.tabpanel
   */
  public function TabPanel(config:tabpanel) {
    super(null);
  }

  /**
   True to animate tab scrolling so that hidden tabs slide smoothly into view (defaults to <tt>true</tt>). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-enableTabScroll">enableTabScroll</a> = true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animScroll():Boolean;

  /**
   The CSS selector used to search for tabs in existing markup when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-autoTabs">autoTabs</a> = true</tt> (defaults to <tt>'div.x-tab'</tt>). This can be any valid selector supported by <a href="output/Ext.DomQuery.html#Ext.DomQuery-select">Ext.DomQuery.select</a>. Note that the query will be executed within the scope of this tab panel only (so that multiple tab panels from markup can be supported on a page).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoTabSelector():String;

  /**
   <tt>true</tt> to query the DOM for any divs with a class of 'x-tab' to be automatically converted to tabs and added to this panel (defaults to <tt>false</tt>). Note that the query will be executed within the scope of the container element only (so that multiple tab panels from markup can be supported via this method).
   <p>This method is only possible when the markup is structured correctly as a container with nested divs containing the class <tt>'x-tab'</tt>. To create TabPanels without these limitations, or to pull tab content from other elements on the page, see the example at the top of the class for generating tabs from markup.</p><p>There are a couple of things to note when using this method:</p><ul><li>When using the <tt>autoTabs</tt> config (as opposed to passing individual tab configs in the TabPanel's <a href="output/Ext.TabPanel.html#Ext.TabPanel-items">items</a> collection), you must use <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-applyTo">applyTo</a></tt> to correctly use the specified <tt>id</tt> as the tab container. The <tt>autoTabs</tt> method <em>replaces</em> existing content with the TabPanel components.</li><li>Make sure that you set <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-deferredRender">deferredRender</a>: false</tt> so that the content elements for each tab will be rendered into the TabPanel immediately upon page load, otherwise they will not be transformed until each tab is activated and will be visible outside the TabPanel.</li></ul>Example usage:<br/><br/> <pre><code>var tabs = new Ext.TabPanel({
   applyTo: 'my-tabs',
   activeTab: 0,
   deferredRender: false,
   autoTabs: true
   });

   // This markup will be converted to a TabPanel from the code above
   &lt;div id="my-tabs"&gt;
   &lt;div class="x-tab" title="Tab 1"&gt;A simple tab&lt;/div&gt;
   &lt;div class="x-tab" title="Tab 2"&gt;Another one&lt;/div&gt;
   &lt;/div&gt;
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoTabs():Boolean;

  /**
   <tt>true</tt> by default to defer the rendering of child <tt><a href="output/Ext.Container.html#Ext.Container-items">items</a></tt> to the browsers DOM until a tab is activated. <tt>false</tt> will render all contained <tt><a href="output/Ext.Container.html#Ext.Container-items">items</a></tt> as soon as the <a href="Ext.layout.CardLayout.html">layout</a> is rendered. If there is a significant amount of content or a lot of heavy controls being rendered into panels that are not displayed by default, setting this to <tt>true</tt> might improve performance.
   <br/><p>The <tt>deferredRender</tt> property is internally passed to the layout manager for TabPanels (<a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>) as its <a href="output/Ext.layout.CardLayout.html#Ext.layout.CardLayout-deferredRender">Ext.layout.CardLayout.deferredRender</a> configuration value.</p><br/><p><b>Note</b>: leaving <tt>deferredRender</tt> as <tt>true</tt> means that the content within an unactivated tab will not be available. For example, this means that if the TabPanel is within a <a href="Ext.form.FormPanel.html">form</a>, then until a tab is activated, any Fields within unactivated tabs will not be rendered, and will therefore not be submitted and will not be available to either <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-getValues">getValues</a> or <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get deferredRender():Boolean;

  /**
   True to enable scrolling to tabs that may be invisible due to overflowing the overall TabPanel width. Only available with tabPosition:'top' (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableTabScroll():Boolean;

  /**
   (Optional) A <a href="Ext.Template.html">Template</a> or <a href="Ext.XTemplate.html">XTemplate</a> which may be provided to process the data object returned from <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-getTemplateArgs">getTemplateArgs</a></tt> to produce a clickable selector element in the tab strip.
   <p>The main element created should be a <tt>&lt;li&gt;</tt> element. In order for a click event on a selector element to be connected to its item, it must take its <i>id</i> from the TabPanel's native <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-getTemplateArgs">getTemplateArgs</a></tt>.</p><p>The child element which contains the title text must be marked by the CSS class <tt>x-tab-strip-inner</tt>.</p><p>To enable closability, the created element should contain an element marked by the CSS class <tt>x-tab-strip-close</tt>.</p><p>If a custom <tt>itemTpl</tt> is supplied, it is the developer's responsibility to create CSS style rules to create the desired appearance.</p>Below is an example of how to create customized tab selector items:<pre><code>new Ext.TabPanel({
   renderTo: document.body,
   minTabWidth: 115,
   tabWidth: 135,
   enableTabScroll: true,
   width: 600,
   height: 250,
   defaults: {autoScroll:true},
   itemTpl: new Ext.XTemplate(
   '&lt;li class="{cls}" id="{id}" style="overflow:hidden"&gt;',
   '&lt;tpl if="closable"&gt;',
   '&lt;a class="x-tab-strip-close"&gt;&lt;/a&gt;',
   '&lt;/tpl&gt;',
   '&lt;a class="x-tab-right" href="#" style="padding-left:6px"&gt;',
   '&lt;em class="x-tab-left"&gt;',
   '&lt;span class="x-tab-strip-inner"&gt;',
   '&lt;img src="{src}" style="float:left;margin:3px 3px 0 0"&gt;',
   '&lt;span style="margin-left:20px" class="x-tab-strip-text {iconCls}"&gt;{text} {extra}&lt;/span&gt;',
   '&lt;/span&gt;',
   '&lt;/em&gt;',
   '&lt;/a&gt;',
   '&lt;/li&gt;'
   ),
   getTemplateArgs: function(item) {
   //      Call the native method to collect the base data. Like the ID!
   var result = Ext.TabPanel.prototype.getTemplateArgs.call(this, item);

   //      Add stuff used in our template
   return Ext.apply(result, {
   closable: item.closable,
   src: item.iconSrc,
   extra: item.extraText || ''
   });
   },
   items: [{
   title: 'New Tab 1',
   iconSrc: '../shared/icons/fam/grid.png',
   html: 'Tab Body 1',
   closable: true
   }, {
   title: 'New Tab 2',
   iconSrc: '../shared/icons/fam/grid.png',
   html: 'Tab Body 2',
   extraText: 'Extra stuff in the tab button'
   }]
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemTpl():Template;

  /**
   Set to true to force a layout of the active tab when the tab is changed. Defaults to false. See <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>.<code><a href="output/Ext.layout.CardLayout.html#Ext.layout.CardLayout-layoutOnCardChange">layoutOnCardChange</a></code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get layoutOnTabChange():Boolean;

  /**
   The minimum width in pixels for each tab when <a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a> = true (defaults to 30).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minTabWidth():Number;

  /**
   true to render the tab strip without a background container image (defaults to <tt>false</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get plain():Boolean;

  /**
   True to automatically resize each tab so that the tabs will completely fill the tab strip (defaults to false). Setting this to true may cause specific widths that might be set per tab to be overridden in order to fit them all into view (although <a href="output/Ext.TabPanel.html#Ext.TabPanel-minTabWidth">minTabWidth</a> will always be honored).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get resizeTabs():Boolean;

  /**
   The number of milliseconds that each scroll animation should last (defaults to <tt>.35</tt>). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-animScroll">animScroll</a> = true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollDuration():Number;

  /**
   The number of pixels to scroll each time a tab scroll button is pressed (defaults to <tt>100</tt>, or if <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a> = true</tt>, the calculated tab width). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-enableTabScroll">enableTabScroll</a> = true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollIncrement():Number;

  /**
   Number of milliseconds between each scroll while a tab scroll button is continuously pressed (defaults to <tt>400</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scrollRepeatInterval():Number;

  /**
   <b>This config option is used on <u>child Components</u> of ths TabPanel.</b> A CSS class name applied to the tab strip item representing the child Component, allowing special styling to be applied.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabCls():String;

  /**
   The number of pixels of space to calculate into the sizing and scrolling of tabs. If you change the margin in CSS, you will need to update this value so calculations are correct with either <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a></tt> or scrolling tabs. (defaults to <tt>2</tt>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabMargin():Number;

  /**
   The position where the tab strip should be rendered (defaults to <tt>'top'</tt>). The only other supported value is <tt>'bottom'</tt>. <b>Note</b>: tab scrolling is only supported for <tt>tabPosition: 'top'</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabPosition():String;

  /**
   The initial width in pixels of each new tab (defaults to 120).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabWidth():Number;

  /**
   For scrolling tabs, the number of pixels to increment on mouse wheel scrolling (defaults to <tt>20</tt>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get wheelIncrement():Number;

  /**
   * See <a href="output/Ext.TabPanel.html#Ext.TabPanel-setActiveTab">setActiveTab</a>. Sets the specified tab as the active tab. This method fires the <a href="output/Ext.TabPanel.html#Ext.TabPanel-beforetabchange">beforetabchange</a> event which can <tt>return false</tt> to cancel the tab change.
   *
   * @param tab The id or tab Panel to activate
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-activate Ext JS source
   */
  public native function activate(tab:*):void;

  /**
   * Suspends any internal calculations or scrolling while doing a bulk operation. See <a href="output/Ext.TabPanel.html#Ext.TabPanel-endUpdate">endUpdate</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-beginUpdate Ext JS source
   */
  public native function beginUpdate():void;

  /**
   * Resumes calculations and scrolling at the end of a bulk operation. See <a href="output/Ext.TabPanel.html#Ext.TabPanel-beginUpdate">beginUpdate</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-endUpdate Ext JS source
   */
  public native function endUpdate():void;

  /**
   * Returns the Component which is the currently active tab. <b>Note that before the TabPanel first activates a child Component, this method will return whatever was configured in the <a href="output/Ext.TabPanel.html#Ext.TabPanel-activeTab">activeTab</a> config option.</b>
   *
   * @return The currently active child Component if one <i>is</i> active, or the <a href="output/Ext.TabPanel.html#Ext.TabPanel-activeTab">activeTab</a> config value.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getActiveTab Ext JS source
   */
  public native function getActiveTab():Panel;

  /**
   * Gets the specified tab by id.
   *
   * @param id The tab id
   * @return The tab
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getItem Ext JS source
   */
  public native function getItem(id:String):Panel;

  /**
   *
   *
   * @return the client width of the scroll area
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getScrollArea Ext JS source
   */
  protected native function getScrollArea():int;

  /**
   * Gets the DOM element for the tab strip item which activates the child panel with the specified ID. Access this to change the visual treatment of the item, for example by changing the CSS class name.
   *
   * @param tab The tab component, or the tab's index, or the tabs id or itemId.
   * @return The DOM node
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getTabEl Ext JS source
   */
  public native function getTabEl(tab:*):HTMLElement;

  /**
   * Provides template arguments for rendering a tab selector item in the tab strip.
   <p>This method returns an object hash containing properties used by the TabPanel's <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-itemTpl">itemTpl</a></tt> to create a formatted, clickable tab selector element. The properties which must be returned are:</p><div class="mdetail-params"><ul><li><b>id</b> : String<div class="sub-desc">A unique identifier which links to the item</div></li><li><b>text</b> : String<div class="sub-desc">The text to display</div></li><li><b>cls</b> : String<div class="sub-desc">The CSS class name</div></li><li><b>iconCls</b> : String<div class="sub-desc">A CSS class to provide appearance for an icon.</div></li></ul></div>
   *
   * @param item The <a href="Ext.BoxComponent.html">BoxComponent</a> for which to create a selector element in the tab strip.
   * @return An object hash containing the properties required to render the selector element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-getTemplateArgs Ext JS source
   */
  public native function getTemplateArgs(item:BoxComponent):Object;

  /**
   * Hides the tab strip item for the passed tab
   *
   * @param item The tab index, id or item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-hideTabStripItem Ext JS source
   */
  public native function hideTabStripItem(item:*):void;

  /**
   * True to scan the markup in this tab panel for <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-autoTabs">autoTabs</a></tt> using the <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-autoTabSelector">autoTabSelector</a></tt>
   *
   * @param removeExisting True to remove existing tabs
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-readTabs Ext JS source
   */
  public native function readTabs(removeExisting:Boolean):void;

  /**
   * Scrolls to a particular tab if tab scrolling is enabled
   *
   * @param item The item to scroll to
   * @param animate True to enable animations
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-scrollToTab Ext JS source
   */
  public native function scrollToTab(item:Panel, animate:Boolean):void;

  /**
   * Sets the specified tab as the active tab. This method fires the <a href="output/Ext.TabPanel.html#Ext.TabPanel-beforetabchange">beforetabchange</a> event which can <tt>return false</tt> to cancel the tab change.
   *
   * @param item The id or tab Panel to activate. This parameter may be any of the following: <div><ul class="mdetail-params"><li>a <b><tt>String</tt></b> : representing the <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> of the child component</li><li>a <b><tt>Number</tt></b> : representing the position of the child component within the <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> <b>property</b></li></ul></div><p>For additional information see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-setActiveTab Ext JS source
   */
  public native function setActiveTab(item:*):void;

  /**
   * Unhides the tab strip item for the passed tab
   *
   * @param item The tab index, id or item
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TabPanel.html#method-Ext.TabPanel-unhideTabStripItem Ext JS source
   */
  public native function unhideTabStripItem(item:*):void;

}
}
    