package ext.config {


/**
 * Base class for all Ext components. All subclasses of Component may participate in the automated Ext component lifecycle of creation, rendering and destruction which is provided by the <a href="Ext.Container.html">Container</a> class. Components may be added to a Container through the <a href="output/Ext.Container.html#Ext.Container-items">items</a> config option at the time the Container is created, or they may be added dynamically via the <a href="output/Ext.Container.html#Ext.Container-add">add</a> method.
 <p>The Component base class has built-in support for basic hide/show and enable/disable behavior.</p><p>All Components are registered with the <a href="Ext.ComponentMgr.html">Ext.ComponentMgr</a> on construction so that they can be referenced at any time via <a href="output/Ext.html#Ext-getCmp">Ext.getCmp</a>, passing the <a href="output/Ext.Component.html#Ext.Component-id">id</a>.</p><p>All user-developed visual widgets that are required to participate in automated lifecycle and size management should subclass Component (or <a href="Ext.BoxComponent.html">Ext.BoxComponent</a> if managed box model handling is required, ie height and width management).</p><p>See the <a href="http://extjs.com/learn/Tutorial:Creating_new_UI_controls">Creating new UI controls</a> tutorial for details on how and to either extend or augment ExtJs base classes to create custom Components.</p><p>Every component has a specific xtype, which is its Ext-specific type name, along with methods for checking the xtype like <a href="output/Ext.Component.html#Ext.Component-getXType">getXType</a> and <a href="output/Ext.Component.html#Ext.Component-isXType">isXType</a>. This is the list of all valid xtypes:</p><pre>xtype            Class
 -------------    ------------------
 box              <a href="Ext.BoxComponent.html">Ext.BoxComponent</a>
 button           <a href="Ext.Button.html">Ext.Button</a>
 buttongroup      <a href="Ext.ButtonGroup.html">Ext.ButtonGroup</a>
 colorpalette     <a href="Ext.ColorPalette.html">Ext.ColorPalette</a>
 component        <a href="Ext.Component.html">Ext.Component</a>
 container        <a href="Ext.Container.html">Ext.Container</a>
 cycle            <a href="Ext.CycleButton.html">Ext.CycleButton</a>
 dataview         <a href="Ext.DataView.html">Ext.DataView</a>
 datepicker       <a href="Ext.DatePicker.html">Ext.DatePicker</a>
 editor           <a href="Ext.Editor.html">Ext.Editor</a>
 editorgrid       <a href="Ext.grid.EditorGridPanel.html">Ext.grid.EditorGridPanel</a>
 flash            <a href="Ext.FlashComponent.html">Ext.FlashComponent</a>
 grid             <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>
 listview         <a href="Ext.ListView.html">Ext.ListView</a>
 multislider      <a href="Ext.slider.MultiSlider.html">Ext.slider.MultiSlider</a>
 panel            <a href="Ext.Panel.html">Ext.Panel</a>
 progress         <a href="Ext.ProgressBar.html">Ext.ProgressBar</a>
 propertygrid     <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>
 slider           <a href="Ext.slider.SingleSlider.html">Ext.slider.SingleSlider</a>
 spacer           <a href="Ext.Spacer.html">Ext.Spacer</a>
 splitbutton      <a href="Ext.SplitButton.html">Ext.SplitButton</a>
 tabpanel         <a href="Ext.TabPanel.html">Ext.TabPanel</a>
 treepanel        <a href="Ext.tree.TreePanel.html">Ext.tree.TreePanel</a>
 viewport         <a href="Ext.ViewPort.html">Ext.ViewPort</a>
 window           <a href="Ext.Window.html">Ext.Window</a>

 Toolbar components
 ---------------------------------------
 paging           <a href="Ext.PagingToolbar.html">Ext.PagingToolbar</a>
 toolbar          <a href="Ext.Toolbar.html">Ext.Toolbar</a>
 tbbutton         <a href="Ext.Toolbar.Button.html">Ext.Toolbar.Button</a>        (deprecated; use button)
 tbfill           <a href="Ext.Toolbar.Fill.html">Ext.Toolbar.Fill</a>
 tbitem           <a href="Ext.Toolbar.Item.html">Ext.Toolbar.Item</a>
 tbseparator      <a href="Ext.Toolbar.Separator.html">Ext.Toolbar.Separator</a>
 tbspacer         <a href="Ext.Toolbar.Spacer.html">Ext.Toolbar.Spacer</a>
 tbsplit          <a href="Ext.Toolbar.SplitButton.html">Ext.Toolbar.SplitButton</a>   (deprecated; use splitbutton)
 tbtext           <a href="Ext.Toolbar.TextItem.html">Ext.Toolbar.TextItem</a>

 Menu components
 ---------------------------------------
 menu             <a href="Ext.menu.Menu.html">Ext.menu.Menu</a>
 colormenu        <a href="Ext.menu.ColorMenu.html">Ext.menu.ColorMenu</a>
 datemenu         <a href="Ext.menu.DateMenu.html">Ext.menu.DateMenu</a>
 menubaseitem     <a href="Ext.menu.BaseItem.html">Ext.menu.BaseItem</a>
 menucheckitem    <a href="Ext.menu.CheckItem.html">Ext.menu.CheckItem</a>
 menuitem         <a href="Ext.menu.Item.html">Ext.menu.Item</a>
 menuseparator    <a href="Ext.menu.Separator.html">Ext.menu.Separator</a>
 menutextitem     <a href="Ext.menu.TextItem.html">Ext.menu.TextItem</a>

 Form components
 ---------------------------------------
 form             <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>
 checkbox         <a href="Ext.form.Checkbox.html">Ext.form.Checkbox</a>
 checkboxgroup    <a href="Ext.form.CheckboxGroup.html">Ext.form.CheckboxGroup</a>
 combo            <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a>
 compositefield   <a href="Ext.form.CompositeField.html">Ext.form.CompositeField</a>
 datefield        <a href="Ext.form.DateField.html">Ext.form.DateField</a>
 displayfield     <a href="Ext.form.DisplayField.html">Ext.form.DisplayField</a>
 field            <a href="Ext.form.Field.html">Ext.form.Field</a>
 fieldset         <a href="Ext.form.FieldSet.html">Ext.form.FieldSet</a>
 hidden           <a href="Ext.form.Hidden.html">Ext.form.Hidden</a>
 htmleditor       <a href="Ext.form.HtmlEditor.html">Ext.form.HtmlEditor</a>
 label            <a href="Ext.form.Label.html">Ext.form.Label</a>
 numberfield      <a href="Ext.form.NumberField.html">Ext.form.NumberField</a>
 radio            <a href="Ext.form.Radio.html">Ext.form.Radio</a>
 radiogroup       <a href="Ext.form.RadioGroup.html">Ext.form.RadioGroup</a>
 textarea         <a href="Ext.form.TextArea.html">Ext.form.TextArea</a>
 textfield        <a href="Ext.form.TextField.html">Ext.form.TextField</a>
 timefield        <a href="Ext.form.TimeField.html">Ext.form.TimeField</a>
 trigger          <a href="Ext.form.TriggerField.html">Ext.form.TriggerField</a>

 Chart components
 ---------------------------------------
 chart            <a href="Ext.chart.Chart.html">Ext.chart.Chart</a>
 barchart         <a href="Ext.chart.BarChart.html">Ext.chart.BarChart</a>
 cartesianchart   <a href="Ext.chart.CartesianChart.html">Ext.chart.CartesianChart</a>
 columnchart      <a href="Ext.chart.ColumnChart.html">Ext.chart.ColumnChart</a>
 linechart        <a href="Ext.chart.LineChart.html">Ext.chart.LineChart</a>
 piechart         <a href="Ext.chart.PieChart.html">Ext.chart.PieChart</a>

 Store xtypes
 ---------------------------------------
 arraystore       <a href="Ext.data.ArrayStore.html">Ext.data.ArrayStore</a>
 directstore      <a href="Ext.data.DirectStore.html">Ext.data.DirectStore</a>
 groupingstore    <a href="Ext.data.GroupingStore.html">Ext.data.GroupingStore</a>
 jsonstore        <a href="Ext.data.JsonStore.html">Ext.data.JsonStore</a>
 simplestore      <a href="Ext.data.SimpleStore.html">Ext.data.SimpleStore</a>      (deprecated; use arraystore)
 store            <a href="Ext.data.Store.html">Ext.data.Store</a>
 xmlstore         <a href="Ext.data.XmlStore.html">Ext.data.XmlStore</a>
 </pre>
 * <p>This class serves as a typed config object for constructor of class Component.</p>
 *
 * @see ext.Component
 */
[ExtConfig(target="ext.Component")]
public class component extends observable {

  public function component(config:Object = null) {

    super(config);
  }


  /**
   Whether the component can move the Dom node when rendering (defaults to true).
   */
  public native function get allowDomMove():Boolean;

  /**
   * @private
   */
  public native function set allowDomMove(value:Boolean):void;

  /**
   Specify the id of the element, a DOM element or an existing Element corresponding to a DIV that is already present in the document that specifies some structural markup for this component.
   <div><ul><li><b>Description</b> : <div style="margin-left: 2em">When <tt>applyTo</tt> is used, constituent parts of the component can also be specified by id or CSS class name within the main element, and the component being created may attempt to create its subcomponents from that markup if applicable.</div></li><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">When using this config, a call to render() is not required.</div><div class="sub-desc">If applyTo is specified, any value passed for <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a> will be ignored and the target element's parent node will automatically be used as the component's container.</div></div></li></ul></div>
   */
  public native function get applyTo():*;

  /**
   * @private
   */
  public native function set applyTo(value:*):void;

  /**
   A tag name or <a href="Ext.DomHelper.html">DomHelper</a> spec used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component.
   <p>You do not normally need to specify this. For the base classes <a href="Ext.Component.html">Ext.Component</a>, <a href="Ext.BoxComponent.html">Ext.BoxComponent</a>, and <a href="Ext.Container.html">Ext.Container</a>, this defaults to <b><tt>'div'</tt></b>. The more complex Ext classes use a more complex DOM structure created by their own onRender methods.</p><p>This is intended to allow the developer to create application-specific utility Components encapsulated by different DOM elements. Example usage:</p><pre><code>{
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
  public native function get autoEl():*;

  /**
   * @private
   */
  public native function set autoEl(value:*):void;

  /**
   True if the component should check for hidden classes (e.g. 'x-hidden' or 'x-hide-display') and remove them on render (defaults to false).
   */
  public native function get autoShow():Boolean;

  /**
   * @private
   */
  public native function set autoShow(value:Boolean):void;

  /**
   An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <tt>[]</tt>.

   */
  public native function get bubbleEvents():Array;

  /**
   * @private
   */
  public native function set bubbleEvents(value:Array):void;

  /**
   The CSS class used to to apply to the special clearing div rendered directly after each form field wrapper to provide field clearing (defaults to <tt>'x-form-clear-left'</tt>).
   <br/><p><b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use the <b><a href="Ext.layout.FormLayout.html">FormLayout</a></b> layout manager (e.g. <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a> or specifying <tt>layout:'form'</tt>) and either a <tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt> is specified or <tt>isFormField=true</tt> is specified.</p><br/><p>See <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a> also.</p>
   */
  public native function get clearCls():String;

  /**
   * @private
   */
  public native function set clearCls(value:String):void;

  /**
   An optional extra CSS class that will be added to this component's Element (defaults to ''). This can be useful for adding customized styles to the component or any of its children using standard CSS rules.
   */
  public native function get cls():String;

  /**
   * @private
   */
  public native function set cls(value:String):void;

  /**
   Optional. Specify an existing HTML element, or the <code>id</code> of an existing HTML element to use as the content for this component.
   <ul><li><b>Description</b> : <div class="sub-desc">This config option is used to take an existing HTML element and place it in the layout element of a new component (it simply moves the specified DOM element <i>after the Component is rendered</i> to use as the content.</div></li><li><b>Notes</b> : <div class="sub-desc">The specified HTML element is appended to the layout element of the component <i>after any configured <a href="output/Ext.Component.html#Ext.Component-html">HTML</a> has been inserted</i>, and so the document will not contain this element at the time the <a href="output/Ext.Component.html#Ext.Component-render">render</a> event is fired.</div><div class="sub-desc">The specified HTML element used will not participate in any <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> scheme that the Component may use. It is just HTML. Layouts operate on child <code><b><a href="output/Ext.Container.html#Ext.Container-items">items</a></b></code>.</div><div class="sub-desc">Add either the <code>x-hidden</code> or the <code>x-hide-display</code> CSS class to prevent a brief flicker of the content before it is rendered to the panel.</div></li></ul>
   */
  public native function get contentEl():String;

  /**
   * @private
   */
  public native function set contentEl(value:String):void;

  /**
   An optional extra CSS class that will be added to this component's container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.layout.ContainerLayout.html">Ext.layout.ContainerLayout</a>.<a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-extraCls">extraCls</a> also.
   <p><b>Note</b>: <tt>ctCls</tt> defaults to <tt>''</tt> except for the following class which assigns a value by default:</p><div class="mdetail-params"><ul><li><a href="Ext.layout.Box.html">Box Layout</a> : <tt>'x-box-layout-ct'</tt></li></ul></div>To configure the above Class with an extra CSS class append to the default. For example, for BoxLayout (Hbox and Vbox):<pre><code>ctCls: 'x-box-layout-ct custom-class'
   </code></pre><br/><br/>
   */
  public native function get ctCls():String;

  /**
   * @private
   */
  public native function set ctCls(value:String):void;

  /**
   The initial set of data to apply to the <code><a href="output/Ext.Component.html#Ext.Component-tpl">tpl</a></code> to update the content area of the Component.
   */
  public native function get data():*;

  /**
   * @private
   */
  public native function set data(value:*):void;

  /**
   Render this component disabled (default is false).
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   CSS class added to the component when it is disabled (defaults to 'x-item-disabled').
   */
  public native function get disabledClass():String;

  /**
   * @private
   */
  public native function set disabledClass(value:String):void;

  /**
   The label text to display next to this Component (defaults to '').
   <br/><p><b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use the <b><a href="Ext.layout.FormLayout.html">FormLayout</a></b> layout manager (e.g. <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a> or specifying <tt>layout:'form'</tt>).</p><br/><p>Also see <tt><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></tt> and <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a>.</p>Example use:<pre><code>new Ext.FormPanel({
   height: 100,
   renderTo: Ext.getBody(),
   items: [{
   xtype: 'textfield',
   fieldLabel: 'Name'
   }]
   });
   </code></pre>
   */
  public native function get fieldLabel():String;

  /**
   * @private
   */
  public native function set fieldLabel(value:String):void;

  /**
   Render this component hidden (default is false). If <tt>true</tt>, the <a href="output/Ext.Component.html#Ext.Component-hide">hide</a> method will be called internally.
   */
  public native function get hidden():Boolean;

  /**
   * @private
   */
  public native function set hidden(value:Boolean):void;

  /**
   <tt>true</tt> to completely hide the label element (<a href="output/Ext.Component.html#Ext.Component-fieldLabel">label</a> and <a href="output/Ext.Component.html#Ext.Component-labelSeparator">separator</a>). Defaults to <tt>false</tt>. By default, even if you do not specify a <tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt> the space will still be reserved so that the field will line up with other fields that do have labels. Setting this to <tt>true</tt> will cause the field to not reserve that space.
   <br/><p><b>Note</b>: see the note for <tt><a href="output/Ext.Component.html#Ext.Component-clearCls">clearCls</a></tt>.</p><br/>Example use:<pre><code>new Ext.FormPanel({
   height: 100,
   renderTo: Ext.getBody(),
   items: [{
   xtype: 'textfield'
   hideLabel: true
   }]
   });
   </code></pre>
   */
  public native function get hideLabel():Boolean;

  /**
   * @private
   */
  public native function set hideLabel(value:Boolean):void;

  /**
   How this component should be hidden. Supported values are <tt>'visibility'</tt> (css visibility), <tt>'offsets'</tt> (negative offset position) and <tt>'display'</tt> (css display).
   <br/><p><b>Note</b>: the default of <tt>'display'</tt> is generally preferred since items are automatically laid out when they are first shown (no sizing is done while hidden).</p>
   */
  public native function get hideMode():String;

  /**
   * @private
   */
  public native function set hideMode(value:String):void;

  /**
   True to hide and show the component's container when hide/show is called on the component, false to hide and show the component itself (defaults to false). For example, this can be used as a shortcut for a hide button on a window by setting hide:true on the button when adding it to its parent container.
   */
  public native function get hideParent():Boolean;

  /**
   * @private
   */
  public native function set hideParent(value:Boolean):void;

  /**
   An HTML fragment, or a <a href="Ext.DomHelper.html">DomHelper</a> specification to use as the layout element content (defaults to ''). The HTML content is added after the component is rendered, so the document will not contain this HTML at the time the <a href="output/Ext.Component.html#Ext.Component-render">render</a> event is fired. This content is inserted into the body <i>before</i> any configured <a href="output/Ext.Component.html#Ext.Component-contentEl">contentEl</a> is appended.
   */
  public native function get html():*;

  /**
   * @private
   */
  public native function set html(value:*):void;

  /**
   The <b>unique</b> id of this component (defaults to an <a href="output/Ext.Component.html#Ext.Component-getId">auto-assigned id</a>). You should assign an id if you need to be able to access the component later and you do not have an object reference available (e.g., using <a href="Ext.html">Ext</a>.<a href="output/Ext.html#Ext-getCmp">getCmp</a>).
   <p>Note that this id will also be used as the element id for the containing HTML element that is rendered to the page for this component. This allows you to write id-based CSS rules to style the specific instance of this component uniquely, and also to select sub-elements using this component's id as the parent.</p><p><b>Note</b>: to avoid complications imposed by a unique <tt>id</tt> also see <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> and <code><a href="output/Ext.Component.html#Ext.Component-ref">ref</a></code>.</p><p><b>Note</b>: to access the container of an item see <code><a href="output/Ext.Component.html#Ext.Component-ownerCt">ownerCt</a></code>.</p>
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   <b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use the <b><a href="Ext.layout.FormLayout.html">FormLayout</a></b> layout manager (e.g. <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a> or specifying <tt>layout:'form'</tt>).
   <br/><p>An additional CSS class to apply to the div wrapping the form item element of this field. If supplied, <tt>itemCls</tt> at the <b>field</b> level will override the default <tt>itemCls</tt> supplied at the <b>container</b> level. The value specified for <tt>itemCls</tt> will be added to the default class (<tt>'x-form-item'</tt>).</p><p>Since it is applied to the item wrapper (see <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a>), it allows you to write standard CSS rules that can apply to the field, the label (if specified), or any other element within the markup for the field.</p><br/><p><b>Note</b>: see the note for <tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt>.</p><br/>Example use:<pre><code>// Apply a style to the field's label:
   &lt;style&gt;
   .required .x-form-item-label {font-weight:bold;color:red;}
   &lt;/style&gt;

   new Ext.FormPanel({
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
  public native function get itemCls():String;

  /**
   * @private
   */
  public native function set itemCls(value:String):void;

  /**
   An <tt>itemId</tt> can be used as an alternative way to get a reference to a component when no object reference is available. Instead of using an <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> with <a href="Ext.html">Ext</a>.<a href="output/Ext.html#Ext-getCmp">getCmp</a>, use <code>itemId</code> with <a href="Ext.Container.html">Ext.Container</a>.<a href="output/Ext.Container.html#Ext.Container-getComponent">getComponent</a> which will retrieve <code>itemId</code>'s or <tt><a href="output/Ext.Component.html#Ext.Component-id">id</a></tt>'s. Since <code>itemId</code>'s are an index to the container's internal MixedCollection, the <code>itemId</code> is scoped locally to the container -- avoiding potential conflicts with <a href="Ext.ComponentMgr.html">Ext.ComponentMgr</a> which requires a <b>unique</b> <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code>.
   <pre><code>var c = new Ext.Panel({ //
   <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a>: 300,
   <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a>: document.body,
   <a href="output/Ext.Container.html#Ext.Container-layout">layout</a>: 'auto',
   <a href="output/Ext.Container.html#Ext.Container-items">items</a>: [
   {
   itemId: 'p1',
   <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'Panel 1',
   <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a>: 150
   },
   {
   itemId: 'p2',
   <a href="output/Ext.Panel.html#Ext.Panel-title">title</a>: 'Panel 2',
   <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-height">height</a>: 150
   }
   ]
   })
   p1 = c.<a href="output/Ext.Container.html#Ext.Container-getComponent">getComponent</a>('p1'); // not the same as <a href="output/Ext.html#Ext-getCmp">Ext.getCmp()</a>
   p2 = p1.<a href="output/Ext.Component.html#Ext.Component-ownerCt">ownerCt</a>.<a href="output/Ext.Container.html#Ext.Container-getComponent">getComponent</a>('p2'); // reference via a sibling
   </code></pre><p>Also see <tt><a href="output/Ext.Component.html#Ext.Component-id">id</a></tt> and <code><a href="output/Ext.Component.html#Ext.Component-ref">ref</a></code>.</p><p><b>Note</b>: to access the container of an item see <tt><a href="output/Ext.Component.html#Ext.Component-ownerCt">ownerCt</a></tt>.</p>
   */
  public native function get itemId():String;

  /**
   * @private
   */
  public native function set itemId(value:String):void;

  /**
   The separator to display after the text of each <tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt>. This property may be configured at various levels. The order of precedence is:
   <div class="mdetail-params"><ul><li>field / component level</li><li>container level</li><li><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">layout level</a> (defaults to colon <tt>':'</tt>)</li></ul></div>To display no separator for this field's label specify empty string ''.<br/><br/> <br/><p><b>Note</b>: see the note for <tt><a href="output/Ext.Component.html#Ext.Component-clearCls">clearCls</a></tt>.</p><br/><p>Also see <tt><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></tt> and <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a>.</p>Example use:<pre><code>new Ext.FormPanel({
   height: 100,
   renderTo: Ext.getBody(),
   layoutConfig: {
   labelSeparator: '~'   // layout config has lowest priority (defaults to ':')
   },
   <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelSeparator">labelSeparator</a>: '&gt;&gt;',     // config at container level
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
  public native function get labelSeparator():String;

  /**
   * @private
   */
  public native function set labelSeparator(value:String):void;

  /**
   A CSS style specification string to apply directly to this field's label. Defaults to the container's labelStyle value if set (e.g., <tt><a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-labelStyle">Ext.layout.FormLayout.labelStyle</a></tt> , or '').
   <br/><p><b>Note</b>: see the note for <code><a href="output/Ext.Component.html#Ext.Component-clearCls">clearCls</a></code>.</p><br/><p>Also see <code><a href="output/Ext.Component.html#Ext.Component-hideLabel">hideLabel</a></code> and <code><a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a>.</code></p>Example use:<pre><code>new Ext.FormPanel({
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
  public native function get labelStyle():String;

  /**
   * @private
   */
  public native function set labelStyle(value:String):void;

  /**
   An optional extra CSS class that will be added to this component's Element when the mouse moves over the Element, and removed when the mouse moves out. (defaults to ''). This can be useful for adding customized 'active' or 'hover' styles to the component or any of its children using standard CSS rules.
   */
  public native function get overCls():String;

  /**
   * @private
   */
  public native function set overCls(value:String):void;

  /**
   An object or array of objects that will provide custom functionality for this component. The only requirement for a valid plugin is that it contain an init method that accepts a reference of type Ext.Component. When a component is created, if any plugins are available, the component will call the init method on each plugin, passing a reference to itself. Each plugin can then call methods or respond to events on the component as needed to provide its functionality.
   */
  public native function get plugins():*;

  /**
   * @private
   */
  public native function set plugins(value:*):void;

  /**
   The registered <tt>ptype</tt> to create. This config option is not used when passing a config object into a constructor. This config option is used only when lazy instantiation is being used, and a Plugin is being specified not as a fully instantiated Component, but as a <i>Component config object</i>. The <tt>ptype</tt> will be looked up at render time up to determine what type of Plugin to create.<br/><br/>If you create your own Plugins, you may register them using <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerPlugin">Ext.ComponentMgr.registerPlugin</a> in order to be able to take advantage of lazy instantiation and rendering.
   */
  public native function get ptype():String;

  /**
   * @private
   */
  public native function set ptype(value:String):void;

  /**
   A path specification, relative to the Component's <code><a href="output/Ext.Component.html#Ext.Component-ownerCt">ownerCt</a></code> specifying into which ancestor Container to place a named reference to this Component.
   <p>The ancestor axis can be traversed by using '/' characters in the path. For example, to put a reference to a Toolbar Button into <i>the Panel which owns the Toolbar</i>:</p><pre><code>var myGrid = new Ext.grid.EditorGridPanel({
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
   </code></pre><p>In the code above, if the <code>ref</code> had been <code>'saveButton'</code> the reference would have been placed into the Toolbar. Each '/' in the <code>ref</code> moves up one level from the Component's <code><a href="output/Ext.Component.html#Ext.Component-ownerCt">ownerCt</a></code>.</p><p>Also see the <code><a href="output/Ext.Component.html#Ext.Component-added">added</a></code> and <code><a href="output/Ext.Component.html#Ext.Component-removed">removed</a></code> events.</p>
   */
  public native function get ref():String;

  /**
   * @private
   */
  public native function set ref(value:String):void;

  /**
   Specify the id of the element, a DOM element or an existing Element that this component will be rendered into.
   <div><ul><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">Do <u>not</u> use this option if the Component is to be a child item of a <a href="Ext.Container.html">Container</a>. It is the responsibility of the <a href="Ext.Container.html">Container</a>'s <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a> to render and manage its child items.</div><div class="sub-desc">When using this config, a call to render() is not required.</div></div></li></ul></div><p>See <tt><a href="output/Ext.Component.html#Ext.Component-render">render</a></tt> also.</p>
   */
  public native function get renderTo():*;

  /**
   * @private
   */
  public native function set renderTo(value:*):void;

  /**
   An array of events that, when fired, should trigger this component to save its state (defaults to none). <code>stateEvents</code> may be any type of event supported by this component, including browser or custom events (e.g., <tt>['click', 'customerchange']</tt>).
   <p>See <code><a href="output/Ext.Component.html#Ext.Component-stateful">stateful</a></code> for an explanation of saving and restoring Component state.</p>
   */
  public native function get stateEvents():Array;

  /**
   * @private
   */
  public native function set stateEvents(value:Array):void;

  /**
   The unique id for this component to use for state management purposes (defaults to the component id if one was set, otherwise null if the component is using a generated id). <p>See <code><a href="output/Ext.Component.html#Ext.Component-stateful">stateful</a></code> for an explanation of saving and restoring Component state.</p>
   */
  public native function get stateId():String;

  /**
   * @private
   */
  public native function set stateId(value:String):void;

  /**
   A flag which causes the Component to attempt to restore the state of internal properties from a saved state on startup. The component must have either a <code><a href="output/Ext.Component.html#Ext.Component-stateId">stateId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> assigned for state to be managed. Auto-generated ids are not guaranteed to be stable across page loads and cannot be relied upon to save and restore the same state for a component.
   <p>For state saving to work, the state manager's provider must have been set to an implementation of <a href="Ext.state.Provider.html">Ext.state.Provider</a> which overrides the <a href="output/Ext.state.Provider.html#Ext.state.Provider-set">set</a> and <a href="output/Ext.state.Provider.html#Ext.state.Provider-get">get</a> methods to save and recall name/value pairs. A built-in implementation, <a href="Ext.state.CookieProvider.html">Ext.state.CookieProvider</a> is available.</p><p>To set the state provider for the current page:</p><pre><code>Ext.state.Manager.setProvider(new Ext.state.CookieProvider({
   expires: new Date(new Date().getTime()+(1000&#42;60&#42;60&#42;24&#42;7)), //7 days from now
   }));
   </code></pre><p>A stateful Component attempts to save state when one of the events listed in the <code><a href="output/Ext.Component.html#Ext.Component-stateEvents">stateEvents</a></code> configuration fires.</p><p>To save state, a stateful Component first serializes its state by calling <b><code>getState</code></b>. By default, this function does nothing. The developer must provide an implementation which returns an object hash which represents the Component's restorable state.</p><p>The value yielded by getState is passed to <a href="output/Ext.state.Manager.html#Ext.state.Manager-set">Ext.state.Manager.set</a> which uses the configured <a href="Ext.state.Provider.html">Ext.state.Provider</a> to save the object keyed by the Component's <code><a href="stateId.html">stateId</a></code>, or, if that is not specified, its <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code>.</p><p>During construction, a stateful Component attempts to <i>restore</i> its state by calling <a href="output/Ext.state.Manager.html#Ext.state.Manager-get">Ext.state.Manager.get</a> passing the <code><a href="output/Ext.Component.html#Ext.Component-stateId">stateId</a></code>, or, if that is not specified, the <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code>.</p><p>The resulting object is passed to <b><code>applyState</code></b>. The default implementation of <code>applyState</code> simply copies properties into the object, but a developer may override this to support more behaviour.</p><p>You can perform extra processing on state save and restore by attaching handlers to the <a href="output/Ext.Component.html#Ext.Component-beforestaterestore">beforestaterestore</a>, <a href="output/Ext.Component.html#Ext.Component-staterestore">staterestore</a>, <a href="output/Ext.Component.html#Ext.Component-beforestatesave">beforestatesave</a> and <a href="output/Ext.Component.html#Ext.Component-statesave">statesave</a> events.</p>
   */
  public native function get stateful():Boolean;

  /**
   * @private
   */
  public native function set stateful(value:Boolean):void;

  /**
   A custom style specification to be applied to this component's Element. Should be a valid argument to <a href="output/Ext.Element.html#Ext.Element-applyStyles">Ext.Element.applyStyles</a>. <pre><code>new Ext.Panel({
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
   new Ext.Button({
   text: 'Send',
   minWidth: '100',
   style: {
   marginBottom: '10px'
   }
   })
   ]
   });
   </code></pre>
   */
  public native function get style():String;

  /**
   * @private
   */
  public native function set style(value:String):void;

  /**
   An <a href="Ext.Template.html">Ext.Template</a>, <a href="Ext.XTemplate.html">Ext.XTemplate</a> or an array of strings to form an Ext.XTemplate. Used in conjunction with the <code><a href="output/Ext.Component.html#Ext.Component-data">data</a></code> and <code><a href="output/Ext.Component.html#Ext.Component-tplWriteMode">tplWriteMode</a></code> configurations.
   */
  public native function get tpl():*;

  /**
   * @private
   */
  public native function set tpl(value:*):void;

  /**
   The Ext.(X)Template method to use when updating the content area of the Component. Defaults to <tt>'overwrite'</tt> (see <code><a href="output/Ext.XTemplate.html#Ext.XTemplate-overwrite">Ext.XTemplate.overwrite</a></code>).
   */
  public native function get tplWriteMode():String;

  /**
   * @private
   */
  public native function set tplWriteMode(value:String):void;

  /**
   The registered <tt>xtype</tt> to create. This config option is not used when passing a config object into a constructor. This config option is used only when lazy instantiation is being used, and a child item of a Container is being specified not as a fully instantiated Component, but as a <i>Component config object</i>. The <tt>xtype</tt> will be looked up at render time up to determine what type of child Component to create.<br/><br/>The predefined xtypes are listed <a href="Ext.Component.html">here</a>. <br/><br/>If you subclass Components to create your own Components, you may register them using <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerType">Ext.ComponentMgr.registerType</a> in order to be able to take advantage of lazy instantiation and rendering.
   */
  public native function get xtype():String;

  /**
   * @private
   */
  public native function set xtype(value:String):void;


}
}
    