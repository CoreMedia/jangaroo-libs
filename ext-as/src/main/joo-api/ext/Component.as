package ext {

import ext.util.Observable;

/**
 * <p>Base class for all Ext components.  All subclasses of Component may participate in the automated
 * Ext component lifecycle of creation, rendering and destruction which is provided by the <b class='link' title='ext.Container'>Container</b> class.
 * Components may be added to a Container through the <b class='link' title='ext.Container#items'>items</b> config option at the time the Container is created,
 * or they may be added dynamically via the <b class='link' title='ext.Container#add'>add</b> method.</p>
 * <p>The Component base class has built-in support for basic hide/show and enable/disable behavior.</p>
 * <p>All Components are registered with the <b class='link'>ext.ComponentMgr</b> on construction so that they can be referenced at any time via
 * <b class='link'>Ext#getCmp</b>, passing the <b class='link'>#id</b>.</p>
 * <p>All user-developed visual widgets that are required to participate in automated lifecycle and size management should subclass Component (or
 * <b class='link'>ext.BoxComponent</b> if managed box model handling is required, ie height and width management).</p>
 * <p>See the <a href="http://extjs.com/learn/Tutorial:Creating_new_UI_controls">Creating new UI controls</a> tutorial for details on how
 * and to either extend or augment ExtJs base classes to create custom Components.</p>
 * <p>Every component has a specific xtype, which is its Ext-specific type name, along with methods for checking the
 * xtype like <b class='link'>#getXType</b> and <b class='link'>#isXType</b>. This is the list of all valid xtypes:</p>
 * <pre>
xtype            Class
-------------    ------------------
box              <b class='link'>ext.BoxComponent</b>
button           <b class='link'>ext.Button</b>
buttongroup      <b class='link'>ext.ButtonGroup</b>
colorpalette     <b class='link'>ext.ColorPalette</b>
component        <b class='link'>ext.Component</b>
container        <b class='link'>ext.Container</b>
cycle            <b class='link'>ext.CycleButton</b>
dataview         <b class='link'>ext.DataView</b>
datepicker       <b class='link'>ext.DatePicker</b>
editor           <b class='link'>ext.Editor</b>
editorgrid       <b class='link'>ext.grid.EditorGridPanel</b>
flash            <b class='link'>ext.FlashComponent</b>
grid             <b class='link'>ext.grid.GridPanel</b>
listview         <b class='link'>ext.ListView</b>
panel            <b class='link'>ext.Panel</b>
progress         <b class='link'>ext.ProgressBar</b>
propertygrid     <b class='link'>ext.grid.PropertyGrid</b>
slider           <b class='link'>ext.Slider</b>
spacer           <b class='link'>ext.Spacer</b>
splitbutton      <b class='link'>ext.SplitButton</b>
tabpanel         <b class='link'>ext.TabPanel</b>
treepanel        <b class='link'>ext.tree.TreePanel</b>
viewport         <b class='link'>ext.ViewPort</b>
window           <b class='link'>ext.Window</b>

Toolbar components
---------------------------------------
paging           <b class='link'>ext.PagingToolbar</b>
toolbar          <b class='link'>ext.Toolbar</b>
tbbutton         <b class='link'>ext.toolbar.Button</b>        (deprecated; use button)
tbfill           <b class='link'>ext.toolbar.Fill</b>
tbitem           <b class='link'>ext.toolbar.Item</b>
tbseparator      <b class='link'>ext.toolbar.Separator</b>
tbspacer         <b class='link'>ext.toolbar.Spacer</b>
tbsplit          <b class='link'>ext.toolbar.SplitButton</b>   (deprecated; use splitbutton)
tbtext           <b class='link'>ext.toolbar.TextItem</b>

Menu components
---------------------------------------
menu             <b class='link'>ext.menu.Menu</b>
colormenu        <b class='link'>ext.menu.ColorMenu</b>
datemenu         <b class='link'>ext.menu.DateMenu</b>
menubaseitem     <b class='link'>ext.menu.BaseItem</b>
menucheckitem    <b class='link'>ext.menu.CheckItem</b>
menuitem         <b class='link'>ext.menu.Item</b>
menuseparator    <b class='link'>ext.menu.Separator</b>
menutextitem     <b class='link'>ext.menu.TextItem</b>

Form components
---------------------------------------
form             <b class='link'>ext.FormPanel</b>
checkbox         <b class='link'>ext.form.Checkbox</b>
checkboxgroup    <b class='link'>ext.form.CheckboxGroup</b>
combo            <b class='link'>ext.form.ComboBox</b>
datefield        <b class='link'>ext.form.DateField</b>
displayfield     <b class='link'>ext.form.DisplayField</b>
field            <b class='link'>ext.form.Field</b>
fieldset         <b class='link'>ext.form.FieldSet</b>
hidden           <b class='link'>ext.form.Hidden</b>
htmleditor       <b class='link'>ext.form.HtmlEditor</b>
label            <b class='link'>ext.form.Label</b>
numberfield      <b class='link'>ext.form.NumberField</b>
radio            <b class='link'>ext.form.Radio</b>
radiogroup       <b class='link'>ext.form.RadioGroup</b>
textarea         <b class='link'>ext.form.TextArea</b>
textfield        <b class='link'>ext.form.TextField</b>
timefield        <b class='link'>ext.form.TimeField</b>
trigger          <b class='link'>ext.form.TriggerField</b>

Chart components
---------------------------------------
chart            <b class='link'>ext.chart.Chart</b>
barchart         <b class='link'>ext.chart.BarChart</b>
cartesianchart   <b class='link'>ext.chart.CartesianChart</b>
columnchart      <b class='link'>ext.chart.ColumnChart</b>
linechart        <b class='link'>ext.chart.LineChart</b>
piechart         <b class='link'>ext.chart.PieChart</b>

Store xtypes
---------------------------------------
arraystore       <b class='link'>ext.data.ArrayStore</b>
directstore      <b class='link'>ext.data.DirectStore</b>
groupingstore    <b class='link'>ext.data.GroupingStore</b>
jsonstore        <b class='link'>ext.data.JsonStore</b>
simplestore      <b class='link'>ext.data.SimpleStore</b>      (deprecated; use arraystore)
store            <b class='link'>ext.data.Store</b>
xmlstore         <b class='link'>ext.data.XmlStore</b>
</pre>
*/
public class Component extends Observable {
/**
 * @constructor
 * @param config The configuration options may be specified as either:
 * <div class="mdetail-params"><ul>
 * <li><b>an element</b> :
 * <p class="sub-desc">it is set as the internal element and its id used as the component id</p></li>
 * <li><b>a string</b> :
 * <p class="sub-desc">it is assumed to be the id of an existing element and is used as the component id</p></li>
 * <li><b>anything else</b> :
 * <p class="sub-desc">it is assumed to be a standard config object and is applied to the component</p></li>
 * </ul></div>
 */
public function Component(config : *) {
  super();
  config++;
}
    /**
     * This Component's initial configuration specification. Read-only.
     * @property initialConfig
     */
  public native function get initialConfig() : Object;

  protected static var AUTO_ID  : Object = 1000;
    /**
     * @cfg {String} fieldLabel <p>The label text to display next to this Component (defaults to '').</p>
     * <br><p><b>Note</b>: this config is only used when this Component is rendered by a Container which
     * has been configured to use the <b class='link' title='ext.layout.FormLayout'>FormLayout</b> layout manager (e.g.
     * <b class='link'>ext.form.FormPanel</b> or specifying <tt>layout:'form'</tt>).</p><br>
     * <p>Also see <tt><b class='link'>#hideLabel</b></tt> and
     * <b class='link'>ext.layout.FormLayout</b>.<b class='link' title='ext.layout.FormLayout#fieldTpl'>fieldTpl</b>.</p>
     * Example use:<pre><code>
new ext.FormPanel({
    height: 100,
    renderTo: Ext.getBody(),
    items: [{
        xtype: 'textfield',
        fieldLabel: 'Name'
    }]
});
</code></pre>
     */
    /**
     * @cfg {String} labelStyle <p>A CSS style specification string to apply directly to this field's
     * label.  Defaults to the container's labelStyle value if set (e.g.,
     * <tt><b class='link'>ext.layout.FormLayout#labelStyle</b></tt> , or '').</p>
     * <br><p><b>Note</b>: see the note for <code><b class='link'>#clearCls</b></code>.</p><br>
     * <p>Also see <code><b class='link'>#hideLabel</b></code> and
     * <code><b class='link'>ext.layout.FormLayout</b>.<b class='link' title='ext.layout.FormLayout#fieldTpl'>fieldTpl</b>.</code></p>
     * Example use:<pre><code>
new ext.FormPanel({
    height: 100,
    renderTo: Ext.getBody(),
    items: [{
        xtype: 'textfield',
        fieldLabel: 'Name',
        labelStyle: 'font-weight:bold;'
    }]
});
</code></pre>
     */
    /**
     * @cfg {String} labelSeparator <p>The separator to display after the text of each
     * <tt><b class='link'>#fieldLabel</b></tt>.  This property may be configured at various levels.
     * The order of precedence is:
     * <div class="mdetail-params"><ul>
     * <li>field / component level</li>
     * <li>container level</li>
     * <li><b class='link' title='ext.layout.FormLayout#labelSeparator layout'>level</b> (defaults to colon <tt>':'</tt>)</li>
     * </ul></div>
     * To display no separator for this field's label specify empty string ''.</p>
     * <br><p><b>Note</b>: see the note for <tt><b class='link'>#clearCls</b></tt>.</p><br>
     * <p>Also see <tt><b class='link'>#hideLabel</b></tt> and
     * <b class='link'>ext.layout.FormLayout</b>.<b class='link' title='ext.layout.FormLayout#fieldTpl'>fieldTpl</b>.</p>
     * Example use:<pre><code>
new ext.FormPanel({
    height: 100,
    renderTo: Ext.getBody(),
    layoutConfig: {
        labelSeparator: '~'   // layout config has lowest priority (defaults to ':')
    },
    <b class='link' title='ext.layout.FormLayout#labelSeparator'>labelSeparator</b>: '>>',     // config at container level
    items: [{
        xtype: 'textfield',
        fieldLabel: 'Field 1',
        labelSeparator: '...' // field/component level config supersedes others
    },{
        xtype: 'textfield',
        fieldLabel: 'Field 2' // labelSeparator will be '='
    }]
});
</code></pre>
     */
    /**
     * @cfg {Boolean} hideLabel <p><tt>true</tt> to completely hide the label element
     * (<b class='link' title='#fieldLabel'>label</b> and <b class='link' title='#labelSeparator'>separator</b>). Defaults to <tt>false</tt>.
     * By default, even if you do not specify a <tt><b class='link'>#fieldLabel</b></tt> the space will still be
     * reserved so that the field will line up with other fields that do have labels.
     * Setting this to <tt>true</tt> will cause the field to not reserve that space.</p>
     * <br><p><b>Note</b>: see the note for <tt><b class='link'>#clearCls</b></tt>.</p><br>
     * Example use:<pre><code>
new ext.FormPanel({
    height: 100,
    renderTo: Ext.getBody(),
    items: [{
        xtype: 'textfield'
        hideLabel: true
    }]
});
</code></pre>
     */
    /**
     * @cfg {String} clearCls <p>The CSS class used to to apply to the special clearing div rendered
     * directly after each form field wrapper to provide field clearing (defaults to
     * <tt>'x-form-clear-left'</tt>).</p>
     * <br><p><b>Note</b>: this config is only used when this Component is rendered by a Container
     * which has been configured to use the <b class='link' title='ext.layout.FormLayout'>FormLayout</b> layout
     * manager (e.g. <b class='link'>ext.form.FormPanel</b> or specifying <tt>layout:'form'</tt>) and either a
     * <tt><b class='link'>#fieldLabel</b></tt> is specified or <tt>isFormField=true</tt> is specified.</p><br>
     * <p>See <b class='link'>ext.layout.FormLayout</b>.<b class='link' title='ext.layout.FormLayout#fieldTpl'>fieldTpl</b> also.</p>
     */
    /**
     * @cfg {String} itemCls <p>An additional CSS class to apply to the div wrapping the form item
     * element of this field.  If supplied, <tt>itemCls</tt> at the <b>field</b> level will override
     * the default <tt>itemCls</tt> supplied at the <b>container</b> level. The value specified for
     * <tt>itemCls</tt> will be added to the default class (<tt>'x-form-item'</tt>).</p>
     * <p>Since it is applied to the item wrapper (see
     * <b class='link'>ext.layout.FormLayout</b>.<b class='link' title='ext.layout.FormLayout#fieldTpl'>fieldTpl</b>), it allows
     * you to write standard CSS rules that can apply to the field, the label (if specified), or
     * any other element within the markup for the field.</p>
     * <br><p><b>Note</b>: see the note for <tt><b class='link'>#fieldLabel</b></tt>.</p><br>
     * Example use:<pre><code>
// Apply a style to the field's label:
&lt;style>
    .required .x-form-item-label {font-weight:bold;color:red;}
&lt;/style>

new ext.FormPanel({
	height: 100,
	renderTo: Ext.getBody(),
	items: [{
		xtype: 'textfield',
		fieldLabel: 'Name',
		itemCls: 'required' //this label will be styled
	},{
		xtype: 'textfield',
		fieldLabel: 'Favorite Color'
	}]
});
</code></pre>
     */
    /**
     * @cfg {String} anchor <p><b>Note</b>: this config is only used when this Component is rendered
     * by a Container which has been configured to use an <b class='link' title='ext.layout.AnchorLayout'>AnchorLayout</b>
     * based layout manager, for example:<div class="mdetail-params"><ul>
     * <li><b class='link'>ext.form.FormPanel</b></li>
     * <li>specifying <code>layout: 'anchor' // or 'form', or 'absolute'</code></li>
     * </ul></div></p>
     * <p>See <b class='link'>ext.layout.AnchorLayout</b>.<b class='link' title='ext.layout.AnchorLayout#anchor'>anchor</b> also.</p>
     */
    /**
     * @cfg {String} id
     * <p>The <b>unique</b> id of this component (defaults to an <b class='link' title='#getId auto-assigned'>id</b>).
     * You should assign an id if you need to be able to access the component later and you do
     * not have an object reference available (e.g., using <b class='link'>Ext</b>.<b class='link' title='Ext#getCmp'>getCmp</b>).</p>
     * <p>Note that this id will also be used as the element id for the containing HTML element
     * that is rendered to the page for this component. This allows you to write id-based CSS
     * rules to style the specific instance of this component uniquely, and also to select
     * sub-elements using this component's id as the parent.</p>
     * <p><b>Note</b>: to avoid complications imposed by a unique <tt>id</tt> also see
     * <code><b class='link'>#itemId</b></code> and <code><b class='link'>#ref</b></code>.</p>
     * <p><b>Note</b>: to access the container of an item see <code><b class='link'>#ownerCt</b></code>.</p>
     */
  public var id : String;
    /**
     * @cfg {String} itemId
     * <p>An <tt>itemId</tt> can be used as an alternative way to get a reference to a component
     * when no object reference is available.  Instead of using an <code><b class='link'>#id</b></code> with
     * <b class='link'>Ext</b>.<b class='link' title='Ext#getCmp'>getCmp</b>, use <code>itemId</code> with
     * <b class='link'>ext.Container</b>.<b class='link' title='ext.Container#getComponent'>getComponent</b> which will retrieve
     * <code>itemId</code>'s or <tt><b class='link'>#id</b></tt>'s. Since <code>itemId</code>'s are an index to the
     * container's internal MixedCollection, the <code>itemId</code> is scoped locally to the container --
     * avoiding potential conflicts with <b class='link'>ext.ComponentMgr</b> which requires a <b>unique</b>
     * <code><b class='link'>#id</b></code>.</p>
     * <pre><code>
var c = new ext.Panel({ //
    <b class='link' title='ext.BoxComponent#height'>height</b>: 300,
    <b class='link'>#renderTo</b>: document.body,
    <b class='link' title='ext.Container#layout'>layout</b>: 'auto',
    <b class='link' title='ext.Container#items'>items</b>: [
        {
            itemId: 'p1',
            <b class='link' title='ext.Panel#title'>title</b>: 'Panel 1',
            <b class='link' title='ext.BoxComponent#height'>height</b>: 150
        },
        {
            itemId: 'p2',
            <b class='link' title='ext.Panel#title'>title</b>: 'Panel 2',
            <b class='link' title='ext.BoxComponent#height'>height</b>: 150
        }
    ]
})
p1 = c.<b class='link' title='ext.Container#getComponent'>getComponent</b>('p1'); // not the same as <b class='link' title='Ext#getCmp'>Ext.getCmp()</b>
p2 = p1.<b class='link'>#ownerCt</b>.<b class='link' title='ext.Container#getComponent'>getComponent</b>('p2'); // reference via a sibling
     * </code></pre>
     * <p>Also see <tt><b class='link'>#id</b></tt> and <code><b class='link'>#ref</b></code>.</p>
     * <p><b>Note</b>: to access the container of an item see <tt><b class='link'>#ownerCt</b></tt>.</p>
     */
  public var itemId : String;
    /**
     * @cfg {String} xtype
     * The registered <tt>xtype</tt> to create. This config option is not used when passing
     * a config object into a constructor. This config option is used only when
     * lazy instantiation is being used, and a child item of a Container is being
     * specified not as a fully instantiated Component, but as a <i>Component config
     * object</i>. The <tt>xtype</tt> will be looked up at render time up to determine what
     * type of child Component to create.<br><br>
     * The predefined xtypes are listed <b class='link' title='ext.Component'>here</b>.
     * <br><br>
     * If you subclass Components to create your own Components, you may register
     * them using <b class='link'>ext.ComponentMgr#registerType</b> in order to be able to
     * take advantage of lazy instantiation and rendering.
     */
  public var xtype : String;
    /**
     * @cfg {String} ptype
     * The registered <tt>ptype</tt> to create. This config option is not used when passing
     * a config object into a constructor. This config option is used only when
     * lazy instantiation is being used, and a Plugin is being
     * specified not as a fully instantiated Component, but as a <i>Component config
     * object</i>. The <tt>ptype</tt> will be looked up at render time up to determine what
     * type of Plugin to create.<br><br>
     * If you create your own Plugins, you may register them using
     * <b class='link'>ext.ComponentMgr#registerPlugin</b> in order to be able to
     * take advantage of lazy instantiation and rendering.
     */
  public var ptype : String;
    /**
     * @cfg {String} cls
     * An optional extra CSS class that will be added to this component's Element (defaults to '').  This can be
     * useful for adding customized styles to the component or any of its children using standard CSS rules.
     */
  public var cls : String;
    /**
     * @cfg {String} overCls
     * An optional extra CSS class that will be added to this component's Element when the mouse moves
     * over the Element, and removed when the mouse moves out. (defaults to '').  This can be
     * useful for adding customized 'active' or 'hover' styles to the component or any of its children using standard CSS rules.
     */
  public var overCls : String;
    /**
     * @cfg {String} style
     * A custom style specification to be applied to this component's Element.  Should be a valid argument to
     * <b class='link'>ext.Element#applyStyles</b>.
     * <pre><code>
new ext.Panel({
    title: 'Some Title',
    renderTo: Ext.getBody(),
    width: 400, height: 300,
    layout: 'form',
    items: [{
        xtype: 'textarea',
        style: {
            width: '95%',
            marginBottom: '10px'
        }
    },
        new ext.Button({
            text: 'Send',
            minWidth: '100',
            style: {
                marginBottom: '10px'
            }
        })
    ]
});
     * </code></pre>
     */
  public var style : String;
    /**
     * @cfg {String} ctCls
     * <p>An optional extra CSS class that will be added to this component's container. This can be useful for
     * adding customized styles to the container or any of its children using standard CSS rules.  See
     * <b class='link'>ext.layout.ContainerLayout</b>.<b class='link' title='ext.layout.ContainerLayout#extraCls'>extraCls</b> also.</p>
     * <p><b>Note</b>: <tt>ctCls</tt> defaults to <tt>''</tt> except for the following class
     * which assigns a value by default:
     * <div class="mdetail-params"><ul>
     * <li><b class='link' title='ext.layout.Box Box'>Layout</b> : <tt>'x-box-layout-ct'</tt></li>
     * </ul></div>
     * To configure the above Class with an extra CSS class append to the default.  For example,
     * for BoxLayout (Hbox and Vbox):<pre><code>
     * ctCls: 'x-box-layout-ct custom-class'
     * </code></pre>
     * </p>
     */
  public var ctCls : String;
    /**
     * @cfg {Boolean} disabled
     * Render this component disabled (default is false).
     */
    public native function get disabled()  : Boolean;
    /**
     * @cfg {Boolean} hidden
     * Render this component hidden (default is false). If <tt>true</tt>, the
     * <b class='link'>#hide</b> method will be called internally.
     */
    public native function get hidden() : Boolean;
    /**
     * @cfg {Object/Array} plugins
     * An object or array of objects that will provide custom functionality for this component.  The only
     * requirement for a valid plugin is that it contain an init method that accepts a reference of type ext.Component.
     * When a component is created, if any plugins are available, the component will call the init method on each
     * plugin, passing a reference to itself.  Each plugin can then call methods or respond to events on the
     * component as needed to provide its functionality.
     */
    public var plugins:*;
    /**
     * @cfg {Mixed} applyTo
     * <p>Specify the id of the element, a DOM element or an existing Element corresponding to a DIV
     * that is already present in the document that specifies some structural markup for this
     * component.</p><div><ul>
     * <li><b>Description</b> : <ul>
     * <div class="sub-desc">When <tt>applyTo</tt> is used, constituent parts of the component can also be specified
     * by id or CSS class name within the main element, and the component being created may attempt
     * to create its subcomponents from that markup if applicable.</div>
     * </ul></li>
     * <li><b>Notes</b> : <ul>
     * <div class="sub-desc">When using this config, a call to render() is not required.</div>
     * <div class="sub-desc">If applyTo is specified, any value passed for <b class='link'>#renderTo</b> will be ignored and the target
     * element's parent node will automatically be used as the component's container.</div>
     * </ul></li>
     * </ul></div>
     */
    /**
     * @cfg {Mixed} renderTo
     * <p>Specify the id of the element, a DOM element or an existing Element that this component
     * will be rendered into.</p><div><ul>
     * <li><b>Notes</b> : <ul>
     * <div class="sub-desc">Do <u>not</u> use this option if the Component is to be a child item of
     * a <b class='link' title='ext.Container'>Container</b>. It is the responsibility of the
     * <b class='link' title='ext.Container'>Container</b>'s <b class='link' title='ext.Container#layout layout'>manager</b>
     * to render and manage its child items.</div>
     * <div class="sub-desc">When using this config, a call to render() is not required.</div>
     * </ul></li>
     * </ul></div>
     * <p>See <tt><b class='link'>#render</b></tt> also.</p>
     */
    /**
     * @cfg {Boolean} stateful
     * <p>A flag which causes the Component to attempt to restore the state of
     * internal properties from a saved state on startup. The component must have
     * either a <code><b class='link'>#stateId</b></code> or <code><b class='link'>#id</b></code> assigned
     * for state to be managed. Auto-generated ids are not guaranteed to be stable
     * across page loads and cannot be relied upon to save and restore the same
     * state for a component.<p>
     * <p>For state saving to work, the state manager's provider must have been
     * set to an implementation of <b class='link'>ext.state.Provider</b> which overrides the
     * <b class='link' title='ext.state.Provider#set'>set</b> and <b class='link' title='ext.state.Provider#get'>get</b>
     * methods to save and recall name/value pairs. A built-in implementation,
     * <b class='link'>ext.state.CookieProvider</b> is available.</p>
     * <p>To set the state provider for the current page:</p>
     * <pre><code>
ext.state.Manager.setProvider(new ext.state.CookieProvider({
    expires: new Date(new Date().getTime()+(1000*60*60*24*7)), //7 days from now
}));
     * </code></pre>
     * <p>A stateful Component attempts to save state when one of the events
     * listed in the <code><b class='link'>#stateEvents</b></code> configuration fires.</p>
     * <p>To save state, a stateful Component first serializes its state by
     * calling <b><code>getState</code></b>. By default, this function does
     * nothing. The developer must provide an implementation which returns an
     * object hash which represents the Component's restorable state.</p>
     * <p>The value yielded by getState is passed to <b class='link'>ext.state.Manager#set</b>
     * which uses the configured <b class='link'>ext.state.Provider</b> to save the object
     * keyed by the Component's <code><b class='link'>stateId</b></code>, or, if that is not
     * specified, its <code><b class='link'>#id</b></code>.</p>
     * <p>During construction, a stateful Component attempts to <i>restore</i>
     * its state by calling <b class='link'>ext.state.Manager#get</b> passing the
     * <code><b class='link'>#stateId</b></code>, or, if that is not specified, the
     * <code><b class='link'>#id</b></code>.</p>
     * <p>The resulting object is passed to <b><code>applyState</code></b>.
     * The default implementation of <code>applyState</code> simply copies
     * properties into the object, but a developer may override this to support
     * more behaviour.</p>
     * <p>You can perform extra processing on state save and restore by attaching
     * handlers to the <b class='link'>#beforestaterestore</b>, <b class='link'>#staterestore</b>,
     * <b class='link'>#beforestatesave</b> and <b class='link'>#statesave</b> events.</p>
     */
    /**
     * @cfg {String} stateId
     * The unique id for this component to use for state management purposes
     * (defaults to the component id if one was set, otherwise null if the
     * component is using a generated id).
     * <p>See <code><b class='link'>#stateful</b></code> for an explanation of saving and
     * restoring Component state.</p>
     */
    /**
     * @cfg {Array} stateEvents
     * <p>An array of events that, when fired, should trigger this component to
     * save its state (defaults to none). <code>stateEvents</code> may be any type
     * of event supported by this component, including browser or custom events
     * (e.g., <tt>['click', 'customerchange']</tt>).</p>
     * <p>See <code><b class='link'>#stateful</b></code> for an explanation of saving and
     * restoring Component state.</p>
     */
    /**
     * @cfg {Mixed} autoEl
     * <p>A tag name or <b class='link' title='ext.DomHelper'>DomHelper</b> spec used to create the <b class='link' title='#getEl'>Element</b> which will
     * encapsulate this Component.</p>
     * <p>You do not normally need to specify this. For the base classes <b class='link'>ext.Component</b>, <b class='link'>ext.BoxComponent</b>,
     * and <b class='link'>ext.Container</b>, this defaults to <b><tt>'div'</tt></b>. The more complex Ext classes use a more complex
     * DOM structure created by their own onRender methods.</p>
     * <p>This is intended to allow the developer to create application-specific utility Components encapsulated by
     * different DOM elements. Example usage:</p><pre><code>
{
    xtype: 'box',
    autoEl: {
        tag: 'img',
        src: 'http://www.example.com/example.jpg'
    }
}, {
    xtype: 'box',
    autoEl: {
        tag: 'blockquote',
        html: 'autoEl is cool!'
    }
}, {
    xtype: 'container',
    autoEl: 'ul',
    cls: 'ux-unordered-list',
    items: {
        xtype: 'box',
        autoEl: 'li',
        html: 'First list item'
    }
}
</code></pre>
     */
    public var autoEl  : *;
    /**
     * @cfg {String} disabledClass
     * CSS class added to the component when it is disabled (defaults to 'x-item-disabled').
     */
    public var disabledClass  : String;
    /**
     * @cfg {Boolean} allowDomMove
     * Whether the component can move the Dom node when rendering (defaults to true).
     */
    public var allowDomMove  : Boolean;
    /**
     * @cfg {Boolean} autoShow
     * True if the component should check for hidden classes (e.g. 'x-hidden' or 'x-hide-display') and remove
     * them on render (defaults to false).
     */
    public var autoShow  : Boolean;
    /**
     * @cfg {String} hideMode
     * <p>How this component should be hidden. Supported values are <tt>'visibility'</tt>
     * (css visibility), <tt>'offsets'</tt> (negative offset position) and <tt>'display'</tt>
     * (css display).</p>
     * <br><p><b>Note</b>: the default of <tt>'display'</tt> is generally preferred
     * since items are automatically laid out when they are first shown (no sizing
     * is done while hidden).</p>
     */
    public var hideMode  : String;
    /**
     * @cfg {Boolean} hideParent
     * True to hide and show the component's container when hide/show is called on the component, false to hide
     * and show the component itself (defaults to false).  For example, this can be used as a shortcut for a hide
     * button on a window by setting hide:true on the button when adding it to its parent container.
     */
    public var hideParent  : Boolean;
    /**
     * <p>The <b class='link'>ext.Element</b> which encapsulates this Component. Read-only.</p>
     * <p>This will <i>usually</i> be a &lt;DIV> element created by the class's onRender method, but
     * that may be overridden using the <code><b class='link'>#autoEl</b></code> config.</p>
     * <br><p><b>Note</b>: this element will not be available until this Component has been rendered.</p><br>
     * <p>To add listeners for <b>DOM events</b> to this Component (as opposed to listeners
     * for this Component's own Observable events), see the <b class='link' title='ext.util.Observable#listeners'>listeners</b>
     * config for a suggestion, or use a render listener directly:</p><pre><code>
new ext.Panel({
    title: 'The Clickable Panel',
    listeners: {
        render: function(p) {
            // Append the Panel to the click handler&#39;s argument list.
            p.getEl().on('click', handlePanelClick.createDelegate(null, [p], true));
        },
        single: true  // Remove the listener after first invocation
    }
});
</code></pre>
     * <p>See also <tt><b class='link' title='#getEl'>getEl</b></p>
     * @property el
     */
    /**
     * The component's owner <b class='link'>ext.Container</b> (defaults to undefined, and is set automatically when
     * the component is added to a container).  Read-only.
     * <p><b>Note</b>: to access items within the container see <tt><b class='link'>#itemId</b></tt>.</p>
     * @property ownerCt
     */
    /**
     * True if this component is hidden. Read-only.
     * @property
     */
    /**
     * True if this component is disabled. Read-only.
     * @property
     */
    /**
     * True if this component has been rendered. Read-only.
     * @property
     */
    public var rendered  : Boolean;
    protected var ctype ;
    protected var actionMode ;
    protected native function getActionEl() : void;
    public native function initPlugin(p) : void;
    protected native function initComponent() : void;
    /**
     * <p>Render this Component into the passed HTML element.</p>
     * <p><b>If you are using a <b class='link' title='ext.Container'>Container</b> object to house this Component, then
     * do not use the render method.</b></p>
     * <p>A Container's child Components are rendered by that Container's
     * <b class='link' title='ext.Container#layout'>layout</b> manager when the Container is first rendered.</p>
     * <p>Certain layout managers allow dynamic addition of child components. Those that do
     * include <b class='link'>ext.layout.CardLayout</b>, <b class='link'>ext.layout.AnchorLayout</b>,
     * <b class='link'>ext.layout.FormLayout</b>, <b class='link'>ext.layout.TableLayout</b>.</p>
     * <p>If the Container is already rendered when a new child Component is added, you may need to call
     * the Container's <b class='link' title='ext.Container#doLayout'>doLayout</b> to refresh the view which causes any
     * unrendered child Components to be rendered. This is required so that you can add multiple
     * child components if needed while only refreshing the layout once.</p>
     * <p>When creating complex UIs, it is important to remember that sizing and positioning
     * of child items is the responsibility of the Container's <b class='link' title='ext.Container#layout'>layout</b> manager.
     * If you expect child items to be sized in response to user interactions, you must
     * configure the Container with a layout manager which creates and manages the type of layout you
     * have in mind.</p>
     * <p><b>Omitting the Container's <b class='link' title='ext.Container#layout'>layout</b> config means that a basic
     * layout manager is used which does nothing but render child components sequentially into the
     * Container. No sizing or positioning will be performed in this situation.</b></p>
     * @param container The element this Component should be
     * rendered into. If it is being created from existing markup, this should be omitted.
     * @param position The element ID or DOM node index within the container <b>before</b>
     * which this component will be inserted (defaults to appending to the end of the container)
     */
    public native function render(container : * = undefined, position : * = undefined) : void;
    public native function initRef() : void;
        /**
         * @cfg {String} ref
         * <p>A path specification, relative to the Component's <b class='link'>#ownerCt</b> specifying into which
         * ancestor Container to place a named reference to this Component.</p>
         * <p>The ancestor axis can be traversed by using '/' characters in the path.
         * For example, to put a reference to a Toolbar Button into <i>the Panel which owns the Toolbar</i>:</p><pre><code>
var myGrid = new ext.grid.EditorGridPanel({
    title: 'My EditorGridPanel',
    store: myStore,
    colModel: myColModel,
    tbar: [{
        text: 'Save',
        handler: saveChanges,
        disabled: true,
        ref: '../saveButton'
    }],
    listeners: {
        afteredit: function() {
//          The button reference is in the GridPanel
            myGrid.saveButton.enable();
        }
    }
});
</code></pre>
         * <p>In the code above, if the ref had been <code>'saveButton'</code> the reference would
         * have been placed into the Toolbar. Each '/' in the ref moves up one level from the
         * Component's <b class='link'>#ownerCt</b>.</p>
         */
    protected native function initState(config) : void;
    protected native function getStateId() : String;
    protected native function initStateEvents() : void;
    protected native function applyState(state : *) : void;
    protected native function getState() : *;
    protected native function saveState() : void;
    /**
     * Apply this component to existing markup that is valid. With this function, no call to render() is required.
     * @param el
     */
    public native function applyToMarkup(el : *) : void;
    /**
     * Adds a CSS class to the component's underlying element.
     * @param cls The CSS class name to add
     * @return this
     */
    public native function addClass(cls : String) : Component;
    /**
     * Removes a CSS class from the component's underlying element.
     * @param cls The CSS class name to remove
     * @return this
     */
    public native function removeClass(cls : String) : Component;
    protected native function onRender(container : Element, position : Element) : void;
    protected native function getAutoCreate() : void;
    protected native function afterRender()  : void;
    /**
     * Destroys this component by purging any event listeners, removing the component's element from the DOM,
     * removing the component from its <b class='link'>ext.Container</b> (if applicable) and unregistering it from
     * <b class='link'>ext.ComponentMgr</b>.  Destruction is generally handled automatically by the framework and this method
     * should usually not need to be called directly.
     *
     */
    public native function destroy() : void;
    protected native function beforeDestroy() : void;
    protected native function onDestroy() : void;
    /**
     * <p>Returns the <b class='link'>ext.Element</b> which encapsulates this Component.</p>
     * <p>This will <i>usually</i> be a &lt;DIV> element created by the class's onRender method, but
     * that may be overridden using the <b class='link'>#autoEl</b> config.</p>
     * <br><p><b>Note</b>: this element will not be available until this Component has been rendered.</p><br>
     * <p>To add listeners for <b>DOM events</b> to this Component (as opposed to listeners
     * for this Component's own Observable events), see the <b class='link'>#listeners</b> config for a suggestion,
     * or use a render listener directly:</p><pre><code>
new ext.Panel({
    title: 'The Clickable Panel',
    listeners: {
        render: function(p) {
            // Append the Panel to the click handler&#39;s argument list.
            p.getEl().on('click', handlePanelClick.createDelegate(null, [p], true));
        },
        single: true  // Remove the listener after first invocation
    }
});
</code></pre>
     * @return The Element which encapsulates this Component.
     */
    public native function getEl() : Element;
    /**
     * Returns the <code>id</code> of this component or automatically generates and
     * returns an <code>id</code> if an <code>id</code> is not defined yet:<pre><code>
     * 'ext-comp-' + (++ext.Component.AUTO_ID)
     * </code></pre>
     * @return id
     */
    public native function getId() : String;
    /**
     * Returns the <code><b class='link'>#itemId</b></code> of this component.  If an
     * <code><b class='link'>#itemId</b></code> was not assigned through configuration the
     * <code>id</code> is returned using <code><b class='link'>#getId</b></code>.
     * @return 
     */
    public native function getItemId() : String;
    /**
     * Try to focus this component.
     * @param selectText If applicable, true to also select the text in this component
     * @param delay Delay the focus this number of milliseconds (true for 10 milliseconds)
     * @return this
     */
    public native function focus(selectText : Boolean = undefined, delay : * = undefined) : Component;
    protected native function blur() : void;
    /**
     * Disable this component and fire the 'disable' event.
     * @return this
     */
    public native function disable( silent) : Component;
    protected native function onDisable() : void;
    /**
     * Enable this component and fire the 'enable' event.
     * @return this
     */
    public native function enable() : Component;
    protected native function onEnable() : void;
    /**
     * Convenience function for setting disabled/enabled by boolean.
     * @param disabled
     * @return this
     */
    public native function setDisabled(disabled : Boolean) : Component;
    /**
     * Show this component.  Listen to the '<b class='link'>#beforeshow</b>' event and return
     * <tt>false</tt> to cancel showing the component.  Fires the '<b class='link'>#show</b>'
     * event after showing the component.
     * @return this
     */
    public native function show() : Component;
    protected native function onShow() : void;
    /**
     * Hide this component.  Listen to the '<b class='link'>#beforehide</b>' event and return
     * <tt>false</tt> to cancel hiding the component.  Fires the '<b class='link'>#hide</b>'
     * event after hiding the component. Note this method is called internally if
     * the component is configured to be <code><b class='link'>#hidden</b></code>.
     * @return this
     */
    public native function hide() : Component;
    protected native function doHide() : void;
    protected native function onHide() : void;
    protected native function getVisibiltyEl() : void;
    /**
     * Convenience function to hide or show this component by boolean.
     * @param visible True to show, false to hide
     * @return this
     */
    public native function setVisible(visible : Boolean) : Component;
    /**
     * Returns true if this component is visible.
     * @return True if this component is visible, false otherwise.
     */
    public native function isVisible() : Boolean;
    /**
     * Clone the current component using the original config values passed into this instance by default.
     * @param overrides A new config containing any properties to override in the cloned version.
     * An id property can be passed on this object, otherwise one will be generated to avoid duplicates.
     * @return clone The cloned copy of this component
     */
    public native function cloneConfig(overrides : Object) : Component;
    /**
     * Gets the xtype for this component as registered with <b class='link'>ext.ComponentMgr</b>. For a list of all
     * available xtypes, see the <b class='link'>ext.Component</b> header. Example usage:
     * <pre><code>
var t = new ext.form.TextField();
alert(t.getXType());  // alerts 'textfield'
</code></pre>
     * @return The xtype
     */
    public native function getXType() : String;
    /**
     * <p>Tests whether or not this Component is of a specific xtype. This can test whether this Component is descended
     * from the xtype (default) or whether it is directly of the xtype specified (shallow = true).</p>
     * <p><b>If using your own subclasses, be aware that a Component must register its own xtype
     * to participate in determination of inherited xtypes.</b></p>
     * <p>For a list of all available xtypes, see the <b class='link'>ext.Component</b> header.</p>
     * <p>Example usage:</p>
     * <pre><code>
var t = new ext.form.TextField();
var isText = t.isXType('textfield');        // true
var isBoxSubclass = t.isXType('box');       // true, descended from BoxComponent
var isBoxInstance = t.isXType('box', true); // false, not a direct BoxComponent instance
</code></pre>
     * @param xtype The xtype to check for this Component
     * @param shallow False to check whether this Component is descended from the xtype (this is
     * the default), or true to check whether this Component is directly of the specified xtype.
     * @return True if this component descends from the specified xtype, false otherwise.
     */
    public native function isXType(xtype : String, shallow : Boolean = undefined) : Boolean;
    /**
     * <p>Returns this Component's xtype hierarchy as a slash-delimited string. For a list of all
     * available xtypes, see the <b class='link'>ext.Component</b> header.</p>
     * <p><b>If using your own subclasses, be aware that a Component must register its own xtype
     * to participate in determination of inherited xtypes.</b></p>
     * <p>Example usage:</p>
     * <pre><code>
var t = new ext.form.TextField();
alert(t.getXTypes());  // alerts 'component/box/field/textfield'
</code></pre>
     * @return The xtype hierarchy string
     */
    public native function getXTypes() : String;
    /**
     * Find a container above this component at any level by a custom function. If the passed function returns
     * true, the container will be returned.
     * @param fn The custom function to call with the arguments (container, this component).
     * @return The first Container for which the custom function returns true
     */
    public native function findParentBy(fn : Function) : Container;
    /**
     * Find a container above this component at any level by xtype or class
     * @param xtype The xtype string for a component, or the class of the component directly
     * @return The first Container which matches the given xtype or class
     */
    public native function findParentByType(xtype : *) : Container;
    public native function getDomPositionEl() : void;
    override public native function purgeListeners() : void;
    protected native function clearMons() : void;
    public native function mon(item, ename, fn, scope, opt) : void;
    public native function mun(item, ename, fn, scope) : void;
    /**
     * Returns the next component in the owning container
     * @return 
     */
    public native function nextSibling() : Component;
    /**
     * Returns the previous component in the owning container
     * @return 
     */
    public native function previousSibling() : Component;
    /**
     * Provides the link for Observable's fireEvent method to bubble up the ownership hierarchy.
     * @return the Container which owns this Component.
     */
    public native function getBubbleTarget() : Container;

    public var el : Element;
    public var ownerCt : Container;
}}
