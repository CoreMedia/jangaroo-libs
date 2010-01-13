package ext {

/**
 * <p>Panel is a container that has specific functionality and structural components that make
 * it the perfect building block for application-oriented user interfaces.</p>
 * <p>Panels are, by virtue of their inheritance from <b class='link'>ext.Container</b>, capable
 * of being configured with a <b class='link' title='ext.Container#layout'>layout</b>, and containing child Components.</p>
 * <p>When either specifying child <b class='link' title='ext.Component#items'>items</b> of a Panel, or dynamically <b class='link' title='ext.Container#add'>adding</b> Components
 * to a Panel, remember to consider how you wish the Panel to arrange those child elements, and whether
 * those child elements need to be sized using one of Ext's built-in <code><b class='link' title='ext.Container#layout'>layout</b></code> schemes. By
 * default, Panels use the <b class='link' title='Ext.layout.ContainerLayout'>ContainerLayout</b> scheme. This simply renders
 * child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b>
 * at all.</p>
 * <p>A Panel may also contain <b class='link' title='#bbar'>bottom</b> and <b class='link' title='#tbar'>top</b> toolbars, along with separate
 * <b class='link' title='#header'>header</b>, <b class='link' title='#footer'>footer</b> and <b class='link' title='#body'>body</b> sections (see <b class='link' title='#frame'>frame</b> for additional
 * information).</p>
 * <p>Panel also provides built-in <b class='link' title='#collapsible expandable and collapsible'>behavior</b>, along with
 * a variety of <b class='link' title='#tools prebuilt tool'>buttons</b> that can be wired up to provide other customized
 * behavior.  Panels can be easily dropped into any <b class='link' title='ext.Container'>Container</b> or layout, and the
 * layout and rendering pipeline is <b class='link' title='ext.Container#add completely managed by the'>framework</b>.</p>
*/
public class Panel extends Container {
/**
 * @constructor
 * @param config The config object
 * @xtype panel
 */
public function Panel(config : Object) {
  super(config);
}
    /**
     * The Panel's header <b class='link' title='ext.Element'>Element</b>. Read-only.
     * <p>This Element is used to house the <b class='link' title='#title'>title</b> and <b class='link' title='#tools'>tools</b></p>
     * <br><p><b>Note</b>: see the Note for <code><b class='link' title='ext.Component#el'>el</b> also.</p>
     * @property header
     */
     public var header : Element;
    /**
     * The Panel's body <b class='link' title='ext.Element'>Element</b> which may be used to contain HTML content.
     * The content may be specified in the <b class='link' title='#html'>html</b> config, or it may be loaded using the
     * <b class='link'>autoLoad</b> config, or through the Panel's <b class='link' title='#getUpdater'>Updater</b>. Read-only.
     * <p>If this is used to load visible HTML elements in either way, then
     * the Panel may not be used as a Layout for hosting nested Panels.</p>
     * <p>If this Panel is intended to be used as the host of a Layout (See <b class='link' title='#layout'>layout</b>
     * then the body Element must not be loaded or changed - it is under the control
     * of the Panel's Layout.
     * <br><p><b>Note</b>: see the Note for <code><b class='link' title='ext.Component#el'>el</b> also.</p>
     * @property body
     */
  public var body : Element;
    /**
     * The Panel's bwrap <b class='link' title='ext.Element'>Element</b> used to contain other Panel elements
     * (tbar, body, bbar, footer). See <b class='link' title='#bodyCfg'>bodyCfg</b>. Read-only.
     * @property bwrap
     */
  public var bwrap : Element;
    /**
     * True if this panel is collapsed. Read-only.
     * @property collapsed
     */
  public native function get collapsed() : Boolean;
    /**
     * @cfg {Object} bodyCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object may be specified for any
     * Panel Element.</p>
     * <p>By default, the Default element in the table below will be used for the html markup to
     * create a child element with the commensurate Default class name (<code>baseCls</code> will be
     * replaced by <code><b class='link' title='#baseCls'>baseCls</b></code>):</p>
     * <pre>
     * Panel      Default  Default             Custom      Additional       Additional
     * Element    element  class               element     class            style
     * ========   ==========================   =========   ==============   ===========
     * <b class='link' title='#header'>header</b>     div      <b class='link' title='#baseCls'>baseCls</b>+'-header'   <b class='link' title='#headerCfg'>headerCfg</b>   headerCssClass   headerStyle
     * <b class='link' title='#bwrap'>bwrap</b>      div      <b class='link' title='#baseCls'>baseCls</b>+'-bwrap'     <b class='link' title='#bwrapCfg'>bwrapCfg</b>    bwrapCssClass    bwrapStyle
     * + tbar     div      <b class='link' title='#baseCls'>baseCls</b>+'-tbar'       <b class='link' title='#tbarCfg'>tbarCfg</b>     tbarCssClass     tbarStyle
     * + <b class='link' title='#body'>body</b>     div      <b class='link' title='#baseCls'>baseCls</b>+'-body'       <b class='link' title='#bodyCfg'>bodyCfg</b>     <b class='link' title='#bodyCssClass'>bodyCssClass</b>     <b class='link' title='#bodyStyle'>bodyStyle</b>
     * + bbar     div      <b class='link' title='#baseCls'>baseCls</b>+'-bbar'       <b class='link' title='#bbarCfg'>bbarCfg</b>     bbarCssClass     bbarStyle
     * + <b class='link' title='#footer'>footer</b>   div      <b class='link' title='#baseCls'>baseCls</b>+'-footer'   <b class='link' title='#footerCfg'>footerCfg</b>   footerCssClass   footerStyle
     * </pre>
     * <p>Configuring a Custom element may be used, for example, to force the <b class='link' title='#body'>body</b> Element
     * to use a different form of markup than is created by default. An example of this might be
     * to <b class='link' title='ext.Element#createChild create a'>child</b> Panel containing a custom content, such as
     * a header, or forcing centering of all Panel content by having the body be a &lt;center&gt;
     * element:</p>
     * <pre><code>
new ext.Panel({
    title&#58; 'Message Title',
    renderTo&#58; Ext.getBody(),
    width&#58; 200, height: 130,
    <b>bodyCfg</b>: {
        tag&#58; 'center',
        cls&#58; 'x-panel-body',  // Default class not applied if Custom element specified
        html&#58; 'Message'
    },
    footerCfg&#58; {
        tag&#58; 'h2',
        cls&#58; 'x-panel-footer'        // same as the Default class
        html&#58; 'footer html'
    },
    footerCssClass&#58; 'custom-footer', // additional css class, see <b class='link' title='Ext.element#addClass'>addClass</b>
    footerStyle&#58;    'background-color:red' // see <b class='link' title='#bodyStyle'>bodyStyle</b>
});
     * </code></pre>
     * <p>The example above also explicitly creates a <code><b class='link' title='#footer'>footer</b></code> with custom markup and
     * styling applied.</p>
     */
    /**
     * @cfg {Object} headerCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object specifying the element structure
     * of this Panel's <b class='link' title='#header'>header</b> Element.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> also.</p>
     */
    /**
     * @cfg {Object} bwrapCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object specifying the element structure
     * of this Panel's <b class='link' title='#bwrap'>bwrap</b> Element.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> also.</p>
     */
    /**
     * @cfg {Object} tbarCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object specifying the element structure
     * of this Panel's <b class='link' title='#tbar'>tbar</b> Element.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> also.</p>
     */
    /**
     * @cfg {Object} bbarCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object specifying the element structure
     * of this Panel's <b class='link' title='#bbar'>bbar</b> Element.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> also.</p>
     */
    /**
     * @cfg {Object} footerCfg
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element specification object specifying the element structure
     * of this Panel's <b class='link' title='#footer'>footer</b> Element.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> also.</p>
     */
    /**
     * @cfg {Boolean} closable
     * Panels themselves do not directly support being closed, but some Panel subclasses do (like
     * <b class='link'>ext.Window</b>) or a Panel Class within an <b class='link'>ext.TabPanel</b>.  Specify <code>true</code>
     * to enable closing in such situations. Defaults to <code>false</code>.
     */
    /**
     * The Panel's footer <b class='link' title='ext.Element'>Element</b>. Read-only.
     * <p>This Element is used to house the Panel's <code><b class='link' title='#buttons'>buttons</b></code> or <code><b class='link' title='#fbar'>fbar</b></code>.</p>
     * <br><p><b>Note</b>: see the Note for <code><b class='link' title='ext.Component#el'>el</b> also.</p>
     * @property footer
     */
    /**
     * @cfg {Mixed} applyTo
     * <p>The id of the node, a DOM node or an existing Element corresponding to a DIV that is already present in
     * the document that specifies some panel-specific structural markup.  When <code>applyTo</code> is used,
     * constituent parts of the panel can be specified by CSS class name within the main element, and the panel
     * will automatically create those components from that markup. Any required components not specified in the
     * markup will be autogenerated if necessary.</p>
     * <p>The following class names are supported (baseCls will be replaced by <b class='link' title='#baseCls'>baseCls</b>):</p>
     * <ul><li>baseCls + '-header'</li>
     * <li>baseCls + '-header-text'</li>
     * <li>baseCls + '-bwrap'</li>
     * <li>baseCls + '-tbar'</li>
     * <li>baseCls + '-body'</li>
     * <li>baseCls + '-bbar'</li>
     * <li>baseCls + '-footer'</li></ul>
     * <p>Using this config, a call to render() is not required.  If applyTo is specified, any value passed for
     * <b class='link' title='#renderTo'>renderTo</b> will be ignored and the target element's parent node will automatically be used as the
     * panel's container.</p>
     */
    /**
     * @cfg {Object/Array} tbar
     * <p>The top toolbar of the panel. This can be a <b class='link'>ext.Toolbar</b> object, a toolbar config, or an array of
     * buttons/button configs to be added to the toolbar.  Note that this is not available as a property after render.
     * To access the top toolbar after render, use <b class='link' title='#getTopToolbar'>getTopToolbar</b>.</p>
     * <p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not</b> be updated by a load
     * of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container->Component hierarchy, and
     * so are not scanned to collect form items. However, the values <b>will</b> be submitted because form
     * submission parameters are collected from the DOM tree.</p>
     */
    /**
     * @cfg {Object/Array} bbar
     * <p>The bottom toolbar of the panel. This can be a <b class='link'>ext.Toolbar</b> object, a toolbar config, or an array of
     * buttons/button configs to be added to the toolbar.  Note that this is not available as a property after render.
     * To access the bottom toolbar after render, use <b class='link' title='#getBottomToolbar'>getBottomToolbar</b>.</p>
     * <p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not<b> be updated by a load
     * of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container->Component hierarchy, and
     * so are not scanned to collect form items. However, the values <b>will</b> be submitted because form
     * submission parameters are collected from the DOM tree.</p>
     */
    /** @cfg {Object/Array} fbar
     * <p>A <b class='link' title='ext.Toolbar'>Toolbar</b> object, a Toolbar config, or an array of
     * <b class='link' title='ext.Button'>Button</b>s/<b class='link' title='ext.Button'>Button</b> configs, describing a <b class='link' title='ext.Toolbar'>Toolbar</b> to be rendered into this Panel's footer element.</p>
     * <p>After render, the <code>fbar</code> property will be an <b class='link' title='ext.Toolbar'>Toolbar</b> instance.</p>
     * <p>If <code><b class='link' title='#buttons'>buttons</b></code> are specified, they will supersede the <code>fbar</code> configuration property.</p>
     * The Panel's <code><b class='link' title='#buttonAlign'>buttonAlign</b></code> configuration affects the layout of these items, for example:
     * <pre><code>
var w = new ext.Window({
    height&#58; 250,
    width&#58; 500,
    bbar&#58; new ext.Toolbar({
        items&#58; [{
            text&#58; 'bbar Left'
        },'->',{
            text&#58; 'bbar Right'
        }]
    }),
    <b class='link' title='#buttonAlign'>buttonAlign</b>: 'left', // anything but 'center' or 'right' and you can use "-", and "->"
                                  &#47;/ to control the alignment of fbar items
    fbar&#58; [{
        text&#58; 'fbar Left'
    },'->',{
        text&#58; 'fbar Right'
    }]
}).show();
     * </code></pre>
     * <p><b>Note:</b> Although a Toolbar may contain Field components, these will <b>not<b> be updated by a load
     * of an ancestor FormPanel. A Panel's toolbars are not part of the standard Container->Component hierarchy, and
     * so are not scanned to collect form items. However, the values <b>will</b> be submitted because form
     * submission parameters are collected from the DOM tree.</p>
     */
    /**
     * @cfg {Boolean} header
     * <code>true</code> to create the Panel's header element explicitly, <code>false</code> to skip creating
     * it.  If a <code><b class='link' title='#title'>title</b></code> is set the header will be created automatically, otherwise it will not.
     * If a <code><b class='link' title='#title'>title</b></code> is set but <code>header</code> is explicitly set to <code>false</code>, the header
     * will not be rendered.
     */
    /**
     * @cfg {Boolean} footer
     * <code>true</code> to create the footer element explicitly, false to skip creating it. The footer
     * will be created automatically if <code><b class='link' title='#buttons'>buttons</b></code> or a <code><b class='link' title='#fbar'>fbar</b></code> have
     * been configured.  See <code><b class='link' title='#bodyCfg'>bodyCfg</b></code> for an example.
     */
    /**
     * @cfg {String} title
     * The title text to be used as innerHTML (html tags are accepted) to display in the panel
     * <code><b class='link' title='#header'>header</b></code> (defaults to ''). When a <code>title</code> is specified the
     * <code><b class='link' title='#header'>header</b></code> element will automatically be created and displayed unless
     * <b class='link' title='#header'>header</b> is explicitly set to <code>false</code>.  If you do not want to specify a
     * <code>title</code> at config time, but you may want one later, you must either specify a non-empty
     * <code>title</code> (a blank space ' ' will do) or <code>header:true</code> so that the container
     * element will get created.
     */
    /**
     * @cfg {Array} buttons
     * <code>buttons</code> will be used as <code><b class='link' title='ext.Container#items'>items</b></code> for the toolbar in
     * the footer (<code><b class='link' title='#fbar'>fbar</b></code>). Typically the value of this configuration property will be
     * an array of <b class='link'>ext.Button</b>s or <b class='link'>ext.Button</b> configuration objects.
     * If an item is configured with <code>minWidth</code> or the Panel is configured with <code>minButtonWidth</code>,
     * that width will be applied to the item.
     */
    /**
     * @cfg {Object/String/Function} autoLoad
     * A valid url spec according to the Updater <b class='link'>ext.Updater#update</b> method.
     * If autoLoad is not null, the panel will attempt to load its contents
     * immediately upon render.<p>
     * The URL will become the default URL for this panel's <b class='link' title='#body'>body</b> element,
     * so it may be <b class='link' title='ext.Element#refresh'>refresh</b>ed at any time.</p>
     */
    /**
     * @cfg {Boolean} frame
     * <code>false</code> by default to render with plain 1px square borders. <code>true</code> to render with
     * 9 elements, complete with custom rounded corners (also see <b class='link'>ext.Element#boxWrap</b>).
     * <p>The template generated for each condition is depicted below:</p><pre><code>
     *
&#47;/ frame = false
&lt;div id="developer-specified-id-goes-here" class="x-panel">

    &lt;div class="x-panel-header">&lt;span class="x-panel-header-text">Title: (frame:false)&lt;/span>&lt;/div>

    &lt;div class="x-panel-bwrap">
        &lt;div class="x-panel-body">&lt;p>html value goes here&lt;/p>&lt;/div>
    &lt;/div>
&lt;/div>

&#47;/ frame = true (create 9 elements)
&lt;div id="developer-specified-id-goes-here" class="x-panel">
    &lt;div class="x-panel-tl">&lt;div class="x-panel-tr">&lt;div class="x-panel-tc">
        &lt;div class="x-panel-header">&lt;span class="x-panel-header-text">Title: (frame:true)&lt;/span>&lt;/div>
    &lt;/div>&lt;/div>&lt;/div>

    &lt;div class="x-panel-bwrap">
        &lt;div class="x-panel-ml">&lt;div class="x-panel-mr">&lt;div class="x-panel-mc">
            &lt;div class="x-panel-body">&lt;p>html value goes here&lt;/p>&lt;/div>
        &lt;/div>&lt;/div>&lt;/div>

        &lt;div class="x-panel-bl">&lt;div class="x-panel-br">&lt;div class="x-panel-bc"/>
        &lt;/div>&lt;/div>&lt;/div>
&lt;/div>
     * </code></pre>
     */
    /**
     * @cfg {Boolean} border
     * True to display the borders of the panel's body element, false to hide them (defaults to true).  By default,
     * the border is a 2px wide inset border, but this can be further altered by setting <b class='link' title='#bodyBorder'>bodyBorder</b> to false.
     */
    /**
     * @cfg {Boolean} bodyBorder
     * True to display an interior border on the body element of the panel, false to hide it (defaults to true).
     * This only applies when <b class='link' title='#border'>border</b> == true.  If border == true and bodyBorder == false, the border will display
     * as a 1px wide inset border, giving the entire body element an inset appearance.
     */
    /**
     * @cfg {String/Object/Function} bodyCssClass
     * Additional css class selector to be applied to the <b class='link' title='#body'>body</b> element in the format expected by
     * <b class='link'>ext.Element#addClass</b> (defaults to null). See <b class='link' title='#bodyCfg'>bodyCfg</b>.
     */
    /**
     * @cfg {String/Object/Function} bodyStyle
     * Custom CSS styles to be applied to the <b class='link' title='#body'>body</b> element in the format expected by
     * <b class='link'>ext.Element#applyStyles</b> (defaults to null). See <b class='link' title='#bodyCfg'>bodyCfg</b>.
     */
    /**
     * @cfg {String} iconCls
     * The CSS class selector that specifies a background image to be used as the header icon (defaults to '').
     * <p>An example of specifying a custom icon class would be something like:
     * </p><pre><code>
&#47;/ specify the property in the config for the class:
     ...
     iconCls&#58; 'my-icon'

&#47;/ css class that specifies background image to be used as the icon image:
.my-icon { background-image: url(../images/my-icon.gif) 0 6px no-repeat !important; }
</code></pre>
     */
    /**
     * @cfg {Boolean} collapsible
     * True to make the panel collapsible and have the expand/collapse toggle button automatically rendered into
     * the header tool button area, false to keep the panel statically sized with no button (defaults to false).
     */
    /**
     * @cfg {Array} tools
     * An array of tool button configs to be added to the header tool area. When rendered, each tool is
     * stored as an <b class='link' title='ext.Element'>Element</b> referenced by a public property called <code><b></b>tools.<i>&lt;tool-type&gt;</i></code>
     * <p>Each tool config may contain the following properties:
     * <div class="mdetail-params"><ul>
     * <li><b>id</b> : String<div class="sub-desc"><b>Required.</b> The type
     * of tool to create. By default, this assigns a CSS class of the form <code>x-tool-<i>&lt;tool-type&gt;</i></code> to the
     * resulting tool Element. Ext provides CSS rules, and an icon sprite containing images for the tool types listed below.
     * The developer may implement custom tools by supplying alternate CSS rules and background images:
     * <ul>
     * <div class="x-tool x-tool-toggle" style="float:left; margin-right:5;"> </div><div><code> toggle</code> (Created by default when <b class='link' title='#collapsible'>collapsible</b> is <code>true</code>)</div>
     * <div class="x-tool x-tool-close" style="float:left; margin-right:5;"> </div><div><code> close</code></div>
     * <div class="x-tool x-tool-minimize" style="float:left; margin-right:5;"> </div><div><code> minimize</code></div>
     * <div class="x-tool x-tool-maximize" style="float:left; margin-right:5;"> </div><div><code> maximize</code></div>
     * <div class="x-tool x-tool-restore" style="float:left; margin-right:5;"> </div><div><code> restore</code></div>
     * <div class="x-tool x-tool-gear" style="float:left; margin-right:5;"> </div><div><code> gear</code></div>
     * <div class="x-tool x-tool-pin" style="float:left; margin-right:5;"> </div><div><code> pin</code></div>
     * <div class="x-tool x-tool-unpin" style="float:left; margin-right:5;"> </div><div><code> unpin</code></div>
     * <div class="x-tool x-tool-right" style="float:left; margin-right:5;"> </div><div><code> right</code></div>
     * <div class="x-tool x-tool-left" style="float:left; margin-right:5;"> </div><div><code> left</code></div>
     * <div class="x-tool x-tool-up" style="float:left; margin-right:5;"> </div><div><code> up</code></div>
     * <div class="x-tool x-tool-down" style="float:left; margin-right:5;"> </div><div><code> down</code></div>
     * <div class="x-tool x-tool-refresh" style="float:left; margin-right:5;"> </div><div><code> refresh</code></div>
     * <div class="x-tool x-tool-minus" style="float:left; margin-right:5;"> </div><div><code> minus</code></div>
     * <div class="x-tool x-tool-plus" style="float:left; margin-right:5;"> </div><div><code> plus</code></div>
     * <div class="x-tool x-tool-help" style="float:left; margin-right:5;"> </div><div><code> help</code></div>
     * <div class="x-tool x-tool-search" style="float:left; margin-right:5;"> </div><div><code> search</code></div>
     * <div class="x-tool x-tool-save" style="float:left; margin-right:5;"> </div><div><code> save</code></div>
     * <div class="x-tool x-tool-print" style="float:left; margin-right:5;"> </div><div><code> print</code></div>
     * </ul></div></li>
     * <li><b>handler</b> : Function<div class="sub-desc"><b>Required.</b> The function to
     * call when clicked. Arguments passed are:<ul>
     * <li><b>event</b> : ext.EventObject<div class="sub-desc">The click event.</div></li>
     * <li><b>toolEl</b> : ext.Element<div class="sub-desc">The tool Element.</div></li>
     * <li><b>panel</b> : ext.Panel<div class="sub-desc">The host Panel</div></li>
     * <li><b>tc</b> : ext.Panel<div class="sub-desc">The tool configuration object</div></li>
     * </ul></div></li>
     * <li><b>stopEvent</b> : Boolean<div class="sub-desc">Defaults to true. Specify as false to allow click event to propagate.</div></li>
     * <li><b>scope</b> : Object<div class="sub-desc">The scope in which to call the handler.</div></li>
     * <li><b>qtip</b> : String/Object<div class="sub-desc">A tip string, or
     * a config argument to <b class='link'>ext.QuickTip#register</b></div></li>
     * <li><b>hidden</b> : Boolean<div class="sub-desc">True to initially render hidden.</div></li>
     * <li><b>on</b> : Object<div class="sub-desc">A listener config object specifiying
     * event listeners in the format of an argument to <b class='link' title='#addListener'>addListener</b></div></li>
     * </ul></div>
     * <p>Note that, apart from the toggle tool which is provided when a panel is collapsible, these
     * tools only provide the visual button. Any required functionality must be provided by adding
     * handlers that implement the necessary behavior.</p>
     * <p>Example usage:</p>
     * <pre><code>
tools&#58;[{
    id&#58;'refresh',
    qtip&#58; 'Refresh form Data',
    &#47;/ hidden:true,
    handler&#58; function(event, toolEl, panel){
        &#47;/ refresh logic
    }
},
{
    id&#58;'help',
    qtip&#58; 'Get Help',
    handler&#58; function(event, toolEl, panel){
        &#47;/ whatever
    }
}]
</code></pre>
     * <p>For the custom id of <code>'help'</code> define two relevant css classes with a link to
     * a 15x15 image:</p>
     * <pre><code>
.x-tool-help {background-image: url(images/help.png);}
.x-tool-help-over {background-image: url(images/help_over.png);}
&#47;/ if using an image sprite:
.x-tool-help {background-image: url(images/help.png) no-repeat 0 0;}
.x-tool-help-over {background-position:-15px 0;}
</code></pre>
     */
    public var tools:*;
    /**
     * @cfg {ext.Template/ext.XTemplate} toolTemplate
     * <p>A Template used to create <b class='link' title='#tools'>tools</b> in the <b class='link' title='#header'>header</b> Element. Defaults to:</p><pre><code>
new ext.Template('&lt;div class="x-tool x-tool-{id}">&amp;#160;&lt;/div>')</code></pre>
     * <p>This may may be overridden to provide a custom DOM structure for tools based upon a more
     * complex XTemplate. The template's data is a single tool configuration object (Not the entire Array)
     * as specified in <b class='link' title='#tools'>tools</b>.  In the following example an &lt;a> tag is used to provide a
     * visual indication when hovering over the tool:</p><pre><code>
var win = new ext.Window({
    tools&#58; [{
        id&#58; 'download',
        href&#58; '/MyPdfDoc.pdf'
    }],
    toolTemplate&#58; new ext.XTemplate(
        '&lt;tpl if="id==\'download\'">',
            '&lt;a class="x-tool x-tool-pdf" href="{href}">&lt;/a>',
        '&lt;/tpl>',
        '&lt;tpl if="id!=\'download\'">',
            '&lt;div class="x-tool x-tool-{id}">&amp;#160;&lt;/div>',
        '&lt;/tpl>'
    ),
    width&#58;500,
    height&#58;300,
    closeAction&#58;'hide'
});</code></pre>
     * <p>Note that the CSS class "x-tool-pdf" should have an associated style rule which provides an
     * appropriate background image, something like:</p>
    <pre><code>
    a.x-tool-pdf {background-image: url(../shared/extjs/images/pdf.gif)!important;}
    </code></pre>
     */
    /**
     * @cfg {Boolean} hideCollapseTool
     * <code>true</code> to hide the expand/collapse toggle button when <code><b class='link' title='#collapsible'>collapsible</b> == true</code>,
     * <code>false</code> to display it (defaults to <code>false</code>).
     */
    /**
     * @cfg {Boolean} titleCollapse
     * <code>true</code> to allow expanding and collapsing the panel (when <code><b class='link' title='#collapsible'>collapsible</b> = true</code>)
     * by clicking anywhere in the header bar, <code>false</code>) to allow it only by clicking to tool button
     * (defaults to <code>false</code>)). If this panel is a child item of a border layout also see the
     * <b class='link' title='Ext.layout.borderlayout.Region'>borderlayout.Region</b>
     * <code><b class='link' title='Ext.layout.borderlayout.Region#floatable'>floatable</b></code> config option.
     */
    /**
     * @cfg {Boolean} autoScroll
     * <code>true</code> to use overflow:'auto' on the panel's body element and show scroll bars automatically when
     * necessary, <code>false</code> to clip any overflowing content (defaults to <code>false</code>).
     */
    /**
     * @cfg {Mixed} floating
     * <p>This property is used to configure the underlying <b class='link'>ext.Layer</b>. Acceptable values for this
     * configuration property are:</p><div class="mdetail-params"><ul>
     * <li><b><code>false</code></b> : <b>Default.</b><div class="sub-desc">Display the panel inline where it is
     * rendered.</div></li>
     * <li><b><code>true</code></b> : <div class="sub-desc">Float the panel (absolute position it with automatic
     * shimming and shadow).<ul>
     * <div class="sub-desc">Setting floating to true will create an ext.Layer for this panel and display the
     * panel at negative offsets so that it is hidden.</div>
     * <div class="sub-desc">Since the panel will be absolute positioned, the position must be set explicitly
     * <i>after</i> render (e.g., <code>myPanel.setPosition(100,100);</code>).</div>
     * <div class="sub-desc"><b>Note</b>: when floating a panel you should always assign a fixed width,
     * otherwise it will be auto width and will expand to fill to the right edge of the viewport.</div>
     * </ul></div></li>
     * <li><b><code><b class='link' title='ext.Layer'>object</b></code></b> : <div class="sub-desc">The specified object will be used
     * as the configuration object for the <b class='link'>ext.Layer</b> that will be created.</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Boolean/String} shadow
     * <code>true</code> (or a valid ext.Shadow <b class='link'>ext.Shadow#mode</b> value) to display a shadow behind the
     * panel, <code>false</code> to display no shadow (defaults to <code>'sides'</code>).  Note that this option
     * only applies when <code><b class='link' title='#floating'>floating</b> = true</code>.
     */
    /**
     * @cfg {Number} shadowOffset
     * The number of pixels to offset the shadow if displayed (defaults to <code>4</code>). Note that this
     * option only applies when <code><b class='link' title='#floating'>floating</b> = true</code>.
     */
    /**
     * @cfg {Boolean} shim
     * <code>false</code> to disable the iframe shim in browsers which need one (defaults to <code>true</code>).
     * Note that this option only applies when <code><b class='link' title='#floating'>floating</b> = true</code>.
     */
    /**
     * @cfg {String/Object} html
     * An HTML fragment, or a <b class='link' title='ext.DomHelper'>DomHelper</b> specification to use as the panel's body
     * content (defaults to ''). The HTML content is added by the Panel's <b class='link' title='#afterRender'>afterRender</b> method,
     * and so the document will not contain this HTML at the time the <b class='link' title='#render'>render</b> event is fired.
     * This content is inserted into the body <i>before</i> any configured <b class='link' title='#contentEl'>contentEl</b> is appended.
     */
    /**
     * @cfg {String} contentEl
     * <p>Specify the <code>id</code> of an existing HTML node to use as the panel's body content
     * (defaults to '').</p><div><ul>
     * <li><b>Description</b> : <ul>
     * <div class="sub-desc">This config option is used to take an existing HTML element and place it in the body
     * of a new panel (it simply moves the specified DOM element into the body element of the Panel
     * <i>when the Panel is rendered</i> to use as the content (it is not going to be the
     * actual panel itself).</div>
     * </ul></li>
     * <li><b>Notes</b> : <ul>
     * <div class="sub-desc">The specified HTML Element is appended to the Panel's <b class='link' title='#body'>body</b> Element by the
     * Panel's <b class='link' title='#afterRender'>afterRender</b> method <i>after any configured <b class='link' title='#html'>HTML</b> has
     * been inserted</i>, and so the document will not contain this HTML at the time the
     * <b class='link' title='#render'>render</b> event is fired.</div>
     * <div class="sub-desc">The specified HTML element used will not participate in any layout scheme that the
     * Panel may use. It's just HTML. Layouts operate on child items.</div>
     * <div class="sub-desc">Add either the <code>x-hidden</code> or the <code>x-hide-display</code> CSS class to
     * prevent a brief flicker of the content before it is rendered to the panel.</div>
     * </ul></li>
     * </ul></div>
     */
    /**
     * @cfg {Object/Array} keys
     * A <b class='link'>ext.KeyMap</b> config object (in the format expected by <b class='link'>ext.KeyMap#addBinding</b>
     * used to assign custom key handling to this panel (defaults to <code>null</code>).
     */
    /**
     * @cfg {Boolean/Object} draggable
     * <p><code>true</code> to enable dragging of this Panel (defaults to <code>false</code>).</p>
     * <p>For custom drag/drop implementations, an <b>Ext.panel.DD</b> config could also be passed
     * in this config instead of <code>true</code>. Ext.panel.DD is an internal, undocumented class which
     * moves a proxy Element around in place of the Panel's element, but provides no other behaviour
     * during dragging or on drop. It is a subclass of <b class='link'>Ext.dd.DragSource</b>, so behaviour may be
     * added by implementing the interface methods of <b class='link'>Ext.dd.DragDrop</b> e.g.:
     * <pre><code>
new ext.Panel({
    title&#58; 'Drag me',
    x&#58; 100,
    y&#58; 100,
    renderTo&#58; Ext.getBody(),
    floating&#58; true,
    frame&#58; true,
    width&#58; 400,
    height&#58; 200,
    draggable&#58; {
&#47;/      Config option of Ext.panel.DD class.
&#47;/      It&#39;s a floating Panel, so do not show a placeholder proxy in the original position.
        insertProxy&#58; false,

&#47;/      Called for each mousemove event while dragging the DD object.
        onDrag : function(e){
&#47;/          Record the x,y position of the drag proxy so that we can
&#47;/          position the Panel at end of drag.
            var pel = this.proxy.getEl();
            this.x = pel.getLeft(true);
            this.y = pel.getTop(true);

&#47;/          Keep the Shadow aligned if there is one.
            var s = this.panel.getEl().shadow;
            if (s) {
                s.realign(this.x, this.y, pel.getWidth(), pel.getHeight());
            }
        },

&#47;/      Called on the mouseup event.
        endDrag : function(e){
            this.panel.setPosition(this.x, this.y);
        }
    }
}).show();
</code></pre>
     */
    /**
     * @cfg {String} tabTip
     * A string to be used as innerHTML (html tags are accepted) to show in a tooltip when mousing over
     * the tab of a ext.Panel which is an item of a <b class='link'>ext.TabPanel</b>. <b class='link'>ext.QuickTips</b>.init()
     * must be called in order for the tips to render.
     */
    /**
     * @cfg {Boolean} disabled
     * Render this panel disabled (default is <code>false</code>). An important note when using the disabled
     * config on panels is that IE will often fail to initialize the disabled mask element correectly if
     * the panel's layout has not yet completed by the time the Panel is disabled during the render process.
     * If you experience this issue, you may need to instead use the <b class='link' title='#afterlayout'>afterlayout</b> event to initialize
     * the disabled state:
     * <pre><code>
new ext.Panel({
    ...
    listeners&#58; {
        'afterlayout': {
            fn&#58; function(p){
                p.disable();
            },
            single&#58; true // important, as many layouts can occur
        }
    }
});
</code></pre>
     */
    /**
     * @cfg {Boolean} autoHeight
     * <code>true</code> to use height:'auto', <code>false</code> to use fixed height (defaults to <code>false</code>).
     * <b>Note</b>: Setting <code>autoHeight:true</code> means that the browser will manage the panel's height
     * based on its contents, and that Ext will not manage it at all. If the panel is within a layout that
     * manages dimensions (<code>fit</code>, <code>border</code>, etc.) then setting <code>autoHeight:true</code>
     * can cause issues with scrolling and will not generally work as expected since the panel will take
     * on the height of its contents rather than the height required by the Ext layout.
     */
    /**
     * @cfg {String} baseCls
     * The base CSS class to apply to this panel's element (defaults to <code>'x-panel'</code>).
     * <p>Another option available by default is to specify <code>'x-plain'</code> which strips all styling
     * except for required attributes for Ext layouts to function (e.g. overflow:hidden).
     * See <code><b class='link' title='#unstyled'>unstyled</b></code> also.</p>
     */
    public var baseCls  : String;
    /**
     * @cfg {String} collapsedCls
     * A CSS class to add to the panel's element after it has been collapsed (defaults to
     * <code>'x-panel-collapsed'</code>).
     */
    public var collapsedCls  : String;
    /**
     * @cfg {Boolean} maskDisabled
     * <code>true</code> to mask the panel when it is <b class='link' title='#disabled'>disabled</b>, <code>false</code> to not mask it (defaults
     * to <code>true</code>).  Either way, the panel will always tell its contained elements to disable themselves
     * when it is disabled, but masking the panel can provide an additional visual cue that the panel is
     * disabled.
     */
    public var maskDisabled  : Boolean;
    /**
     * @cfg {Boolean} animCollapse
     * <code>true</code> to animate the transition when the panel is collapsed, <code>false</code> to skip the
     * animation (defaults to <code>true</code> if the <b class='link'>ext.Fx</b> class is available, otherwise <code>false</code>).
     */
    public var animCollapse  : Boolean;
    /**
     * @cfg {Boolean} headerAsText
     * <code>true</code> to display the panel <code><b class='link' title='#title'>title</b></code> in the <code><b class='link' title='#header'>header</b></code>,
     * <code>false</code> to hide it (defaults to <code>true</code>).
     */
    public var headerAsText  : Boolean;
    /**
     * @cfg {String} buttonAlign
     * The alignment of any <b class='link' title='#buttons'>buttons</b> added to this panel.  Valid values are <code>'right'</code>,
     * <code>'left'</code> and <code>'center'</code> (defaults to <code>'right'</code>).
     */
    public var buttonAlign  : String;
    /**
     * @cfg {Boolean} collapsed
     * <code>true</code> to render the panel collapsed, <code>false</code> to render it expanded (defaults to
     * <code>false</code>).
     */
    /**
     * @cfg {Boolean} collapseFirst
     * <code>true</code> to make sure the collapse/expand toggle button always renders first (to the left of)
     * any other tools in the panel's title bar, <code>false</code> to render it last (defaults to <code>true</code>).
     */
    public var collapseFirst  : Boolean;
    /**
     * @cfg {Number} minButtonWidth
     * Minimum width in pixels of all <b class='link' title='#buttons'>buttons</b> in this panel (defaults to <code>75</code>)
     */
    public var minButtonWidth  : Number;
    /**
     * @cfg {Boolean} unstyled
     * Overrides the <code><b class='link' title='#baseCls'>baseCls</b></code> setting to <code><b class='link' title='#baseCls'>baseCls</b> = 'x-plain'</code> which renders
     * the panel unstyled except for required attributes for Ext layouts to function (e.g. overflow:hidden).
     */
    /**
     * @cfg {String} elements
     * A comma-delimited list of panel elements to initialize when the panel is rendered.  Normally, this list will be
     * generated automatically based on the items added to the panel at config time, but sometimes it might be useful to
     * make sure a structural element is rendered even if not specified at config time (for example, you may want
     * to add a button or toolbar dynamically after the panel has been rendered).  Adding those elements to this
     * list will allocate the required placeholders in the panel when it is rendered.  Valid values are<div class="mdetail-params"><ul>
     * <li><code>header</code></li>
     * <li><code>tbar</code> (top bar)</li>
     * <li><code>body</code></li>
     * <li><code>bbar</code> (bottom bar)</li>
     * <li><code>footer</code></li>
     * </ul></div>
     * Defaults to '<code>body</code>'.
     */
    public var elements  : String;
    /**
     * @cfg {Boolean} preventBodyReset
     * Defaults to <code>false</code>.  When set to <code>true</code>, an extra css class <code>'x-panel-normal'</code>
     * will be added to the panel's element, effectively applying css styles suggested by the W3C
     * (see http://www.w3.org/TR/CSS21/sample.html) to the Panel's <b>body</b> element (not the header,
     * footer, etc.).
     */
    public var preventBodyReset  : Boolean;
    public var toolTarget ;
    public var collapseEl ;
    public var slideAnchor ;
    //public var disabledClass ;
    //public var deferHeight ;
    protected var expandDefaults;
    protected var collapseDefaults ;
    override protected native function initComponent() : void;
            /**
             * This Panel's Array of buttons as created from the <code><b class='link' title='#buttons'>buttons</b></code>
             * config property. Read only.
             * @property buttons
             */
  public var buttons : Array;
    protected native function createElement(name, pnode) : void;
    override protected native function onRender(container : Element, position : Element) : void;
    /**
     * Sets the CSS class that provides the icon image for this panel.  This method will replace any existing
     * icon class if one has already been set and fire the <b class='link' title='#iconchange'>iconchange</b> event after completion.
     * @param cls The new CSS class name
     */
    public native function setIconClass(cls : String) : void;
    protected native function makeFloating(cfg) : void;
    /**
     * Returns the <b class='link' title='ext.Toolbar'>toolbar</b> from the top (<code><b class='link' title='#tbar'>tbar</b></code>) section of the panel.
     * @return The toolbar
     */
    public native function getTopToolbar() : Toolbar;
    /**
     * Returns the <b class='link' title='ext.Toolbar'>toolbar</b> from the bottom (<code><b class='link' title='#bbar'>bbar</b></code>) section of the panel.
     * @return The toolbar
     */
    public native function getBottomToolbar() : Toolbar;
    /**
     * Adds a button to this panel.  Note that this method must be called prior to rendering.  The preferred
     * approach is to add buttons via the <b class='link' title='#buttons'>buttons</b> config.
     * @param config A valid <b class='link'>ext.Button</b> config.  A string will become the text for a default
     * button config, an object will be treated as a button config object.
     * @param handler The function to be called on button <b class='link'>ext.Button#click</b>
     * @param scope The scope to use for the button handler function
     * @return The button that was added
     */
    public native function addButton(config : *, handler : Function, scope : Object) : Button;
    protected native function addTool() : void;
    override protected native function onLayout(shallow : Boolean = false, force : Boolean = false):void;
    public native function syncHeight() : void;
    override protected native function onShow() : void;
    override protected native function onHide() : void;
    protected native function createToolHandler(t, tc, overCls, panel) : void;
    override protected native function afterRender() : void;
    protected native function setAutoScroll() : void;
    protected native function getKeyMap() : void;
    protected native function initEvents() : void;
    protected native function initDraggable() : void;
        /**
         * <p>If this Panel is configured <b class='link' title='#draggable'>draggable</b>, this property will contain
         * an instance of <b class='link'>Ext.dd.DragSource</b> which handles dragging the Panel.</p>
         * The developer must provide implementations of the abstract methods of <b class='link'>Ext.dd.DragSource</b>
         * in order to supply behaviour for each stage of the drag/drop process. See <b class='link' title='#draggable'>draggable</b>.
         * @property dd
         */
    protected native function beforeEffect() : void;
    protected native function afterEffect() : void;
    public native function createEffect(a, cb, scope) : void;
    /**
     * Collapses the panel body so that it becomes hidden.  Fires the <b class='link' title='#beforecollapse'>beforecollapse</b> event which will
     * cancel the collapse action if it returns false.
     * @param animate True to animate the transition, else false (defaults to the value of the
     * <b class='link' title='#animCollapse'>animCollapse</b> panel config)
     * @return this
     */
    public native function collapse(animate : Boolean) : Panel;
    protected native function onCollapse(doAnim, animArg) : void;
    protected native function afterCollapse() : void;
    /**
     * Expands the panel body so that it becomes visible.  Fires the <b class='link' title='#beforeexpand'>beforeexpand</b> event which will
     * cancel the expand action if it returns false.
     * @param animate True to animate the transition, else false (defaults to the value of the
     * <b class='link' title='#animCollapse'>animCollapse</b> panel config)
     * @return this
     */
    public native function expand(animate : Boolean) : Panel;
    protected native function onExpand(doAnim, animArg) : void;
    protected native function afterExpand() : void;
    /**
     * Shortcut for performing an <b class='link' title='#expand'>expand</b> or <b class='link' title='#collapse'>collapse</b> based on the current state of the panel.
     * @param animate True to animate the transition, else false (defaults to the value of the
     * <b class='link' title='#animCollapse'>animCollapse</b> panel config)
     * @return this
     */
    public native function toggleCollapse(animate : Boolean) : Panel;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
  override public native function onResize(adjWidth, adjHeight, rawWidth, rawHeight) : void;
    protected native function adjustBodyHeight(h) : void;
    protected native function adjustBodyWidth(w) : void;
    override public native function onPosition(x, y) : void;
    /**
     * Returns the width in pixels of the framing elements of this panel (not including the body width).  To
     * retrieve the body width see <b class='link' title='#getInnerWidth'>getInnerWidth</b>.
     * @return The frame width
     */
    public native function getFrameWidth() : Number;
    /**
     * Returns the height in pixels of the framing elements of this panel (including any top and bottom bars and
     * header and footer elements, but not including the body height).  To retrieve the body height see <b class='link' title='#getInnerHeight'>getInnerHeight</b>.
     * @return The frame height
     */
    public native function getFrameHeight() : Number;
    /**
     * Returns the width in pixels of the body element (not including the width of any framing elements).
     * For the frame width see <b class='link' title='#getFrameWidth'>getFrameWidth</b>.
     * @return The body width
     */
    public native function getInnerWidth() : Number;
    /**
     * Returns the height in pixels of the body element (not including the height of any framing elements).
     * For the frame height see <b class='link' title='#getFrameHeight'>getFrameHeight</b>.
     * @return The body height
     */
    public native function getInnerHeight() : Number;
    protected native function syncShadow() : void;
  override public native function getLayoutTarget() : Element;
    /**
     * <p>Sets the title text for the panel and optionally the <b class='link' title='#iconCls'>icon class</b>.</p>
     * <p>In order to be able to set the title, a header element must have been created
     * for the Panel. This is triggered either by configuring the Panel with a non-blank <code><b class='link' title='#title'>title</b></code>,
     * or configuring it with <code><b><b class='link' title='#header'>header</b>: true</b></code>.</p>
     * @param title The title text to set
     * @param iconCls A user-defined CSS class that provides the icon image for this panel
     */
    public native function setTitle(title : String, iconCls : String = undefined) : void;
    /**
     * Get the <b class='link'>ext.Updater</b> for this panel. Enables you to perform Ajax updates of this panel's body.
     * @return The Updater
     */
    public native function getUpdater() : Updater;
     /**
     * Loads this content panel immediately with content returned from an XHR call.
     * @param config A config object containing any of the following options:
<pre><code>
panel.load({
    url&#58; "your-url.php",
    params&#58; {param1: "foo", param2: "bar"}, // or a URL encoded string
    callback&#58; yourFunction,
    scope&#58; yourObject, // optional scope for the callback
    discardUrl&#58; false,
    nocache&#58; false,
    text&#58; "Loading...",
    timeout&#58; 30,
    scripts&#58; false
});
</code></pre>
     * The only required property is url. The optional properties nocache, text and scripts
     * are shorthand for disableCaching, indicatorText and loadScripts and are used to set their
     * associated property on this panel Updater instance.
     * @return this
     */
    public native function load(config : *) : Panel;
    override protected native function beforeDestroy() : void;
    protected native function createClasses() : void;
    protected native function createGhost(cls, useShim, appendTo) : void;
    protected native function doAutoLoad() : void;
    /**
     * Retrieve a tool by id.
     * @param id
     * @return tool
     */
    public native function getTool(id : String) : Object;
/**
 * @cfg {String} autoEl @hide
 */
  /**
   * @cfg {String} title
   * The title text to be used as innerHTML (html tags are accepted) to display in the panel
   * <code><b class='link' title='#header'>header</b></code> (defaults to ''). When a <code>title</code> is specified the
   * <code><b class='link' title='#header'>header</b></code> element will automatically be created and displayed unless
   * <code><b class='link' title='#header'>header</b></code> is explicitly set to <code>false</code>.  If you do not want to specify a
   * <code>title</code> at config time, but you may want one later, you must either specify a non-empty
   * <code>title</code> (a blank space ' ' will do) or <code>header:true</code> so that the container
   * element will get created.
   */
  public var title : String;
  public var html : String;
}}
