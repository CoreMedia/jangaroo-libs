package ext.config {

import ext.Template;

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
 * <p>This class represents the xtype 'tabpanel' and serves as a
 * typed config object for constructor of class TabPanel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.TabPanel
 */
[ExtConfig(target="ext.TabPanel", xtype="tabpanel")]
public class tabpanel extends panel {

  public function tabpanel(config:Object = null) {

    super(config);
  }


  /**
   A string id or the numeric index of the tab that should be initially activated on render (defaults to undefined).
   */
  public native function get activeTab():*;

  /**
   * @private
   */
  public native function set activeTab(value:*):void;

  /**
   True to animate tab scrolling so that hidden tabs slide smoothly into view (defaults to <tt>true</tt>). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-enableTabScroll">enableTabScroll</a> = true</tt>.
   */
  public native function get animScroll():Boolean;

  /**
   * @private
   */
  public native function set animScroll(value:Boolean):void;

  /**
   The CSS selector used to search for tabs in existing markup when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-autoTabs">autoTabs</a> = true</tt> (defaults to <tt>'div.x-tab'</tt>). This can be any valid selector supported by <a href="output/Ext.DomQuery.html#Ext.DomQuery-select">Ext.DomQuery.select</a>. Note that the query will be executed within the scope of this tab panel only (so that multiple tab panels from markup can be supported on a page).
   */
  public native function get autoTabSelector():String;

  /**
   * @private
   */
  public native function set autoTabSelector(value:String):void;

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
   */
  public native function get autoTabs():Boolean;

  /**
   * @private
   */
  public native function set autoTabs(value:Boolean):void;

  /**
   The base CSS class applied to the panel (defaults to <tt>'x-tab-panel'</tt>).
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   <tt>true</tt> by default to defer the rendering of child <tt><a href="output/Ext.Container.html#Ext.Container-items">items</a></tt> to the browsers DOM until a tab is activated. <tt>false</tt> will render all contained <tt><a href="output/Ext.Container.html#Ext.Container-items">items</a></tt> as soon as the <a href="Ext.layout.CardLayout.html">layout</a> is rendered. If there is a significant amount of content or a lot of heavy controls being rendered into panels that are not displayed by default, setting this to <tt>true</tt> might improve performance.
   <br/><p>The <tt>deferredRender</tt> property is internally passed to the layout manager for TabPanels (<a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>) as its <a href="output/Ext.layout.CardLayout.html#Ext.layout.CardLayout-deferredRender">Ext.layout.CardLayout.deferredRender</a> configuration value.</p><br/><p><b>Note</b>: leaving <tt>deferredRender</tt> as <tt>true</tt> means that the content within an unactivated tab will not be available. For example, this means that if the TabPanel is within a <a href="Ext.form.FormPanel.html">form</a>, then until a tab is activated, any Fields within unactivated tabs will not be rendered, and will therefore not be submitted and will not be available to either <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-getValues">getValues</a> or <a href="output/Ext.form.BasicForm.html#Ext.form.BasicForm-setValues">setValues</a>.</p>
   */
  public native function get deferredRender():Boolean;

  /**
   * @private
   */
  public native function set deferredRender(value:Boolean):void;

  /**
   True to enable scrolling to tabs that may be invisible due to overflowing the overall TabPanel width. Only available with tabPosition:'top' (defaults to false).
   */
  public native function get enableTabScroll():Boolean;

  /**
   * @private
   */
  public native function set enableTabScroll(value:Boolean):void;

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
   */
  public native function get itemTpl():Template;

  /**
   * @private
   */
  public native function set itemTpl(value:Template):void;

  /**
   TabPanel implicitly uses <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> as its layout manager. <code>layoutConfig</code> may be used to configure this layout manager. <code><a href="output/Ext.TabPanel.html#Ext.TabPanel-deferredRender">deferredRender</a></code> and <code><a href="output/Ext.TabPanel.html#Ext.TabPanel-layoutOnTabChange">layoutOnTabChange</a></code> configured on the TabPanel will be applied as configs to the layout manager.
   */
  override public native function get layoutConfig():Object;

  /**
   * @private
   */
  override public native function set layoutConfig(value:Object):void;

  /**
   Set to true to force a layout of the active tab when the tab is changed. Defaults to false. See <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>.<code><a href="output/Ext.layout.CardLayout.html#Ext.layout.CardLayout-layoutOnCardChange">layoutOnCardChange</a></code>.
   */
  public native function get layoutOnTabChange():Boolean;

  /**
   * @private
   */
  public native function set layoutOnTabChange(value:Boolean):void;

  /**
   The minimum width in pixels for each tab when <a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a> = true (defaults to 30).
   */
  public native function get minTabWidth():Number;

  /**
   * @private
   */
  public native function set minTabWidth(value:Number):void;

  /**
   true to render the tab strip without a background container image (defaults to <tt>false</tt>).
   */
  public native function get plain():Boolean;

  /**
   * @private
   */
  public native function set plain(value:Boolean):void;

  /**
   True to automatically resize each tab so that the tabs will completely fill the tab strip (defaults to false). Setting this to true may cause specific widths that might be set per tab to be overridden in order to fit them all into view (although <a href="output/Ext.TabPanel.html#Ext.TabPanel-minTabWidth">minTabWidth</a> will always be honored).
   */
  public native function get resizeTabs():Boolean;

  /**
   * @private
   */
  public native function set resizeTabs(value:Boolean):void;

  /**
   The number of milliseconds that each scroll animation should last (defaults to <tt>.35</tt>). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-animScroll">animScroll</a> = true</tt>.
   */
  public native function get scrollDuration():Number;

  /**
   * @private
   */
  public native function set scrollDuration(value:Number):void;

  /**
   The number of pixels to scroll each time a tab scroll button is pressed (defaults to <tt>100</tt>, or if <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a> = true</tt>, the calculated tab width). Only applies when <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-enableTabScroll">enableTabScroll</a> = true</tt>.
   */
  public native function get scrollIncrement():Number;

  /**
   * @private
   */
  public native function set scrollIncrement(value:Number):void;

  /**
   Number of milliseconds between each scroll while a tab scroll button is continuously pressed (defaults to <tt>400</tt>).
   */
  public native function get scrollRepeatInterval():Number;

  /**
   * @private
   */
  public native function set scrollRepeatInterval(value:Number):void;

  /**
   <b>This config option is used on <u>child Components</u> of ths TabPanel.</b> A CSS class name applied to the tab strip item representing the child Component, allowing special styling to be applied.
   */
  public native function get tabCls():String;

  /**
   * @private
   */
  public native function set tabCls(value:String):void;

  /**
   The number of pixels of space to calculate into the sizing and scrolling of tabs. If you change the margin in CSS, you will need to update this value so calculations are correct with either <tt><a href="output/Ext.TabPanel.html#Ext.TabPanel-resizeTabs">resizeTabs</a></tt> or scrolling tabs. (defaults to <tt>2</tt>)
   */
  public native function get tabMargin():Number;

  /**
   * @private
   */
  public native function set tabMargin(value:Number):void;

  /**
   The position where the tab strip should be rendered (defaults to <tt>'top'</tt>). The only other supported value is <tt>'bottom'</tt>. <b>Note</b>: tab scrolling is only supported for <tt>tabPosition: 'top'</tt>.
   */
  public native function get tabPosition():String;

  /**
   * @private
   */
  public native function set tabPosition(value:String):void;

  /**
   The initial width in pixels of each new tab (defaults to 120).
   */
  public native function get tabWidth():Number;

  /**
   * @private
   */
  public native function set tabWidth(value:Number):void;

  /**
   For scrolling tabs, the number of pixels to increment on mouse wheel scrolling (defaults to <tt>20</tt>).
   */
  public native function get wheelIncrement():Number;

  /**
   * @private
   */
  public native function set wheelIncrement(value:Number):void;


}
}
    