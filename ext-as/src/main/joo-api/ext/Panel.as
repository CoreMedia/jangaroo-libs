package ext {
import ext.config.panel;
import ext.dd.DragSource;

/**
 * Fires after the Panel has been visually activated. Note that Panels do not directly support being activated, but some Panel subclasses do (like <a href="Ext.Window.html">Ext.Window</a>). Panels which are child Components of a TabPanel fire the activate and deactivate events under the control of the TabPanel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel that has been activated.
 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 * Fires before the Panel is closed. Note that Panels do not directly support being closed, but some Panel subclasses do (like <a href="Ext.Window.html">Ext.Window</a>) or a Panel within a Ext.TabPanel. This event only applies to such subclasses. A handler can return false to cancel the close.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel being closed.
 *       </li>

 * </ul>
 */
[Event(name="beforeclose")]

/**
 * Fires before the Panel is collapsed. A handler can return false to cancel the collapse.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel being collapsed.
 *       </li>

 *       <li>
 *           <code>animate:Boolean</code>
 True if the collapse is animated, else false.
 *       </li>

 * </ul>
 */
[Event(name="beforecollapse")]

/**
 * Fires before the Panel is expanded. A handler can return false to cancel the expand.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel being expanded.
 *       </li>

 *       <li>
 *           <code>animate:Boolean</code>
 True if the expand is animated, else false.
 *       </li>

 * </ul>
 */
[Event(name="beforeexpand")]

/**
 * Fires after the Panel has been resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel which has been resized.
 *       </li>

 *       <li>
 *           <code>width:Number</code>
 The Panel body's new width.
 *       </li>

 *       <li>
 *           <code>height:Number</code>
 The Panel body's new height.
 *       </li>

 * </ul>
 */
[Event(name="bodyresize")]

/**
 * Fires after the Panel is closed. Note that Panels do not directly support being closed, but some Panel subclasses do (like <a href="Ext.Window.html">Ext.Window</a>) or a Panel within a Ext.TabPanel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel that has been closed.
 *       </li>

 * </ul>
 */
[Event(name="close")]

/**
 * Fires after the Panel has been collapsed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel that has been collapsed.
 *       </li>

 * </ul>
 */
[Event(name="collapse")]

/**
 * Fires after the Panel has been visually deactivated. Note that Panels do not directly support being deactivated, but some Panel subclasses do (like <a href="Ext.Window.html">Ext.Window</a>). Panels which are child Components of a TabPanel fire the activate and deactivate events under the control of the TabPanel.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel that has been deactivated.
 *       </li>

 * </ul>
 */
[Event(name="deactivate")]

/**
 * Fires after the Panel has been expanded.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 The Panel that has been expanded.
 *       </li>

 * </ul>
 */
[Event(name="expand")]

/**
 * Fires after the Panel icon class has been <a href="output/Ext.Panel.html#Ext.Panel-iconCls">set</a> or <a href="output/Ext.Panel.html#Ext.Panel-setIconClass">changed</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel which has had its <a href="output/Ext.Panel.html#Ext.Panel-iconCls">icon class</a> changed.
 *       </li>

 *       <li>
 *           <code>The:String</code>
 new icon class.
 *       </li>

 *       <li>
 *           <code>The:String</code>
 old icon class.
 *       </li>

 * </ul>
 */
[Event(name="iconchange")]

/**
 * Fires after the Panel title has been <a href="output/Ext.Panel.html#Ext.Panel-title">set</a> or <a href="output/Ext.Panel.html#Ext.Panel-setTitle">changed</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel which has had its title changed.
 *       </li>

 *       <li>
 *           <code>The:String</code>
 new title.
 *       </li>

 * </ul>
 */
[Event(name="titlechange")]


/**
 * Panel is a container that has specific functionality and structural components that make it the perfect building block for application-oriented user interfaces.
 <p>Panels are, by virtue of their inheritance from <a href="Ext.Container.html">Ext.Container</a>, capable of being configured with a <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>, and containing child Components.</p><p>When either specifying child <a href="output/Ext.Component.html#Ext.Component-items">items</a> of a Panel, or dynamically <a href="output/Ext.Container.html#Ext.Container-add">adding</a> Components to a Panel, remember to consider how you wish the Panel to arrange those child elements, and whether those child elements need to be sized using one of Ext's built-in <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> schemes. By default, Panels use the <a href="Ext.layout.ContainerLayout.html">ContainerLayout</a> scheme. This simply renders child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b> at all.</p><p>A Panel may also contain <a href="output/Ext.Panel.html#Ext.Panel-bbar">bottom</a> and <a href="output/Ext.Panel.html#Ext.Panel-tbar">top</a> toolbars, along with separate <a href="output/Ext.Panel.html#Ext.Panel-header">header</a>, <a href="output/Ext.Panel.html#Ext.Panel-footer">footer</a> and <a href="output/Ext.Panel.html#Ext.Panel-body">body</a> sections (see <a href="output/Ext.Panel.html#Ext.Panel-frame">frame</a> for additional information).</p><p>Panel also provides built-in <a href="output/Ext.Panel.html#Ext.Panel-collapsible">expandable and collapsible behavior</a>, along with a variety of <a href="output/Ext.Panel.html#Ext.Panel-tools">prebuilt tool buttons</a> that can be wired up to provide other customized behavior. Panels can be easily dropped into any <a href="Ext.Container.html">Container</a> or layout, and the layout and rendering pipeline is <a href="output/Ext.Container.html#Ext.Container-add">completely managed by the framework</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'panel' / the EXML element &lt;panel>.</p>
 * @see ext.config.panel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#cls-Ext.Panel Ext JS source
 */
public class Panel extends Container {

  /**
   *
   *
   * @param config The config object
   * @see ext.config.panel
   */
  public function Panel(config:panel) {
    super(null);
  }

  /**
   The Panel's body <a href="Ext.Element.html">Element</a> which may be used to contain HTML content. The content may be specified in the <a href="output/Ext.Panel.html#Ext.Panel-html">html</a> config, or it may be loaded using the <a href="autoLoad.html">autoLoad</a> config, or through the Panel's <a href="output/Ext.Panel.html#Ext.Panel-getUpdater">Updater</a>. <p>If this is used to load visible HTML elements in either way, then the Panel may not be used as a Layout for hosting nested Panels.</p><p>If this Panel is intended to be used as the host of a Layout (See <a href="output/Ext.Panel.html#Ext.Panel-layout">layout</a> then the body Element must not be loaded or changed - it is under the control of the Panel's Layout.<br/></p><p><b>Note</b>: see the Note for <code><a href="output/Ext.Component.html#Ext.Component-el">el</a></code> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-body Ext JS source
   */
  public native function get body():Element;

  /**
   This Panel's Array of buttons as created from the <code><a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a></code> config property. Read only.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-buttons Ext JS source
   */
  public native function get buttons():Array;

  /**
   * @private
   */
  public native function set buttons(value:Array):void;

  /**
   The Panel's bwrap <a href="Ext.Element.html">Element</a> used to contain other Panel elements (tbar, body, bbar, footer). See <a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-bwrap Ext JS source
   */
  public native function get bwrap():Element;

  /**
   True if this panel is collapsed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-collapsed Ext JS source
   */
  public native function get collapsed():Boolean;

  /**
   If this Panel is configured <a href="output/Ext.Panel.html#Ext.Panel-draggable">draggable</a>, this property will contain an instance of <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> which handles dragging the Panel.
   The developer must provide implementations of the abstract methods of <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a> in order to supply behaviour for each stage of the drag/drop process. See <a href="output/Ext.Panel.html#Ext.Panel-draggable">draggable</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-dd Ext JS source
   */
  public native function get dd():DragSource;

  /**
   * @private
   */
  public native function set dd(value:DragSource):void;

  /**
   The Panel's footer <a href="Ext.Element.html">Element</a>. <p>This Element is used to house the Panel's <code><a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a></code> or <code><a href="output/Ext.Panel.html#Ext.Panel-fbar">fbar</a></code>.</p><br/><p><b>Note</b>: see the Note for <code><a href="output/Ext.Component.html#Ext.Component-el">el</a></code> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-footer Ext JS source
   */
  public native function get footer():Element;

  /**
   The Panel's header <a href="Ext.Element.html">Element</a>. <p>This Element is used to house the <a href="output/Ext.Panel.html#Ext.Panel-title">title</a> and <a href="output/Ext.Panel.html#Ext.Panel-tools">tools</a></p><br/><p><b>Note</b>: see the Note for <code><a href="output/Ext.Component.html#Ext.Component-el">el</a></code> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#prop-Ext.Panel-header Ext JS source
   */
  public native function get header():Element;

  /**
   <code>true</code> to animate the transition when the panel is collapsed, <code>false</code> to skip the animation (defaults to <code>true</code> if the <a href="Ext.Fx.html">Ext.Fx</a> class is available, otherwise <code>false</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get animCollapse():Boolean;

  /**
   A valid url spec according to the Updater <a href="output/Ext.Updater.html#Ext.Updater-update">Ext.Updater.update</a> method. If autoLoad is not null, the panel will attempt to load its contents immediately upon render.<p>The URL will become the default URL for this panel's <a href="output/Ext.Panel.html#Ext.Panel-body">body</a> element, so it may be <a href="output/Ext.Element.html#Ext.Element-refresh">refresh</a>ed at any time.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoLoad():*;

  /**
   The base CSS class to apply to this panel's element (defaults to <code>'x-panel'</code>). <p>Another option available by default is to specify <code>'x-plain'</code> which strips all styling except for required attributes for Ext layouts to function (e.g. overflow:hidden). See <code><a href="output/Ext.Panel.html#Ext.Panel-unstyled">unstyled</a></code> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get baseCls():String;

  /**
   The bottom toolbar of the panel. This can be a <a href="Ext.Toolbar.html">Ext.Toolbar</a> object, a toolbar config, or an array of buttons/button configs to be added to the toolbar. Note that this is not available as a property after render. To access the bottom toolbar after render, use <a href="output/Ext.Panel.html#Ext.Panel-getBottomToolbar">getBottomToolbar</a>.
   <p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not</b> be updated by a load of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container-&gt;Component hierarchy, and so are not scanned to collect form items. However, the values <b>will</b> be submitted because form submission parameters are collected from the DOM tree.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bbar():*;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object specifying the element structure of this Panel's <a href="output/Ext.Panel.html#Ext.Panel-bbar">bbar</a> Element. See <code><a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a></code> also.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bbarCfg():Object;

  /**
   True to display an interior border on the body element of the panel, false to hide it (defaults to true). This only applies when <a href="output/Ext.Panel.html#Ext.Panel-border">border</a> == true. If border == true and bodyBorder == false, the border will display as a 1px wide inset border, giving the entire body element an inset appearance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyBorder():Boolean;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object may be specified for any Panel Element.
   <p>By default, the Default element in the table below will be used for the html markup to create a child element with the commensurate Default class name (<code>baseCls</code> will be replaced by <code><a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a></code>):</p><pre>Panel      Default  Default             Custom      Additional       Additional
   Element    element  class               element     class            style
   ========   ==========================   =========   ==============   ===========
   <a href="output/Ext.Panel.html#Ext.Panel-header">header</a>     div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-header'   <a href="output/Ext.Panel.html#Ext.Panel-headerCfg">headerCfg</a>   headerCssClass   headerStyle
   <a href="output/Ext.Panel.html#Ext.Panel-bwrap">bwrap</a>      div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-bwrap'     <a href="output/Ext.Panel.html#Ext.Panel-bwrapCfg">bwrapCfg</a>    bwrapCssClass    bwrapStyle
   + tbar     div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-tbar'       <a href="output/Ext.Panel.html#Ext.Panel-tbarCfg">tbarCfg</a>     tbarCssClass     tbarStyle
   + <a href="output/Ext.Panel.html#Ext.Panel-body">body</a>     div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-body'       <a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a>     <a href="output/Ext.Panel.html#Ext.Panel-bodyCssClass">bodyCssClass</a>     <a href="output/Ext.Panel.html#Ext.Panel-bodyStyle">bodyStyle</a>
   + bbar     div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-bbar'       <a href="output/Ext.Panel.html#Ext.Panel-bbarCfg">bbarCfg</a>     bbarCssClass     bbarStyle
   + <a href="output/Ext.Panel.html#Ext.Panel-footer">footer</a>   div      <a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a>+'-footer'   <a href="output/Ext.Panel.html#Ext.Panel-footerCfg">footerCfg</a>   footerCssClass   footerStyle
   </pre><p>Configuring a Custom element may be used, for example, to force the <a href="output/Ext.Panel.html#Ext.Panel-body">body</a> Element to use a different form of markup than is created by default. An example of this might be to <a href="output/Ext.Element.html#Ext.Element-createChild">create a child</a> Panel containing a custom content, such as a header, or forcing centering of all Panel content by having the body be a &lt;center&gt; element:</p><pre><code>new Ext.Panel({
   title: 'Message Title',
   renderTo: Ext.getBody(),
   width: 200, height: 130,
   <b>bodyCfg</b>: {
   tag: 'center',
   cls: 'x-panel-body',  // Default class not applied if Custom element specified
   html: 'Message'
   },
   footerCfg: {
   tag: 'h2',
   cls: 'x-panel-footer',        // same as the Default class
   html: 'footer html'
   },
   footerCssClass: 'custom-footer', // additional css class, see <a href="output/Ext.element.html#Ext.element-addClass">addClass</a>
   footerStyle:    'background-color:red' // see <a href="output/Ext.Panel.html#Ext.Panel-bodyStyle">bodyStyle</a>
   });
   </code></pre><p>The example above also explicitly creates a <code><a href="output/Ext.Panel.html#Ext.Panel-footer">footer</a></code> with custom markup and styling applied.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyCfg():Object;

  /**
   Additional css class selector to be applied to the <a href="output/Ext.Panel.html#Ext.Panel-body">body</a> element in the format expected by <a href="output/Ext.Element.html#Ext.Element-addClass">Ext.Element.addClass</a> (defaults to null). See <a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyCssClass():*;

  /**
   Custom CSS styles to be applied to the <a href="output/Ext.Panel.html#Ext.Panel-body">body</a> element in the format expected by <a href="output/Ext.Element.html#Ext.Element-applyStyles">Ext.Element.applyStyles</a> (defaults to null). See <a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyStyle():*;

  /**
   True to display the borders of the panel's body element, false to hide them (defaults to true). By default, the border is a 2px wide inset border, but this can be further altered by setting <a href="output/Ext.Panel.html#Ext.Panel-bodyBorder">bodyBorder</a> to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get border():Boolean;

  /**
   The alignment of any <a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a> added to this panel. Valid values are <code>'right'</code>, <code>'left'</code> and <code>'center'</code> (defaults to <code>'right'</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get buttonAlign():String;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object specifying the element structure of this Panel's <a href="output/Ext.Panel.html#Ext.Panel-bwrap">bwrap</a> Element. See <code><a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a></code> also.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bwrapCfg():Object;

  /**
   Panels themselves do not directly support being closed, but some Panel subclasses do (like <a href="Ext.Window.html">Ext.Window</a>) or a Panel Class within an <a href="Ext.TabPanel.html">Ext.TabPanel</a>. Specify <code>true</code> to enable closing in such situations. Defaults to <code>false</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get closable():Boolean;

  /**
   <code>true</code> to make sure the collapse/expand toggle button always renders first (to the left of) any other tools in the panel's title bar, <code>false</code> to render it last (defaults to <code>true</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapseFirst():Boolean;

  /**
   A CSS class to add to the panel's element after it has been collapsed (defaults to <code>'x-panel-collapsed'</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapsedCls():String;

  /**
   True to make the panel collapsible and have the expand/collapse toggle button automatically rendered into the header tool button area, false to keep the panel statically sized with no button (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get collapsible():Boolean;

  /**
   <code>true</code> to enable dragging of this Panel (defaults to <code>false</code>).
   <p>For custom drag/drop implementations, an <b>Ext.Panel.DD</b> config could also be passed in this config instead of <code>true</code>. Ext.Panel.DD is an internal, undocumented class which moves a proxy Element around in place of the Panel's element, but provides no other behaviour during dragging or on drop. It is a subclass of <a href="Ext.dd.DragSource.html">Ext.dd.DragSource</a>, so behaviour may be added by implementing the interface methods of <a href="Ext.dd.DragDrop.html">Ext.dd.DragDrop</a> e.g.:</p><pre><code>new Ext.Panel({
   title: 'Drag me',
   x: 100,
   y: 100,
   renderTo: Ext.getBody(),
   floating: true,
   frame: true,
   width: 400,
   height: 200,
   draggable: {
   //      Config option of Ext.Panel.DD class.
   //      It's a floating Panel, so do not show a placeholder proxy in the original position.
   insertProxy: false,

   //      Called for each mousemove event while dragging the DD object.
   onDrag : function(e){
   //          Record the x,y position of the drag proxy so that we can
   //          position the Panel at end of drag.
   var pel = this.proxy.getEl();
   this.x = pel.getLeft(true);
   this.y = pel.getTop(true);

   //          Keep the Shadow aligned if there is one.
   var s = this.panel.getEl().shadow;
   if (s) {
   s.realign(this.x, this.y, pel.getWidth(), pel.getHeight());
   }
   },

   //      Called on the mouseup event.
   endDrag : function(e){
   this.panel.setPosition(this.x, this.y);
   }
   }
   }).show();
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get draggable():*;

  /**
   A comma-delimited list of panel elements to initialize when the panel is rendered. Normally, this list will be generated automatically based on the items added to the panel at config time, but sometimes it might be useful to make sure a structural element is rendered even if not specified at config time (for example, you may want to add a button or toolbar dynamically after the panel has been rendered). Adding those elements to this list will allocate the required placeholders in the panel when it is rendered. Valid values are<div class="mdetail-params"><ul><li><code>header</code></li><li><code>tbar</code> (top bar)</li><li><code>body</code></li><li><code>bbar</code> (bottom bar)</li><li><code>footer</code></li></ul></div>Defaults to '<code>body</code>'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get elements():String;

  /**
   A <a href="Ext.Toolbar.html">Toolbar</a> object, a Toolbar config, or an array of <a href="Ext.Button.html">Button</a>s/<a href="Ext.Button.html">Button</a> configs, describing a <a href="Ext.Toolbar.html">Toolbar</a> to be rendered into this Panel's footer element.
   <p>After render, the <code>fbar</code> property will be an <a href="Ext.Toolbar.html">Toolbar</a> instance.</p><p>If <code><a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a></code> are specified, they will supersede the <code>fbar</code> configuration property.</p>The Panel's <code><a href="output/Ext.Panel.html#Ext.Panel-buttonAlign">buttonAlign</a></code> configuration affects the layout of these items, for example: <pre><code>var w = new Ext.Window({
   height: 250,
   width: 500,
   bbar: new Ext.Toolbar({
   items: [{
   text: 'bbar Left'
   },'-&gt;',{
   text: 'bbar Right'
   }]
   }),
   <a href="output/Ext.Panel.html#Ext.Panel-buttonAlign">buttonAlign</a>: 'left', // anything but 'center' or 'right' and you can use '-', and '-&gt;'
   // to control the alignment of fbar items
   fbar: [{
   text: 'fbar Left'
   },'-&gt;',{
   text: 'fbar Right'
   }]
   }).show();
   </code></pre><p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not</b> be updated by a load of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container-&gt;Component hierarchy, and so are not scanned to collect form items. However, the values <b>will</b> be submitted because form submission parameters are collected from the DOM tree.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fbar():*;

  /**
   This property is used to configure the underlying <a href="Ext.Layer.html">Ext.Layer</a>. Acceptable values for this configuration property are:
   <div class="mdetail-params"><ul><li><b><code>false</code></b> : <b>Default.</b><div class="sub-desc">Display the panel inline where it is rendered.</div></li><li><b><code>true</code></b> : <div class="sub-desc">Float the panel (absolute position it with automatic shimming and shadow).<div style="margin-left: 2em"><div class="sub-desc">Setting floating to true will create an Ext.Layer for this panel and display the panel at negative offsets so that it is hidden.</div><div class="sub-desc">Since the panel will be absolute positioned, the position must be set explicitly <i>after</i> render (e.g., <code>myPanel.setPosition(100,100);</code>).</div><div class="sub-desc"><b>Note</b>: when floating a panel you should always assign a fixed width, otherwise it will be auto width and will expand to fill to the right edge of the viewport.</div></div></div></li><li><b><code><a href="Ext.Layer.html">object</a></code></b> : <div class="sub-desc">The specified object will be used as the configuration object for the <a href="Ext.Layer.html">Ext.Layer</a> that will be created.</div></li></ul></div>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get floating():*;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object specifying the element structure of this Panel's <a href="output/Ext.Panel.html#Ext.Panel-footer">footer</a> Element. See <code><a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a></code> also.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get footerCfg():Object;

  /**
   <code>false</code> by default to render with plain 1px square borders. <code>true</code> to render with 9 elements, complete with custom rounded corners (also see <a href="output/Ext.Element.html#Ext.Element-boxWrap">Ext.Element.boxWrap</a>). <p>The template generated for each condition is depicted below:</p><pre><code>// frame = false
   &lt;div id="developer-specified-id-goes-here" class="x-panel"&gt;

   &lt;div class="x-panel-header"&gt;&lt;span class="x-panel-header-text"&gt;Title: (frame:false)&lt;/span&gt;&lt;/div&gt;

   &lt;div class="x-panel-bwrap"&gt;
   &lt;div class="x-panel-body"&gt;&lt;p&gt;html value goes here&lt;/p&gt;&lt;/div&gt;
   &lt;/div&gt;
   &lt;/div&gt;

   // frame = true (create 9 elements)
   &lt;div id="developer-specified-id-goes-here" class="x-panel"&gt;
   &lt;div class="x-panel-tl"&gt;&lt;div class="x-panel-tr"&gt;&lt;div class="x-panel-tc"&gt;
   &lt;div class="x-panel-header"&gt;&lt;span class="x-panel-header-text"&gt;Title: (frame:true)&lt;/span&gt;&lt;/div&gt;
   &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

   &lt;div class="x-panel-bwrap"&gt;
   &lt;div class="x-panel-ml"&gt;&lt;div class="x-panel-mr"&gt;&lt;div class="x-panel-mc"&gt;
   &lt;div class="x-panel-body"&gt;&lt;p&gt;html value goes here&lt;/p&gt;&lt;/div&gt;
   &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

   &lt;div class="x-panel-bl"&gt;&lt;div class="x-panel-br"&gt;&lt;div class="x-panel-bc"/&gt;
   &lt;/div&gt;&lt;/div&gt;&lt;/div&gt;
   &lt;/div&gt;
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get frame():Boolean;

  /**
   <code>true</code> to display the panel <code><a href="output/Ext.Panel.html#Ext.Panel-title">title</a></code> in the <code><a href="output/Ext.Panel.html#Ext.Panel-header">header</a></code>, <code>false</code> to hide it (defaults to <code>true</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get headerAsText():Boolean;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object specifying the element structure of this Panel's <a href="output/Ext.Panel.html#Ext.Panel-header">header</a> Element. See <code><a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a></code> also.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get headerCfg():Object;

  /**
   <code>true</code> to hide the expand/collapse toggle button when <code><a href="output/Ext.Panel.html#Ext.Panel-collapsible">collapsible</a> == true</code>, <code>false</code> to display it (defaults to <code>false</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideCollapseTool():Boolean;

  /**
   The CSS class selector that specifies a background image to be used as the header icon (defaults to ''). <p>An example of specifying a custom icon class would be something like:</p><pre><code>// specify the property in the config for the class:
   ...
   iconCls: 'my-icon'

   // css class that specifies background image to be used as the icon image:
   .my-icon { background-image: url(../images/my-icon.gif) 0 6px no-repeat !important; }
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconCls():String;

  /**
   A <a href="Ext.KeyMap.html">Ext.KeyMap</a> config object (in the format expected by <a href="output/Ext.KeyMap.html#Ext.KeyMap-addBinding">Ext.KeyMap.addBinding</a> used to assign custom key handling to this panel (defaults to <code>null</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get keys():*;

  /**
   <code>true</code> to mask the panel when it is <a href="output/Ext.Panel.html#Ext.Panel-disabled">disabled</a>, <code>false</code> to not mask it (defaults to <code>true</code>). Either way, the panel will always tell its contained elements to disable themselves when it is disabled, but masking the panel can provide an additional visual cue that the panel is disabled.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maskDisabled():Boolean;

  /**
   Minimum width in pixels of all <a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a> in this panel (defaults to <code>75</code>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minButtonWidth():Number;

  /**
   A shortcut for setting a padding style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing padding. Defaults to <tt>undefined</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get padding():*;

  /**
   Defaults to <code>false</code>. When set to <code>true</code>, an extra css class <code>'x-panel-normal'</code> will be added to the panel's element, effectively applying css styles suggested by the W3C (see http://www.w3.org/TR/CSS21/sample.html) to the Panel's <b>body</b> element (not the header, footer, etc.).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get preventBodyReset():Boolean;

  /**
   <code>true</code> (or a valid Ext.Shadow <a href="output/Ext.Shadow.html#Ext.Shadow-mode">Ext.Shadow.mode</a> value) to display a shadow behind the panel, <code>false</code> to display no shadow (defaults to <code>'sides'</code>). Note that this option only applies when <code><a href="output/Ext.Panel.html#Ext.Panel-floating">floating</a> = true</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shadow():*;

  /**
   The number of pixels to offset the shadow if displayed (defaults to <code>4</code>). Note that this option only applies when <code><a href="output/Ext.Panel.html#Ext.Panel-floating">floating</a> = true</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shadowOffset():Number;

  /**
   <code>false</code> to disable the iframe shim in browsers which need one (defaults to <code>true</code>). Note that this option only applies when <code><a href="output/Ext.Panel.html#Ext.Panel-floating">floating</a> = true</code>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shim():Boolean;

  /**
   The top toolbar of the panel. This can be a <a href="Ext.Toolbar.html">Ext.Toolbar</a> object, a toolbar config, or an array of buttons/button configs to be added to the toolbar. Note that this is not available as a property after render. To access the top toolbar after render, use <a href="output/Ext.Panel.html#Ext.Panel-getTopToolbar">getTopToolbar</a>.
   <p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not</b> be updated by a load of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container-&gt;Component hierarchy, and so are not scanned to collect form items. However, the values <b>will</b> be submitted because form submission parameters are collected from the DOM tree.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tbar():*;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element specification object specifying the element structure of this Panel's <a href="output/Ext.Panel.html#Ext.Panel-tbar">tbar</a> Element. See <code><a href="output/Ext.Panel.html#Ext.Panel-bodyCfg">bodyCfg</a></code> also.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tbarCfg():Object;

  /**
   The title text to be used as innerHTML (html tags are accepted) to display in the panel <code><a href="output/Ext.Panel.html#Ext.Panel-header">header</a></code> (defaults to ''). When a <code>title</code> is specified the <code><a href="output/Ext.Panel.html#Ext.Panel-header">header</a></code> element will automatically be created and displayed unless <a href="output/Ext.Panel.html#Ext.Panel-header">header</a> is explicitly set to <code>false</code>. If you do not want to specify a <code>title</code> at config time, but you may want one later, you must either specify a non-empty <code>title</code> (a blank space ' ' will do) or <code>header:true</code> so that the container element will get created.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get title():String;

  /**
   <code>true</code> to allow expanding and collapsing the panel (when <code><a href="output/Ext.Panel.html#Ext.Panel-collapsible">collapsible</a> = true</code>) by clicking anywhere in the header bar, <code>false</code>) to allow it only by clicking to tool button (defaults to <code>false</code>)). If this panel is a child item of a border layout also see the <a href="Ext.layout.BorderLayout.Region.html">BorderLayout.Region</a> <code><a href="output/Ext.layout.BorderLayout.Region.html#Ext.layout.BorderLayout.Region-floatable">floatable</a></code> config option.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get titleCollapse():Boolean;

  /**
   A Template used to create <a href="output/Ext.Panel.html#Ext.Panel-tools">tools</a> in the <a href="output/Ext.Panel.html#Ext.Panel-header">header</a> Element. Defaults to:
   <pre><code>new Ext.Template('&lt;div class="x-tool x-tool-{id}"&gt;&amp;#160;&lt;/div&gt;')</code></pre><p>This may may be overridden to provide a custom DOM structure for tools based upon a more complex XTemplate. The template's data is a single tool configuration object (Not the entire Array) as specified in <a href="output/Ext.Panel.html#Ext.Panel-tools">tools</a>. In the following example an &lt;a&gt; tag is used to provide a visual indication when hovering over the tool:</p><pre><code>var win = new Ext.Window({
   tools: [{
   id: 'download',
   href: '/MyPdfDoc.pdf'
   }],
   toolTemplate: new Ext.XTemplate(
   '&lt;tpl if="id==\'download\'"&gt;',
   '&lt;a class="x-tool x-tool-pdf" href="{href}"&gt;&lt;/a&gt;',
   '&lt;/tpl&gt;',
   '&lt;tpl if="id!=\'download\'"&gt;',
   '&lt;div class="x-tool x-tool-{id}"&gt;&amp;#160;&lt;/div&gt;',
   '&lt;/tpl&gt;'
   ),
   width:500,
   height:300,
   closeAction:'hide'
   });</code></pre><p>Note that the CSS class 'x-tool-pdf' should have an associated style rule which provides an appropriate background image, something like:</p><pre><code>   a.x-tool-pdf {background-image: url(../shared/extjs/images/pdf.gif)!important;}
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get toolTemplate():*;

  /**
   An array of tool button configs to be added to the header tool area. When rendered, each tool is stored as an <a href="Ext.Element.html">Element</a> referenced by a public property called <code>tools.<i>&lt;tool-type&gt;</i></code> <p>Each tool config may contain the following properties:</p><div class="mdetail-params"><ul><li><b>id</b> : String<div class="sub-desc"><b>Required.</b> The type of tool to create. By default, this assigns a CSS class of the form <code>x-tool-<i>&lt;tool-type&gt;</i></code> to the resulting tool Element. Ext provides CSS rules, and an icon sprite containing images for the tool types listed below. The developer may implement custom tools by supplying alternate CSS rules and background images: <div style="margin-left: 2em"><div><code>toggle</code> (Created by default when <a href="output/Ext.Panel.html#Ext.Panel-collapsible">collapsible</a> is <code>true</code>)</div><div><code>close</code></div><div><code>minimize</code></div><div><code>maximize</code></div><div><code>restore</code></div><div><code>gear</code></div><div><code>pin</code></div><div><code>unpin</code></div><div><code>right</code></div><div><code>left</code></div><div><code>up</code></div><div><code>down</code></div><div><code>refresh</code></div><div><code>minus</code></div><div><code>plus</code></div><div><code>help</code></div><div><code>search</code></div><div><code>save</code></div><div><code>print</code></div></div></div></li><li><b>handler</b> : Function<div class="sub-desc"><b>Required.</b> The function to call when clicked. Arguments passed are:<ul><li><b>event</b> : Ext.EventObject<div class="sub-desc">The click event.</div></li><li><b>toolEl</b> : Ext.Element<div class="sub-desc">The tool Element.</div></li><li><b>panel</b> : Ext.Panel<div class="sub-desc">The host Panel</div></li><li><b>tc</b> : Object<div class="sub-desc">The tool configuration object</div></li></ul></div></li><li><b>stopEvent</b> : Boolean<div class="sub-desc">Defaults to true. Specify as false to allow click event to propagate.</div></li><li><b>scope</b> : Object<div class="sub-desc">The scope in which to call the handler.</div></li><li><b>qtip</b> : String/Object<div class="sub-desc">A tip string, or a config argument to <a href="output/Ext.QuickTip.html#Ext.QuickTip-register">Ext.QuickTip.register</a></div></li><li><b>hidden</b> : Boolean<div class="sub-desc">True to initially render hidden.</div></li><li><b>on</b> : Object<div class="sub-desc">A listener config object specifying event listeners in the format of an argument to <a href="output/Ext.Panel.html#Ext.Panel-addListener">addListener</a></div></li></ul></div><p>Note that, apart from the toggle tool which is provided when a panel is collapsible, these tools only provide the visual button. Any required functionality must be provided by adding handlers that implement the necessary behavior.</p><p>Example usage:</p><pre><code>tools:[{
   id:'refresh',
   qtip: 'Refresh form Data',
   // hidden:true,
   handler: function(event, toolEl, panel){
   // refresh logic
   }
   },
   {
   id:'help',
   qtip: 'Get Help',
   handler: function(event, toolEl, panel){
   // whatever
   }
   }]
   </code></pre><p>For the custom id of <code>'help'</code> define two relevant css classes with a link to a 15x15 image:</p><pre><code>.x-tool-help {background-image: url(images/help.png);}
   .x-tool-help-over {background-image: url(images/help_over.png);}
   // if using an image sprite:
   .x-tool-help {background-image: url(images/help.png) no-repeat 0 0;}
   .x-tool-help-over {background-position:-15px 0;}
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tools():Array;

  /**
   Overrides the <code><a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a></code> setting to <code><a href="output/Ext.Panel.html#Ext.Panel-baseCls">baseCls</a> = 'x-plain'</code> which renders the panel unstyled except for required attributes for Ext layouts to function (e.g. overflow:hidden).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get unstyled():Boolean;

  /**
   * Adds a button to this panel. Note that this method must be called prior to rendering. The preferred approach is to add buttons via the <a href="output/Ext.Panel.html#Ext.Panel-buttons">buttons</a> config.
   *
   * @param config A valid <a href="Ext.Button.html">Ext.Button</a> config. A string will become the text for a default button config, an object will be treated as a button config object.
   * @param handler The function to be called on button <a href="output/Ext.Button.html#Ext.Button-click">Ext.Button.click</a>
   * @param scope The scope (<code>this</code> reference) in which the button handler function is executed. Defaults to the Button.
   * @return The button that was added
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-addButton Ext JS source
   */
  public native function addButton(config:*, handler:Function, scope:Object):Button;

  /**
   * Collapses the panel body so that it becomes hidden. Fires the <a href="output/Ext.Panel.html#Ext.Panel-beforecollapse">beforecollapse</a> event which will cancel the collapse action if it returns false.
   *
   * @param animate True to animate the transition, else false (defaults to the value of the <a href="output/Ext.Panel.html#Ext.Panel-animCollapse">animCollapse</a> panel config)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-collapse Ext JS source
   */
  public native function collapse(animate:Boolean):Panel;

  /**
   * Expands the panel body so that it becomes visible. Fires the <a href="output/Ext.Panel.html#Ext.Panel-beforeexpand">beforeexpand</a> event which will cancel the expand action if it returns false.
   *
   * @param animate True to animate the transition, else false (defaults to the value of the <a href="output/Ext.Panel.html#Ext.Panel-animCollapse">animCollapse</a> panel config)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-expand Ext JS source
   */
  public native function expand(animate:Boolean):Panel;

  /**
   * Returns the <a href="Ext.Toolbar.html">toolbar</a> from the bottom (<code><a href="output/Ext.Panel.html#Ext.Panel-bbar">bbar</a></code>) section of the panel.
   *
   * @return The toolbar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getBottomToolbar Ext JS source
   */
  public native function getBottomToolbar():Toolbar;

  /**
   * Returns the <a href="Ext.Toolbar.html">toolbar</a> from the footer (<code><a href="output/Ext.Panel.html#Ext.Panel-fbar">fbar</a></code>) section of the panel.
   *
   * @return The toolbar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getFooterToolbar Ext JS source
   */
  public native function getFooterToolbar():Toolbar;

  /**
   * Returns the height in pixels of the framing elements of this panel (including any top and bottom bars and header and footer elements, but not including the body height). To retrieve the body height see <a href="output/Ext.Panel.html#Ext.Panel-getInnerHeight">getInnerHeight</a>.
   *
   * @return The frame height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getFrameHeight Ext JS source
   */
  public native function getFrameHeight():Number;

  /**
   * Returns the width in pixels of the framing elements of this panel (not including the body width). To retrieve the body width see <a href="output/Ext.Panel.html#Ext.Panel-getInnerWidth">getInnerWidth</a>.
   *
   * @return The frame width
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getFrameWidth Ext JS source
   */
  public native function getFrameWidth():Number;

  /**
   * Returns the height in pixels of the body element (not including the height of any framing elements). For the frame height see <a href="output/Ext.Panel.html#Ext.Panel-getFrameHeight">getFrameHeight</a>.
   *
   * @return The body height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getInnerHeight Ext JS source
   */
  public native function getInnerHeight():Number;

  /**
   * Returns the width in pixels of the body element (not including the width of any framing elements). For the frame width see <a href="output/Ext.Panel.html#Ext.Panel-getFrameWidth">getFrameWidth</a>.
   *
   * @return The body width
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getInnerWidth Ext JS source
   */
  public native function getInnerWidth():Number;

  /**
   * Retrieve a tool by id.
   *
   * @param id
   * @return tool
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getTool Ext JS source
   */
  public native function getTool(id:String):Object;

  /**
   * Returns the <a href="Ext.Toolbar.html">toolbar</a> from the top (<code><a href="output/Ext.Panel.html#Ext.Panel-tbar">tbar</a></code>) section of the panel.
   *
   * @return The toolbar
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getTopToolbar Ext JS source
   */
  public native function getTopToolbar():Toolbar;

  /**
   * Get the <a href="Ext.Updater.html">Ext.Updater</a> for this panel. Enables you to perform Ajax updates of this panel's body.
   *
   * @return The Updater
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-getUpdater Ext JS source
   */
  public native function getUpdater():Updater;

  /**
   * Loads this content panel immediately with content returned from an XHR call.
   *
   * @param config A config object containing any of the following options: <pre><code>panel.load({
   url: 'your-url.php',
   params: {param1: 'foo', param2: 'bar'}, // or a URL encoded string
   callback: yourFunction,
   scope: yourObject, // optional scope for the callback
   discardUrl: false,
   nocache: false,
   text: 'Loading...',
   timeout: 30,
   scripts: false
   });
   </code></pre>The only required property is url. The optional properties nocache, text and scripts are shorthand for disableCaching, indicatorText and loadScripts and are used to set their associated property on this panel Updater instance.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-load Ext JS source
   */
  public native function load(config:*):Panel;

  /**
   * Sets the CSS class that provides the icon image for this panel. This method will replace any existing icon class if one has already been set and fire the <a href="output/Ext.Panel.html#Ext.Panel-iconchange">iconchange</a> event after completion.
   *
   * @param cls The new CSS class name
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-setIconClass Ext JS source
   */
  public native function setIconClass(cls:String):void;

  /**
   * Sets the title text for the panel and optionally the <a href="output/Ext.Panel.html#Ext.Panel-iconCls">icon class</a>.
   <p>In order to be able to set the title, a header element must have been created for the Panel. This is triggered either by configuring the Panel with a non-blank <code><a href="output/Ext.Panel.html#Ext.Panel-title">title</a></code>, or configuring it with <code><b><a href="output/Ext.Panel.html#Ext.Panel-header">header</a>: true</b></code>.</p>
   *
   * @param title The title text to set
   * @param iconCls <a href="output/Ext.Panel.html#Ext.Panel-iconCls">iconCls</a> A user-defined CSS class that provides the icon image for this panel
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-setTitle Ext JS source
   */
  public native function setTitle(title:String, iconCls:String = null):void;

  /**
   * Shortcut for performing an <a href="output/Ext.Panel.html#Ext.Panel-expand">expand</a> or <a href="output/Ext.Panel.html#Ext.Panel-collapse">collapse</a> based on the current state of the panel.
   *
   * @param animate True to animate the transition, else false (defaults to the value of the <a href="output/Ext.Panel.html#Ext.Panel-animCollapse">animCollapse</a> panel config)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.Panel-toggleCollapse Ext JS source
   */
  public native function toggleCollapse(animate:Boolean):Panel;

}
}
    