package ext {
import ext.config.component;
import ext.util.Observable;

/**
 * Fires when a component is added to an Ext.Container
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>ownerCt:ext.Container</code>
 Container which holds the component
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 Position at which the component was added
 *       </li>

 * </ul>
 */
[Event(name="added")]

/**
 * Fires after the component rendering is finished.
 <p>The afterrender event is fired after this Component has been <a href="output/Ext.Component.html#Ext.Component-rendered">rendered</a>, been postprocesed by any afterRender method defined for the Component, and, if <a href="output/Ext.Component.html#Ext.Component-stateful">stateful</a>, after state has been restored.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="afterrender")]

/**
 * Fires before the component is <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a>ed. Return false from an event handler to stop the <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforedestroy")]

/**
 * Fires before the component is hidden by calling the <a href="output/Ext.Component.html#Ext.Component-hide">hide</a> method. Return false from an event handler to stop the hide.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforehide")]

/**
 * Fires before the component is <a href="output/Ext.Component.html#Ext.Component-rendered">rendered</a>. Return false from an event handler to stop the <a href="output/Ext.Component.html#Ext.Component-render">render</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforerender")]

/**
 * Fires before the component is shown by calling the <a href="output/Ext.Component.html#Ext.Component-show">show</a> method. Return false from an event handler to stop the show.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeshow")]

/**
 * Fires before the state of the component is restored. Return false from an event handler to stop the restore.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>state:Object</code>
 The hash of state values returned from the StateProvider. If this event is not vetoed, then the state object is passed to <b><tt>applyState</tt></b>. By default, that simply copies property values into this Component. The method maybe overridden to provide custom state restoration.
 *       </li>

 * </ul>
 */
[Event(name="beforestaterestore")]

/**
 * Fires before the state of the component is saved to the configured state provider. Return false to stop the save.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>state:Object</code>
 The hash of state values. This is determined by calling <b><tt>getState()</tt></b> on the Component. This method must be provided by the developer to return whatever representation of state is required, by default, Ext.Component has a null implementation.
 *       </li>

 * </ul>
 */
[Event(name="beforestatesave")]

/**
 * Fires after the component is <a href="output/Ext.Component.html#Ext.Component-destroy">destroy</a>ed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="destroy")]

/**
 * Fires after the component is disabled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="disable")]

/**
 * Fires after the component is enabled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="enable")]

/**
 * Fires after the component is hidden. Fires after the component is hidden when calling the <a href="output/Ext.Component.html#Ext.Component-hide">hide</a> method.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="hide")]

/**
 * Fires when a component is removed from an Ext.Container
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>ownerCt:ext.Container</code>
 Container which holds the component
 *       </li>

 * </ul>
 */
[Event(name="removed")]

/**
 * Fires after the component markup is <a href="output/Ext.Component.html#Ext.Component-rendered">rendered</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="render")]

/**
 * Fires after the component is shown when calling the <a href="output/Ext.Component.html#Ext.Component-show">show</a> method.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="show")]

/**
 * Fires after the state of the component is restored.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>state:Object</code>
 The hash of state values returned from the StateProvider. This is passed to <b><tt>applyState</tt></b>. By default, that simply copies property values into this Component. The method maybe overridden to provide custom state restoration.
 *       </li>

 * </ul>
 */
[Event(name="staterestore")]

/**
 * Fires after the state of the component is saved to the configured state provider.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>state:Object</code>
 The hash of state values. This is determined by calling <b><tt>getState()</tt></b> on the Component. This method must be provided by the developer to return whetever representation of state is required, by default, Ext.Component has a null implementation.
 *       </li>

 * </ul>
 */
[Event(name="statesave")]


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
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.component
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component Sencha Docs Ext JS 3.4
 */
[Native]
[DefaultProperty("config")]
public class Component extends Observable {

  /**
   * @private
   */
  public native function set config(value:ext.config.component):void;

  /**
   *
   *
   * @param config The configuration options may be specified as either: <div class="mdetail-params"><ul><li><b>an element</b> : <p class="sub-desc">it is set as the internal element and its id used as the component id</p></li><li><b>a string</b> : <p class="sub-desc">it is assumed to be the id of an existing element and is used as the component id</p></li><li><b>anything else</b> : <p class="sub-desc">it is assumed to be a standard config object and is applied to the component</p></li></ul></div>
   * @see ext.config.component
   */
  public function Component(config:component = null) {
    super();
  }

  /**
   The Action assigned to this Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-baseAction Sencha Docs Ext JS 3.4
   */
  public native function get baseAction():Action;

  /**
   * @private
   */
  public native function set baseAction(value:Action):void;

  /**
   True if this component is disabled.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-disabled Sencha Docs Ext JS 3.4
   */
  public native function get disabled():Boolean;

  /**
   The <a href="Ext.Element.html">Ext.Element</a> which encapsulates this Component.
   <p>This will <i>usually</i> be a &lt;DIV&gt; element created by the class's onRender method, but that may be overridden using the <code><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></code> config.</p><br/><p><b>Note</b>: this element will not be available until this Component has been rendered.</p><br/><p>To add listeners for <b>DOM events</b> to this Component (as opposed to listeners for this Component's own Observable events), see the <a href="output/Ext.util.Observable.html#Ext.util.Observable-listeners">listeners</a> config for a suggestion, or use a render listener directly:</p><pre><code>new Ext.Panel({
   title: 'The Clickable Panel',
   listeners: {
   render: function(p) {
   // Append the Panel to the click handler's argument list.
   p.getEl().on('click', handlePanelClick.createDelegate(null, [p], true));
   },
   single: true  // Remove the listener after first invocation
   }
   });
   </code></pre><p>See also <tt><a href="output/Ext.Component.html#Ext.Component-getEl">getEl</a></tt></p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-el Sencha Docs Ext JS 3.4
   */
  public native function get el():Element;

  /**
   True if this component is hidden.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-hidden Sencha Docs Ext JS 3.4
   */
  public native function get hidden():Boolean;

  /**
   This Component's initial configuration specification.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-initialConfig Sencha Docs Ext JS 3.4
   */
  public native function get initialConfig():Object;

  /**
   This Component's owner <a href="Ext.Container.html">Container</a> (defaults to undefined, and is set automatically when this Component is added to a Container). <p><b>Note</b>: to access items within the Container see <tt><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></tt>.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-ownerCt Sencha Docs Ext JS 3.4
   */
  public native function get ownerCt():Container;

  /**
   The ancestor Container into which the <a href="output/Ext.Component.html#Ext.Component-ref">ref</a> reference was inserted if this Component is a child of a Container, and has been configured with a <code>ref</code>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-refOwner Sencha Docs Ext JS 3.4
   */
  public native function get refOwner():Container;

  /**
   * @private
   */
  public native function set refOwner(value:Container):void;

  /**
   True if this component has been rendered.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-rendered Sencha Docs Ext JS 3.4
   */
  public native function get rendered():Boolean;

  /**
   The XTemplate used by this component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-property-tpl Sencha Docs Ext JS 3.4
   */
  public native function get tpl():XTemplate;

  /**
   * @private
   */
  public native function set tpl(value:XTemplate):void;

  /**
   Whether the component can move the Dom node when rendering (defaults to true).
   */
  public native function get allowDomMove():Boolean;

  /**
   Specify the id of the element, a DOM element or an existing Element corresponding to a DIV that is already present in the document that specifies some structural markup for this component.
   <div><ul><li><b>Description</b> : <div style="margin-left: 2em">When <tt>applyTo</tt> is used, constituent parts of the component can also be specified by id or CSS class name within the main element, and the component being created may attempt to create its subcomponents from that markup if applicable.</div></li><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">When using this config, a call to render() is not required.</div><div class="sub-desc">If applyTo is specified, any value passed for <a href="output/Ext.Component.html#Ext.Component-renderTo">renderTo</a> will be ignored and the target element's parent node will automatically be used as the component's container.</div></div></li></ul></div>
   */
  public native function get applyTo():*;

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
   True if the component should check for hidden classes (e.g. 'x-hidden' or 'x-hide-display') and remove them on render (defaults to false).
   */
  public native function get autoShow():Boolean;

  /**
   An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <tt>[]</tt>.
   */
  public native function get bubbleEvents():Array;

  /**
   The CSS class used to to apply to the special clearing div rendered directly after each form field wrapper to provide field clearing (defaults to <tt>'x-form-clear-left'</tt>).
   <br/><p><b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use the <b><a href="Ext.layout.FormLayout.html">FormLayout</a></b> layout manager (e.g. <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a> or specifying <tt>layout:'form'</tt>) and either a <tt><a href="output/Ext.Component.html#Ext.Component-fieldLabel">fieldLabel</a></tt> is specified or <tt>isFormField=true</tt> is specified.</p><br/><p>See <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>.<a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-fieldTpl">fieldTpl</a> also.</p>
   */
  public native function get clearCls():String;

  /**
   An optional extra CSS class that will be added to this component's Element (defaults to ''). This can be useful for adding customized styles to the component or any of its children using standard CSS rules.
   */
  public native function get cls():String;

  /**
   Optional. Specify an existing HTML element, or the <code>id</code> of an existing HTML element to use as the content for this component.
   <ul><li><b>Description</b> : <div class="sub-desc">This config option is used to take an existing HTML element and place it in the layout element of a new component (it simply moves the specified DOM element <i>after the Component is rendered</i> to use as the content.</div></li><li><b>Notes</b> : <div class="sub-desc">The specified HTML element is appended to the layout element of the component <i>after any configured <a href="output/Ext.Component.html#Ext.Component-html">HTML</a> has been inserted</i>, and so the document will not contain this element at the time the <a href="output/Ext.Component.html#Ext.Component-render">render</a> event is fired.</div><div class="sub-desc">The specified HTML element used will not participate in any <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> scheme that the Component may use. It is just HTML. Layouts operate on child <code><b><a href="output/Ext.Container.html#Ext.Container-items">items</a></b></code>.</div><div class="sub-desc">Add either the <code>x-hidden</code> or the <code>x-hide-display</code> CSS class to prevent a brief flicker of the content before it is rendered to the panel.</div></li></ul>
   */
  public native function get contentEl():String;

  /**
   An optional extra CSS class that will be added to this component's container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.layout.ContainerLayout.html">Ext.layout.ContainerLayout</a>.<a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-extraCls">extraCls</a> also.
   <p><b>Note</b>: <tt>ctCls</tt> defaults to <tt>''</tt> except for the following class which assigns a value by default:</p><div class="mdetail-params"><ul><li><a href="Ext.layout.Box.html">Box Layout</a> : <tt>'x-box-layout-ct'</tt></li></ul></div>To configure the above Class with an extra CSS class append to the default. For example, for BoxLayout (Hbox and Vbox):<pre><code>ctCls: 'x-box-layout-ct custom-class'
   </code></pre><br/><br/>
   */
  public native function get ctCls():String;

  /**
   The initial set of data to apply to the <code><a href="output/Ext.Component.html#Ext.Component-tpl">tpl</a></code> to update the content area of the Component.
   */
  public native function get data():*;

  /**
   CSS class added to the component when it is disabled (defaults to 'x-item-disabled').
   */
  public native function get disabledClass():String;

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
   How this component should be hidden. Supported values are <tt>'visibility'</tt> (css visibility), <tt>'offsets'</tt> (negative offset position) and <tt>'display'</tt> (css display).
   <br/><p><b>Note</b>: the default of <tt>'display'</tt> is generally preferred since items are automatically laid out when they are first shown (no sizing is done while hidden).</p>
   */
  public native function get hideMode():String;

  /**
   True to hide and show the component's container when hide/show is called on the component, false to hide and show the component itself (defaults to false). For example, this can be used as a shortcut for a hide button on a window by setting hide:true on the button when adding it to its parent container.
   */
  public native function get hideParent():Boolean;

  /**
   An HTML fragment, or a <a href="Ext.DomHelper.html">DomHelper</a> specification to use as the layout element content (defaults to ''). The HTML content is added after the component is rendered, so the document will not contain this HTML at the time the <a href="output/Ext.Component.html#Ext.Component-render">render</a> event is fired. This content is inserted into the body <i>before</i> any configured <a href="output/Ext.Component.html#Ext.Component-contentEl">contentEl</a> is appended.
   */
  public native function get html():*;

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
   An optional extra CSS class that will be added to this component's Element when the mouse moves over the Element, and removed when the mouse moves out. (defaults to ''). This can be useful for adding customized 'active' or 'hover' styles to the component or any of its children using standard CSS rules.
   */
  public native function get overCls():String;

  /**
   An object or array of objects that will provide custom functionality for this component. The only requirement for a valid plugin is that it contain an init method that accepts a reference of type Ext.Component. When a component is created, if any plugins are available, the component will call the init method on each plugin, passing a reference to itself. Each plugin can then call methods or respond to events on the component as needed to provide its functionality.
   */
  public native function get plugins():*;

  /**
   The registered <tt>ptype</tt> to create. This config option is not used when passing a config object into a constructor. This config option is used only when lazy instantiation is being used, and a Plugin is being specified not as a fully instantiated Component, but as a <i>Component config object</i>. The <tt>ptype</tt> will be looked up at render time up to determine what type of Plugin to create.<br/><br/>If you create your own Plugins, you may register them using <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerPlugin">Ext.ComponentMgr.registerPlugin</a> in order to be able to take advantage of lazy instantiation and rendering.
   */
  public native function get ptype():String;

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
   Specify the id of the element, a DOM element or an existing Element that this component will be rendered into.
   <div><ul><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">Do <u>not</u> use this option if the Component is to be a child item of a <a href="Ext.Container.html">Container</a>. It is the responsibility of the <a href="Ext.Container.html">Container</a>'s <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a> to render and manage its child items.</div><div class="sub-desc">When using this config, a call to render() is not required.</div></div></li></ul></div><p>See <tt><a href="output/Ext.Component.html#Ext.Component-render">render</a></tt> also.</p>
   */
  public native function get renderTo():*;

  /**
   An array of events that, when fired, should trigger this component to save its state (defaults to none). <code>stateEvents</code> may be any type of event supported by this component, including browser or custom events (e.g., <tt>['click', 'customerchange']</tt>).
   <p>See <code><a href="output/Ext.Component.html#Ext.Component-stateful">stateful</a></code> for an explanation of saving and restoring Component state.</p>
   */
  public native function get stateEvents():Array;

  /**
   The unique id for this component to use for state management purposes (defaults to the component id if one was set, otherwise null if the component is using a generated id). <p>See <code><a href="output/Ext.Component.html#Ext.Component-stateful">stateful</a></code> for an explanation of saving and restoring Component state.</p>
   */
  public native function get stateId():String;

  /**
   A flag which causes the Component to attempt to restore the state of internal properties from a saved state on startup. The component must have either a <code><a href="output/Ext.Component.html#Ext.Component-stateId">stateId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> assigned for state to be managed. Auto-generated ids are not guaranteed to be stable across page loads and cannot be relied upon to save and restore the same state for a component.
   <p>For state saving to work, the state manager's provider must have been set to an implementation of <a href="Ext.state.Provider.html">Ext.state.Provider</a> which overrides the <a href="output/Ext.state.Provider.html#Ext.state.Provider-set">set</a> and <a href="output/Ext.state.Provider.html#Ext.state.Provider-get">get</a> methods to save and recall name/value pairs. A built-in implementation, <a href="Ext.state.CookieProvider.html">Ext.state.CookieProvider</a> is available.</p><p>To set the state provider for the current page:</p><pre><code>Ext.state.Manager.setProvider(new Ext.state.CookieProvider({
   expires: new Date(new Date().getTime()+(1000&#42;60&#42;60&#42;24&#42;7)), //7 days from now
   }));
   </code></pre><p>A stateful Component attempts to save state when one of the events listed in the <code><a href="output/Ext.Component.html#Ext.Component-stateEvents">stateEvents</a></code> configuration fires.</p><p>To save state, a stateful Component first serializes its state by calling <b><code>getState</code></b>. By default, this function does nothing. The developer must provide an implementation which returns an object hash which represents the Component's restorable state.</p><p>The value yielded by getState is passed to <a href="output/Ext.state.Manager.html#Ext.state.Manager-set">Ext.state.Manager.set</a> which uses the configured <a href="Ext.state.Provider.html">Ext.state.Provider</a> to save the object keyed by the Component's <code><a href="stateId.html">stateId</a></code>, or, if that is not specified, its <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code>.</p><p>During construction, a stateful Component attempts to <i>restore</i> its state by calling <a href="output/Ext.state.Manager.html#Ext.state.Manager-get">Ext.state.Manager.get</a> passing the <code><a href="output/Ext.Component.html#Ext.Component-stateId">stateId</a></code>, or, if that is not specified, the <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code>.</p><p>The resulting object is passed to <b><code>applyState</code></b>. The default implementation of <code>applyState</code> simply copies properties into the object, but a developer may override this to support more behaviour.</p><p>You can perform extra processing on state save and restore by attaching handlers to the <a href="output/Ext.Component.html#Ext.Component-beforestaterestore">beforestaterestore</a>, <a href="output/Ext.Component.html#Ext.Component-staterestore">staterestore</a>, <a href="output/Ext.Component.html#Ext.Component-beforestatesave">beforestatesave</a> and <a href="output/Ext.Component.html#Ext.Component-statesave">statesave</a> events.</p>
   */
  public native function get stateful():Boolean;

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
   The Ext.(X)Template method to use when updating the content area of the Component. Defaults to <tt>'overwrite'</tt> (see <code><a href="output/Ext.XTemplate.html#Ext.XTemplate-overwrite">Ext.XTemplate.overwrite</a></code>).
   */
  public native function get tplWriteMode():String;

  /**
   The registered <tt>xtype</tt> to create. This config option is not used when passing a config object into a constructor. This config option is used only when lazy instantiation is being used, and a child item of a Container is being specified not as a fully instantiated Component, but as a <i>Component config object</i>. The <tt>xtype</tt> will be looked up at render time up to determine what type of child Component to create.<br/><br/>The predefined xtypes are listed <a href="Ext.Component.html">here</a>. <br/><br/>If you subclass Components to create your own Components, you may register them using <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-registerType">Ext.ComponentMgr.registerType</a> in order to be able to take advantage of lazy instantiation and rendering.
   */
  public native function get xtype():String;

  /**
   * Adds a CSS class to the component's underlying element.
   *
   * @param cls The CSS class name to add
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-addClass Sencha Docs Ext JS 3.4
   */
  public native function addClass(cls:String):Component;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-afterRender Sencha Docs Ext JS 3.4
   */
  protected native function afterRender():void;

  /**
   * Apply this component to existing markup that is valid. With this function, no call to render() is required.
   *
   * @param el
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-applyToMarkup Sencha Docs Ext JS 3.4
   */
  public native function applyToMarkup(el:*):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-beforeDestroy Sencha Docs Ext JS 3.4
   */
  protected native function beforeDestroy():void;

  /**
   * Bubbles up the component/container hierarchy, calling the specified function with each component. The scope (<i>this</i>) of function call will be the scope provided or the current component. The arguments to the function will be the args provided or the current component. If the function returns false at any point, the bubble is stopped.
   *
   * @param fn The function to call
   * @param scope The scope of the function (defaults to current node)
   * @param args The args to call the function with (default to passing the current component)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-bubble Sencha Docs Ext JS 3.4
   */
  public native function bubble(fn:Function, scope:Object = null, args:Array = null):Component;

  /**
   * Clone the current component using the original config values passed into this instance by default.
   *
   * @param overrides A new config containing any properties to override in the cloned version. An id property can be passed on this object, otherwise one will be generated to avoid duplicates.
   * @return clone The cloned copy of this component
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-cloneConfig Sencha Docs Ext JS 3.4
   */
  public native function cloneConfig(overrides:Object):Component;

  /**
   * Destroys this component by purging any event listeners, removing the component's element from the DOM, removing the component from its <a href="Ext.Container.html">Ext.Container</a> (if applicable) and unregistering it from <a href="Ext.ComponentMgr.html">Ext.ComponentMgr</a>. Destruction is generally handled automatically by the framework and this method should usually not need to be called directly.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-destroy Sencha Docs Ext JS 3.4
   */
  public native function destroy():void;

  /**
   * Disable this component and fire the 'disable' event.
   *
   * @param silent private
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-disable Sencha Docs Ext JS 3.4
   */
  public native function disable(silent:Boolean = false):Component;

  /**
   * Enable this component and fire the 'enable' event.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-enable Sencha Docs Ext JS 3.4
   */
  public native function enable():Component;

  /**
   * Find a container above this component at any level by a custom function. If the passed function returns true, the container will be returned.
   *
   * @param fn The custom function to call with the arguments (container, this component).
   * @return The first Container for which the custom function returns true
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-findParentBy Sencha Docs Ext JS 3.4
   */
  public native function findParentBy(fn:Function):Container;

  /**
   * Find a container above this component at any level by xtype or class
   *
   * @param xtype The xtype to check for this Component. Note that the the component can either be an instance or a component class:
   * @param shallow False to check whether this Component is descended from the xtype (this is the default), or true to check whether this Component is directly of the specified xtype.
   * @return The first Container which matches the given xtype or class
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-findParentByType Sencha Docs Ext JS 3.4
   */
  public native function findParentByType(xtype:*, shallow:Boolean = false):Container;

  /**
   * Try to focus this component.
   *
   * @param selectText If applicable, true to also select the text in this component
   * @param delay Delay the focus this number of milliseconds (true for 10 milliseconds)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-focus Sencha Docs Ext JS 3.4
   */
  public native function focus(selectText:Boolean = false, delay:* = null):Component;

  /**
   * Provides the link for Observable's fireEvent method to bubble up the ownership hierarchy.
   *
   * @return the Container which owns this Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getBubbleTarget Sencha Docs Ext JS 3.4
   */
  public native function getBubbleTarget():Container;

  /**
   * Returns the <a href="Ext.Element.html">Ext.Element</a> which encapsulates this Component.
   <p>This will <i>usually</i> be a &lt;DIV&gt; element created by the class's onRender method, but that may be overridden using the <a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a> config.</p><br/><p><b>Note</b>: this element will not be available until this Component has been rendered.</p><br/><p>To add listeners for <b>DOM events</b> to this Component (as opposed to listeners for this Component's own Observable events), see the <a href="output/Ext.Component.html#Ext.Component-listeners">listeners</a> config for a suggestion, or use a render listener directly:</p><pre><code>new Ext.Panel({
   title: 'The Clickable Panel',
   listeners: {
   render: function(p) {
   // Append the Panel to the click handler's argument list.
   p.getEl().on('click', handlePanelClick.createDelegate(null, [p], true));
   },
   single: true  // Remove the listener after first invocation
   }
   });
   </code></pre>
   *
   * @return The Element which encapsulates this Component.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getEl Sencha Docs Ext JS 3.4
   */
  public native function getEl():Element;

  /**
   * Returns the <code>id</code> of this component or automatically generates and returns an <code>id</code> if an <code>id</code> is not defined yet:<pre><code>'ext-comp-' + (++Ext.Component.AUTO_ID)
   </code></pre>
   *
   * @return id
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getId Sencha Docs Ext JS 3.4
   */
  public native function getId():String;

  /**
   * Returns the <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> of this component. If an <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> was not assigned through configuration the <code>id</code> is returned using <code><a href="output/Ext.Component.html#Ext.Component-getId">getId</a></code>.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getItemId Sencha Docs Ext JS 3.4
   */
  public native function getItemId():String;

  /**
   *
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getPositionEl Sencha Docs Ext JS 3.4
   */
  protected native function getPositionEl():Element;

  /**
   * Gets the xtype for this component as registered with <a href="Ext.ComponentMgr.html">Ext.ComponentMgr</a>. For a list of all available xtypes, see the <a href="Ext.Component.html">Ext.Component</a> header. Example usage: <pre><code>var t = new Ext.form.TextField();
   alert(t.getXType());  // alerts 'textfield'
   </code></pre>
   *
   * @return The xtype
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getXType Sencha Docs Ext JS 3.4
   */
  public native function getXType():String;

  /**
   * Returns this Component's xtype hierarchy as a slash-delimited string. For a list of all available xtypes, see the <a href="Ext.Component.html">Ext.Component</a> header.
   <p style="font-weight: bold">If using your own subclasses, be aware that a Component must register its own xtype to participate in determination of inherited xtypes.</p><p>Example usage:</p><pre><code>var t = new Ext.form.TextField();
   alert(t.getXTypes());  // alerts 'component/box/field/textfield'
   </code></pre>
   *
   * @return The xtype hierarchy string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-getXTypes Sencha Docs Ext JS 3.4
   */
  public native function getXTypes():String;

  /**
   * Hide this component. Listen to the '<a href="output/Ext.Component.html#Ext.Component-beforehide">beforehide</a>' event and return <tt>false</tt> to cancel hiding the component. Fires the '<a href="output/Ext.Component.html#Ext.Component-hide">hide</a>' event after hiding the component. Note this method is called internally if the component is configured to be <code><a href="output/Ext.Component.html#Ext.Component-hidden">hidden</a></code>.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-hide Sencha Docs Ext JS 3.4
   */
  public native function hide():Component;

  /**
   * Function to be implemented by Component subclasses to be part of standard component initialization flow (it is empty by default). <pre><code>// Traditional constructor:
   Ext.Foo = function(config){
   // call superclass constructor:
   Ext.Foo.superclass.constructor.call(this, config);

   this.addEvents({
   // add events
   });
   };
   Ext.extend(Ext.Foo, Ext.Bar, {
   // class body
   }

   // initComponent replaces the constructor:
   Ext.Foo = Ext.extend(Ext.Bar, {
   initComponent : function(){
   // call superclass initComponent
   Ext.Container.superclass.initComponent.call(this);

   this.addEvents({
   // add events
   });
   }
   }
   </code></pre>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-initComponent Sencha Docs Ext JS 3.4
   */
  protected native function initComponent():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-initRef Sencha Docs Ext JS 3.4
   */
  public native function initRef():void;

  /**
   * Returns true if this component is visible.
   *
   * @return True if this component is visible, false otherwise.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-isVisible Sencha Docs Ext JS 3.4
   */
  public native function isVisible():Boolean;

  /**
   * Tests whether or not this Component is of a specific xtype. This can test whether this Component is descended from the xtype (default) or whether it is directly of the xtype specified (shallow = true).
   <p style="font-weight: bold">If using your own subclasses, be aware that a Component must register its own xtype to participate in determination of inherited xtypes.</p><p>For a list of all available xtypes, see the <a href="Ext.Component.html">Ext.Component</a> header.</p><p>Example usage:</p><pre><code>var t = new Ext.form.TextField();
   var isText = t.isXType('textfield');        // true
   var isBoxSubclass = t.isXType('box');       // true, descended from BoxComponent
   var isBoxInstance = t.isXType('box', true); // false, not a direct BoxComponent instance
   </code></pre>
   *
   * @param xtype The xtype to check for this Component. Note that the the component can either be an instance or a component class: <pre><code>var c = new Ext.Component();
   console.log(c.isXType(c));
   console.log(c.isXType(Ext.Component));
   </code></pre>
   * @param shallow False to check whether this Component is descended from the xtype (this is the default), or true to check whether this Component is directly of the specified xtype.
   * @return True if this component descends from the specified xtype, false otherwise.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-isXType Sencha Docs Ext JS 3.4
   */
  public native function isXType(xtype:*, shallow:Boolean = false):Boolean;

  /**
   * Adds listeners to any Observable object (or Elements) which are automatically removed when this Component is destroyed. Usage:
   <pre><code>myGridPanel.mon(myGridPanel.getSelectionModel(), 'selectionchange', handleSelectionChange, null, {buffer: 50});
   </code></pre><p>or:</p><pre><code>myGridPanel.mon(myGridPanel.getSelectionModel(), {
   selectionchange: handleSelectionChange,
   buffer: 50
   });
   </code></pre>
   *
   * @param item The item to which to add a listener/listeners.
   * @param ename The event name, or an object containing event name properties.
   * @param fn If the <code>ename</code> parameter was an event name, this is the handler function.
   * @param scope If the <code>ename</code> parameter was an event name, this is the scope (<code>this</code> reference) in which the handler function is executed.
   * @param opt If the <code>ename</code> parameter was an event name, this is the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> options.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-mon Sencha Docs Ext JS 3.4
   */
  public native function mon(item:*, ename:*, fn:Function = null, scope:Object = null, opt:Object = null):void;

  /**
   * Removes listeners that were added by the <a href="output/Ext.Component.html#Ext.Component-mon">mon</a> method.
   *
   * @param item The item from which to remove a listener/listeners.
   * @param ename The event name, or an object containing event name properties.
   * @param fn If the <code>ename</code> parameter was an event name, this is the handler function.
   * @param scope If the <code>ename</code> parameter was an event name, this is the scope (<code>this</code> reference) in which the handler function is executed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-mun Sencha Docs Ext JS 3.4
   */
  public native function mun(item:*, ename:*, fn:Function = null, scope:Object = null):void;

  /**
   * Returns the next component in the owning container.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-nextSibling Sencha Docs Ext JS 3.4
   */
  public native function nextSibling():Component;

  /**
   *
   *
   * @param container Container which holds the component
   * @param pos Position at which the component was added
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onAdded Sencha Docs Ext JS 3.4
   */
  public native function onAdded(container:Container, pos:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onDestroy Sencha Docs Ext JS 3.4
   */
  protected native function onDestroy():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onDisable Sencha Docs Ext JS 3.4
   */
  protected native function onDisable():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onEnable Sencha Docs Ext JS 3.4
   */
  protected native function onEnable():void;

  /**
   * Method that is called immediately before the <code>hide</code> event is fired. Defaults to setting the style class <code>'x-hide-' + this.hideMode</code>.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onHide Sencha Docs Ext JS 3.4
   */
  public native function onHide():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onRemoved Sencha Docs Ext JS 3.4
   */
  public native function onRemoved():void;

  /**
   * default function is not really useful
   *
   * @param ct container
   * @param position reference child element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onRender Sencha Docs Ext JS 3.4
   */
  protected native function onRender(ct:Element, position:Element):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-onShow Sencha Docs Ext JS 3.4
   */
  protected native function onShow():void;

  /**
   * Returns the previous component in the owning container.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-previousSibling Sencha Docs Ext JS 3.4
   */
  public native function previousSibling():Component;

  /**
   * Removes a CSS class from the component's underlying element.
   *
   * @param cls The CSS class name to remove
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-removeClass Sencha Docs Ext JS 3.4
   */
  public native function removeClass(cls:String):Component;

  /**
   * Render this Component into the passed HTML element.
   <p style="font-weight: bold">If you are using a <a href="Ext.Container.html">Container</a> object to house this Component, then do not use the render method.</p><p>A Container's child Components are rendered by that Container's <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> manager when the Container is first rendered.</p><p>Certain layout managers allow dynamic addition of child components. Those that do include <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>, <a href="Ext.layout.AnchorLayout.html">Ext.layout.AnchorLayout</a>, <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>, <a href="Ext.layout.TableLayout.html">Ext.layout.TableLayout</a>.</p><p>If the Container is already rendered when a new child Component is added, you may need to call the Container's <a href="output/Ext.Container.html#Ext.Container-doLayout">doLayout</a> to refresh the view which causes any unrendered child Components to be rendered. This is required so that you can add multiple child components if needed while only refreshing the layout once.</p><p>When creating complex UIs, it is important to remember that sizing and positioning of child items is the responsibility of the Container's <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> manager. If you expect child items to be sized in response to user interactions, you must configure the Container with a layout manager which creates and manages the type of layout you have in mind.</p><p style="font-weight: bold">Omitting the Container's <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> config means that a basic layout manager is used which does nothing but render child components sequentially into the Container. No sizing or positioning will be performed in this situation.</p>
   *
   * @param container The element this Component should be rendered into. If it is being created from existing markup, this should be omitted.
   * @param position The element ID or DOM node index within the container <b>before</b> which this component will be inserted (defaults to appending to the end of the container)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-render Sencha Docs Ext JS 3.4
   */
  public native function render(container:* = null, position:* = null):void;

  /**
   * Convenience function for setting disabled/enabled by boolean.
   *
   * @param disabled
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-setDisabled Sencha Docs Ext JS 3.4
   */
  public native function setDisabled(disabled:Boolean):Component;

  /**
   * Convenience function to hide or show this component by boolean.
   *
   * @param visible True to show, false to hide
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-setVisible Sencha Docs Ext JS 3.4
   */
  public native function setVisible(visible:Boolean):Component;

  /**
   * Show this component. Listen to the '<a href="output/Ext.Component.html#Ext.Component-beforeshow">beforeshow</a>' event and return <tt>false</tt> to cancel showing the component. Fires the '<a href="output/Ext.Component.html#Ext.Component-show">show</a>' event after showing the component.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-show Sencha Docs Ext JS 3.4
   */
  public native function show():Component;

  /**
   * Update the content area of a component.
   *
   * @param htmlOrData If this component has been configured with a template via the tpl config then it will use this argument as data to populate the template. If this component was not configured with a template, the components content area will be updated via Ext.Element update
   * @param loadScripts Only legitimate when using the html configuration. Defaults to false
   * @param callback Only legitimate when using the html configuration. Callback to execute when scripts have finished loading
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Component-method-update Sencha Docs Ext JS 3.4
   */
  public native function update(htmlOrData:*, loadScripts:Boolean = false, callback:Function = null):void;

  protected native function applyState(state:Object):void;

  protected native function getState():Object;

}
}
    