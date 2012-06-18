package ext.lib {

import ext.Component;
import ext.Container;
import ext.Element;
import ext.LoadMask;
import ext.XTemplate;
import ext.form.Number;
import ext.util.Observable;

import js.HTMLElement;

/**
 * Fires after a Component has been visually activated.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="activate")]

/**
 * Fires after a Component had been added to a Container.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>container:ext.Container</code>
 Parent Container
 *       </li>

 *       <li>
 *           <code>pos:ext.form.Number</code>
 position of Component
 *       </li>

 * </ul>
 */
[Event(name="added")]

/**
 * Fires after the component rendering is finished.
 <p>The afterrender event is fired after this Component has been <a href="output/Ext.lib.Component.html#Ext.lib.Component-rendered">rendered</a>, been postprocesed by any afterRender method defined for the Component, and, if <a href="output/Ext.lib.Component.html#Ext.lib.Component-stateful">stateful</a>, after state has been restored.</p>
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="afterrender")]

/**
 * Fires before a Component has been visually activated. Returning false from an event listener can prevent the activate from occurring.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeactivate")]

/**
 * Fires before a Component has been visually deactivated. Returning false from an event listener can prevent the deactivate from occurring.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforedeactivate")]

/**
 * Fires before the component is <a href="output/Ext.lib.Component.html#Ext.lib.Component-destroy">destroy</a>ed. Return false from an event handler to stop the <a href="output/Ext.lib.Component.html#Ext.lib.Component-destroy">destroy</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforedestroy")]

/**
 * Fires before the component is hidden when calling the <a href="output/Ext.lib.Component.html#Ext.lib.Component-hide">hide</a> method. Return false from an event handler to stop the hide.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforehide")]

/**
 * Fires before the component is <a href="output/Ext.lib.Component.html#Ext.lib.Component-rendered">rendered</a>. Return false from an event handler to stop the <a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforerender")]

/**
 * Fires before the component is shown when calling the <a href="output/Ext.lib.Component.html#Ext.lib.Component-show">show</a> method. Return false from an event handler to stop the show.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeshow")]

/**
 * Fires after a Component has been visually deactivated.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="deactivate")]

/**
 * Fires after the component is <a href="output/Ext.lib.Component.html#Ext.lib.Component-destroy">destroy</a>ed.
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
 * Fires after the component is hidden. Fires after the component is hidden when calling the <a href="output/Ext.lib.Component.html#Ext.lib.Component-hide">hide</a> method.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="hide")]

/**
 * Fires after the component is moved.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>x:ext.form.Number</code>
 The new x position
 *       </li>

 *       <li>
 *           <code>y:ext.form.Number</code>
 The new y position
 *       </li>

 * </ul>
 */
[Event(name="move")]

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
 * Fires after the component markup is <a href="output/Ext.lib.Component.html#Ext.lib.Component-rendered">rendered</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="render")]

/**
 * Fires after the component is resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>adjWidth:ext.form.Number</code>
 The box-adjusted width that was set
 *       </li>

 *       <li>
 *           <code>adjHeight:ext.form.Number</code>
 The box-adjusted height that was set
 *       </li>

 *       <li>
 *           <code>rawWidth:ext.form.Number</code>
 The width that was originally specified
 *       </li>

 *       <li>
 *           <code>rawHeight:ext.form.Number</code>
 The height that was originally specified
 *       </li>

 * </ul>
 */
[Event(name="resize")]

/**
 * Fires after the component is shown when calling the <a href="output/Ext.lib.Component.html#Ext.lib.Component-show">show</a> method.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 * </ul>
 */
[Event(name="show")]


/**
 * Shared Component class
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.component
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#cls-Ext.lib.Component Ext JS source
 */
[Native]
public class Component extends Observable {

  /**
   *
   *
   * @see ext.config.component
   */
  public function Component() {
    super();
  }

  /**
   Read-only property indicating whether or not the component can be dragged
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#prop-Ext.lib.Component-draggable Ext JS source
   */
  public native function get draggable():Boolean;

  /**
   * @private
   */
  public native function set draggable(value:Boolean):void;

  /**
   Read-only property indicating whether or not the component has been rendered.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#prop-Ext.lib.Component-rendered Ext JS source
   */
  public native function get rendered():Boolean;

  /**
   * @private
   */
  public native function set rendered(value:Boolean):void;

  /**
   The base CSS class to apply to this components's element. This will also be prepended to elements within this component like Panel's body will get a class x-panel-body. This means that if you create a subclass of Panel, and you want it to get all the Panels styling for the element and the body, you leave the baseCls x-panel and use componentCls to add specific styling for this component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get baseCls():String;

  /**
   Specifies the border for this component. The border can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get border():*;

  /**
   An optional extra CSS class that will be added to this component's Element (defaults to ''). This can be useful for adding customized styles to the component or any of its children using standard CSS rules.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cls():String;

  /**
   CSS Class to be added to a components root level element to give distinction to it via styling.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get componentCls():String;

  /**
   <br/><p>The sizing and positioning of the component Elements is the responsibility of the Component's layout manager which creates and manages the type of layout specific to the component.</p><p>If the <a href="output/Ext.lib.Component.html#Ext.lib.Component-layout">layout</a> configuration is not explicitly specified for a general purpose compopnent the <a href="Ext.layout.AutoComponentLayout.html">default layout manager</a> will be used.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get componentLayout():*;

  /**
   Optional. Specify an existing HTML element, or the <code>id</code> of an existing HTML element to use as the content for this component.
   <ul><li><b>Description</b> : <div class="sub-desc">This config option is used to take an existing HTML element and place it in the layout element of a new component (it simply moves the specified DOM element <i>after the Component is rendered</i> to use as the content.</div></li><li><b>Notes</b> : <div class="sub-desc">The specified HTML element is appended to the layout element of the component <i>after any configured <a href="output/Ext.lib.Component.html#Ext.lib.Component-html">HTML</a> has been inserted</i>, and so the document will not contain this element at the time the <a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a> event is fired.</div><div class="sub-desc">The specified HTML element used will not participate in any <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> scheme that the Component may use. It is just HTML. Layouts operate on child <code><b><a href="output/Ext.Container.html#Ext.Container-items">items</a></b></code>.</div><div class="sub-desc">Add either the <code>x-hidden</code> or the <code>x-hide-display</code> CSS class to prevent a brief flicker of the content before it is rendered to the panel.</div></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get contentEl():String;

  /**
   The initial set of data to apply to the <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-tpl">tpl</a></code> to update the content area of the Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get data():*;

  /**
   Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   CSS class to add when the Component is disabled. Defaults to 'x-item-disabled'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabledCls():String;

  /**
   Create the Component as a floating and use absolute positioning. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get floating():Boolean;

  /**
   Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hidden():Boolean;

  /**
   An HTML fragment, or a <a href="Ext.DomHelper.html">DomHelper</a> specification to use as the layout element content (defaults to ''). The HTML content is added after the component is rendered, so the document will not contain this HTML at the time the <a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a> event is fired. This content is inserted into the body <i>before</i> any configured <a href="output/Ext.lib.Component.html#Ext.lib.Component-contentEl">contentEl</a> is appended.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get html():*;

  /**
   Specifies the margin for this component. The margin can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get margin():*;

  /**
   The maximum value in pixels which this Component will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxHeight():ext.form.Number;

  /**
   The maximum value in pixels which this Component will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxWidth():ext.form.Number;

  /**
   The minimum value in pixels which this Component will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minHeight():ext.form.Number;

  /**
   The minimum value in pixels which this Component will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minWidth():ext.form.Number;

  /**
   Specifies the padding for this component. The padding can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get padding():*;

  /**
   An object or array of objects that will provide custom functionality for this component. The only requirement for a valid plugin is that it contain an init method that accepts a reference of type Ext.Component. When a component is created, if any plugins are available, the component will call the init method on each plugin, passing a reference to itself. Each plugin can then call methods or respond to events on the component as needed to provide its functionality.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get plugins():*;

  /**
   An object containing properties specifying <a href="Ext.DomQuery.html">DomQuery</a> selectors which identify child elements created by the render process.
   <p>After the Component's internal structure is rendered according to the <a href="renderTpl.html">renderTpl</a>, this object is iterated through, and the found Elements are added as properties to the Component using the <code>renderSelector</code> property name.</p><p>For example, a Component which rendered an image, and description into its element might use the following properties coded into its prototype:</p><pre><code>renderTpl: '<img class="x-image-component-img" src="{imageUrl}" alt=""/></code></pre><div class="x-image-component-desc"><code>{description}</code></div><pre>',

   renderSelectors: {
   image: 'img.x-image-component-img',
   descEl: 'div.x-image-component-desc'
   }
   </pre><p><code>After rendering, the Component would have a property <code>image</code> referencing its child <code>img</code> Element, and a property <code>descEl</code> referencing the <code>div</code> Element which contains the description.</code></p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get renderSelectors():Object;

  /**
   Specify the id of the element, a DOM element or an existing Element that this component will be rendered into.
   <div><ul><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">Do <u>not</u> use this option if the Component is to be a child item of a <a href="Ext.Container.html">Container</a>. It is the responsibility of the <a href="Ext.Container.html">Container</a>'s <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a> to render and manage its child items.</div><div class="sub-desc">When using this config, a call to render() is not required.</div></div></li></ul></div><p>See <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a></code> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get renderTo():*;

  /**
   An <a href="Ext.XTemplate.html">XTemplate</a> used to create the internal structure inside this Component's encapsulating <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>.
   <p>You do not normally need to specify this. For the base classes <a href="Ext.Component.html">Ext.Component</a> and <a href="Ext.Container.html">Ext.Container</a>, this defaults to <b><code>null</code></b> which means that they will be initially rendered with no internal structure; they render their <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a> empty. The more specialized ExtJS and Touch classes which use a more complex DOM structure, provide their own template definitions.</p><p>This is intended to allow the developer to create application-specific utility Components with customized internal structure.</p><p>Upon rendering, any created child elements may be automatically imported into object properties using the <a href="output/Ext.lib.Component.html#Ext.lib.Component-renderSelectors">renderSelectors</a> option.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get renderTpl():*;

  /**
   A custom style specification to be applied to this component's Element. Should be a valid argument to <a href="output/Ext.Element.html#Ext.Element-applyStyles">Ext.Element.applyStyles</a>. <pre><code>       new Ext.Panel({
   title: 'Some Title',
   renderTo: Ext.getBody(),
   width: 400, height: 300,
   layout: 'form',
   items: [{
   xtype: 'textareafield',
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get style():String;

  /**
   The class that is added to the content target when you set styleHtmlContent to true. Defaults to 'x-html'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get styleHtmlCls():String;

  /**
   True to automatically style the html inside the content target of this component (body for panels). Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get styleHtmlContent():String;

  /**
   An <a href="Ext.Template.html">Ext.Template</a>, <a href="Ext.XTemplate.html">Ext.XTemplate</a> or an array of strings to form an Ext.XTemplate. Used in conjunction with the <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-data">data</a></code> and <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-tplWriteMode">tplWriteMode</a></code> configurations.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tpl():*;

  /**
   The Ext.(X)Template method to use when updating the content area of the Component. Defaults to <code>'overwrite'</code> (see <code><a href="output/Ext.XTemplate.html#Ext.XTemplate-overwrite">Ext.XTemplate.overwrite</a></code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tplWriteMode():String;

  /**
   A set of predefined ui styles for individual components. Most components support 'light' and 'dark'. Extra string added to the baseCls with an extra '-'. <pre><code>     new Ext.Panel({
   title: 'Some Title',
   baseCls: 'x-component'
   ui: 'green'
   });
   </code></pre><p>The ui configuration in this example would add 'x-component-green' as an additional class.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get ui():String;

  /**
   * Adds a CSS class to the top level element representing this component.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-addCls Ext JS source
   */
  public native function addCls():void;

  /**
   * Sets references to elements inside the component. E.g body -&gt; x-panel-body
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-applyRenderSelectors Ext JS source
   */
  public native function applyRenderSelectors():void;

  /**
   * Destroys the Component.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Disable the component.
   *
   * @param silent Passing true, will supress the 'disable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-disable Ext JS source
   */
  public native function disable(silent:Boolean):void;

  /**
   * This method needs to be called whenever you change something on this component that requires the components layout to be recalculated. An example is adding, showing or hiding a docked item to a Panel, or changing the label of a form field. After a component layout, the container layout will automatically be run. So you could be on the safe side and always call doComponentLayout instead of doLayout.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-doComponentLayout Ext JS source
   */
  public native function doComponentLayout():ext.Container;

  /**
   * Enable the component
   *
   * @param silent Passing false will supress the 'enable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-enable Ext JS source
   */
  public native function enable(silent:Boolean):void;

  /**
   * Provides the link for Observable's fireEvent method to bubble up the ownership hierarchy.
   *
   * @return the Container which owns this Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getBubbleTarget Ext JS source
   */
  public native function getBubbleTarget():ext.Container;

  /**
   * Retrieves the top level element representing this component.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getEl Ext JS source
   */
  public native function getEl():void;

  /**
   * Gets the current height of the component's underlying element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getHeight Ext JS source
   */
  public native function getHeight():ext.form.Number;

  /**
   * Retrieves the id of this component. Will autogenerate an id if one has not already been set.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getId Ext JS source
   */
  public native function getId():void;

  /**
   * This function takes the position argument passed to onRender and returns a DOM element that you can use in the insertBefore.
   *
   * @param position Index, element id or element you want to put this component before.
   * @return DOM element that you can use in the insertBefore
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getInsertPosition Ext JS source
   */
  public native function getInsertPosition(position:*):HTMLElement;

  /**
   * Gets the current size of the component's underlying element.
   *
   * @return An object containing the element's size {width: (element width), height: (element height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getSize Ext JS source
   */
  public native function getSize():Object;

  /**
   * This is used to determine where to insert the 'html', 'contentEl' and 'items' in this component.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getTargetEl Ext JS source
   */
  public native function getTargetEl():void;

  /**
   * Gets the current width of the component's underlying element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getWidth Ext JS source
   */
  public native function getWidth():ext.form.Number;

  /**
   * Returns this Component's xtype hierarchy as a slash-delimited string. For a list of all available xtypes, see the <a href="Ext.Component.html">Ext.Component</a> header.
   <p style="font-weight: bold">If using your own subclasses, be aware that a Component must register its own xtype to participate in determination of inherited xtypes.</p><p>Example usage:</p><pre><code>var t = new Ext.form.Text();
   alert(t.getXTypes());  // alerts 'component/field/textfield'
   </code></pre>
   *
   * @return The xtype hierarchy string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-getXTypes Ext JS source
   */
  public native function getXTypes():String;

  /**
   * Creates an array of class names from the configurations to add to this Component's <code>el</code> on render.
   <p>Private, but (possibly) used by ComponentQuery for selection by class name if Component is not rendered.</p>
   *
   * @return An array of class names with which the Component's element will be rendered.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initCls Ext JS source
   */
  public native function initCls():Array;

  /**
   * Adds ctCls to container.
   *
   * @return The initialized container
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initContainer Ext JS source
   */
  public native function initContainer():Element;

  /**
   * Initializes this components contents. It checks for the properties html, contentEl and tpl/data.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initContent Ext JS source
   */
  public native function initContent():void;

  /**
   * Initialized the renderData to be used when rendering the renderTpl.
   *
   * @return Object with keys and values that are going to be applied to the renderTpl
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initRenderData Ext JS source
   */
  public native function initRenderData():Object;

  /**
   * Initializes the renderTpl.
   *
   * @return The renderTpl XTemplate instance.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initRenderTpl Ext JS source
   */
  public native function initRenderTpl():XTemplate;

  /**
   * Function description
   *
   * @return A CSS style string with style, padding, margin and border.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-initStyles Ext JS source
   */
  public native function initStyles():String;

  /**
   * Method to determine whether this Component is currently disabled.
   *
   * @return the disabled state of this Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isDisabled Ext JS source
   */
  public native function isDisabled():Boolean;

  /**
   * Method to determine whether this Component is draggable.
   *
   * @return the draggable state of this component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isDraggable Ext JS source
   */
  public native function isDraggable():Boolean;

  /**
   * Method to determine whether this Component is droppable.
   *
   * @return the droppable state of this component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isDroppable Ext JS source
   */
  public native function isDroppable():Boolean;

  /**
   * Method to determine whether this Component is floating.
   *
   * @return the floating state of this component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isFloating Ext JS source
   */
  public native function isFloating():Boolean;

  /**
   * Method to determine whether this Component is currently set to hidden.
   *
   * @return the hidden state of this Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isHidden Ext JS source
   */
  public native function isHidden():Boolean;

  /**
   * Returns true if this component is visible.
   *
   * @return True if this component is visible, false otherwise.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isVisible Ext JS source
   */
  public native function isVisible():Boolean;

  /**
   * Tests whether or not this Component is of a specific xtype. This can test whether this Component is descended from the xtype (default) or whether it is directly of the xtype specified (shallow = true).
   <p style="font-weight: bold">If using your own subclasses, be aware that a Component must register its own xtype to participate in determination of inherited xtypes.</p><p>For a list of all available xtypes, see the <a href="Ext.Component.html">Ext.Component</a> header.</p><p>Example usage:</p><pre><code>var t = new Ext.form.Text();
   var isText = t.isXType('textfield');        // true
   var isBoxSubclass = t.isXType('field');       // true, descended from Ext.form.Field
   var isBoxInstance = t.isXType('field', true); // false, not a direct Ext.form.Field instance
   </code></pre>
   *
   * @param xtype The xtype to check for this Component
   * @param shallow False to check whether this Component is descended from the xtype (this is the default), or true to check whether this Component is directly of the specified xtype.
   * @return True if this component descends from the specified xtype, false otherwise.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-isXType Ext JS source
   */
  public native function isXType(xtype:String, shallow:Boolean = false):Boolean;

  /**
   * Returns the next sibling of this Component.
   <p>Optionally selects the next sibling which matches the passed <a href="Ext.ComponentQuery.html">ComponentQuery</a> selector.</p><p>May also be refered to as <code><b>prev()</b></code></p>
   *
   * @param selector A <a href="Ext.ComponentQuery.html">ComponentQuery</a> selector to filter the following items.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-nextSibling Ext JS source
   */
  public native function nextSibling(selector:*):void;

  /**
   *
   *
   * @param container Container which holds the component
   * @param pos Position at which the component was added
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-onAdded Ext JS source
   */
  public native function onAdded(container:ext.Container, pos:Number):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-onRemoved Ext JS source
   */
  public native function onRemoved():void;

  /**
   * Returns the previous sibling of this Component.
   <p>Optionally selects the previous sibling which matches the passed <a href="Ext.ComponentQuery.html">ComponentQuery</a> selector.</p><p>May also be refered to as <code><b>prev()</b></code></p>
   *
   * @param selector A <a href="Ext.ComponentQuery.html">ComponentQuery</a> selector to filter the preceding items.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-previousSibling Ext JS source
   */
  public native function previousSibling(selector:*):void;

  /**
   * Removes a CSS class from the top level element representing this component.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-removeCls Ext JS source
   */
  public native function removeCls():void;

  /**
   * Enable or disable the component.
   *
   * @param disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setDisabled Ext JS source
   */
  public native function setDisabled(disabled:Boolean):void;

  /**
   * Sets the dock position of this component in its parent panel. Note that this only has effect if this item is part of the dockedItems collection of a parent that has a DockLayout (note that any Panel has a DockLayout by default)
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setDocked Ext JS source
   */
  public native function setDocked():Component;

  /**
   * Sets the height of the component. This method fires the <a href="output/Ext.lib.Component.html#Ext.lib.Component-resize">resize</a> event.
   *
   * @param height The new height to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in the <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style.</li><li><i>undefined</i> to leave the height unchanged.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setHeight Ext JS source
   */
  public native function setHeight(height:ext.form.Number):ext.Component;

  /**
   * This method allows you to show or hide a LoadMask on top of this component.
   *
   * @param load True to show the default LoadMask or a config object that will be passed to the LoadMask constructor. False to hide the current LoadMask.
   * @param targetEl True to mask the targetEl of this Component instead of the this.el. For example, setting this to true on a Panel will cause only the body to be masked. (defaults to false)
   * @return The LoadMask instance that has just been shown.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setLoading Ext JS source
   */
  public native function setLoading(load:*, targetEl:Boolean):LoadMask;

  /**
   * Sets the left and top of the component. To set the page XY position instead, use <a href="output/Ext.lib.Component.html#Ext.lib.Component-setPagePosition">setPagePosition</a>. This method fires the <a href="output/Ext.lib.Component.html#Ext.lib.Component-move">move</a> event.
   *
   * @param left The new left
   * @param top The new top
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setPosition Ext JS source
   */
  public native function setPosition(left:ext.form.Number, top:ext.form.Number):ext.Component;

  /**
   * Sets the width and height of this Component. This method fires the <a href="output/Ext.lib.Component.html#Ext.lib.Component-resize">resize</a> event. This method can accept either width and height as separate arguments, or you can pass a size object like <code>{width:10, height:20}</code>.
   *
   * @param width The new width to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in the <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style.</li><li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li><li><code>undefined</code> to leave the width unchanged.</li></ul></div>
   * @param height The new height to set (not required if a size object is passed as the first arg). This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in the <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li><li><code>undefined</code> to leave the height unchanged.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setSize Ext JS source
   */
  public native function setSize(width:*, height:*):ext.Component;

  /**
   * Convenience function to hide or show this component by boolean.
   *
   * @param visible True to show, false to hide
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setVisible Ext JS source
   */
  public native function setVisible(visible:Boolean):ext.Component;

  /**
   * Sets the width of the component. This method fires the <a href="output/Ext.lib.Component.html#Ext.lib.Component-resize">resize</a> event.
   *
   * @param width The new width to setThis may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in the <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-setWidth Ext JS source
   */
  public native function setWidth(width:ext.form.Number):ext.Component;

  /**
   * Walks up the <code>ownerCt</code> axis looking for an ancestor Container which matches the passed simple selector.
   <p>Example:</p><pre><code>var owningTabContainer = grid.up('tabcontainer');
   </code></pre>
   *
   * @param selector The simple selector to test.
   * @return The matching ancestor Container (or <code>undefined</code> if no match was found).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-up Ext JS source
   */
  public native function up(selector:String = null):ext.Container;

  /**
   * Update the content area of a component.
   *
   * @param htmlOrData If this component has been configured with a template via the tpl config then it will use this argument as data to populate the template. If this component was not configured with a template, the components content area will be updated via Ext.Element update
   * @param loadScripts Only legitimate when using the html configuration. Defaults to false
   * @param callback Only legitimate when using the html configuration. Callback to execute when scripts have finished loading
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component.html#method-Ext.lib.Component-update Ext JS source
   */
  public native function update(htmlOrData:*, loadScripts:Boolean = false, callback:Function = null):void;

}
}
    