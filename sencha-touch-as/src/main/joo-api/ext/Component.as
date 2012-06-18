package ext {

import ext.config.component;
import ext.lib.Component;

/**
 * Fires before the orientation changes, if the monitorOrientation configuration is set to true. Return false to stop the orientation change.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Panel</code>

 *       </li>

 *       <li>
 *           <code>orientation:String</code>
 'landscape' or 'portrait'
 *       </li>

 *       <li>
 *           <code>width:ext.form.Number</code>

 *       </li>

 *       <li>
 *           <code>height:ext.form.Number</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeorientationchange")]

/**
 * Fires when the orientation changes, if the monitorOrientation configuration is set to true.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Panel</code>

 *       </li>

 *       <li>
 *           <code>orientation:String</code>
 'landscape' or 'portrait'
 *       </li>

 *       <li>
 *           <code>width:ext.form.Number</code>

 *       </li>

 *       <li>
 *           <code>height:ext.form.Number</code>

 *       </li>

 * </ul>
 */
[Event(name="orientationchange")]


/**
 * Base class for all Ext components. All subclasses of Component may participate in the automated Ext component lifecycle of creation, rendering and destruction which is provided by the <a href="Ext.Container.html">Container</a> class. Components may be added to a Container through the <a href="output/Ext.Container.html#Ext.Container-items">items</a> config option at the time the Container is created, or they may be added dynamically via the <a href="output/Ext.Container.html#Ext.Container-add">add</a> method.
 <p>The Component base class has built-in support for basic hide/show and enable/disable behavior.</p><p>All Components are registered with the <a href="Ext.ComponentMgr.html">Ext.ComponentMgr</a> on construction so that they can be referenced at any time via <a href="output/Ext.html#Ext-getCmp">Ext.getCmp</a>, passing the <a href="output/Ext.Component.html#Ext.Component-id">id</a>.</p><p>All user-developed visual widgets that are required to participate in automated lifecycle and size management should subclass Component (or <a href="Ext.BoxComponent.html">Ext.BoxComponent</a> if managed box model handling is required, ie height and width management).</p><p>See the <a href="http://extjs.com/learn/Tutorial:Creating_new_UI_controls">Creating new UI controls</a> tutorial for details on how and to either extend or augment ExtJs base classes to create custom Components.</p><p>Every component has a specific xtype, which is its Ext-specific type name, along with methods for checking the xtype like <a href="output/Ext.Component.html#Ext.Component-getXType">getXType</a> and <a href="output/Ext.Component.html#Ext.Component-isXType">isXType</a>. This is the list of all valid xtypes:</p><h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Component.html#Ext.Component-fullscreen">fullscreen</a></li></ul><pre>xtype            Class
 -------------    ------------------
 button           <a href="Ext.Button.html">Ext.Button</a>
 component        <a href="Ext.Component.html">Ext.Component</a>
 container        <a href="Ext.Container.html">Ext.Container</a>
 dataview         <a href="Ext.DataView.html">Ext.DataView</a>
 panel            <a href="Ext.Panel.html">Ext.Panel</a>
 slider           <a href="Ext.form.Slider.html">Ext.form.Slider</a>
 toolbar          <a href="Ext.Toolbar.html">Ext.Toolbar</a>
 spacer           <a href="Ext.Spacer.html">Ext.Spacer</a>
 tabpanel         <a href="Ext.TabPanel.html">Ext.TabPanel</a>

 Form components
 ---------------------------------------
 formpanel        <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>
 checkboxfield    <a href="Ext.form.Checkbox.html">Ext.form.Checkbox</a>
 selectfield      <a href="Ext.form.Select.html">Ext.form.Select</a>
 field            <a href="Ext.form.Field.html">Ext.form.Field</a>
 fieldset         <a href="Ext.form.FieldSet.html">Ext.form.FieldSet</a>
 hiddenfield      <a href="Ext.form.Hidden.html">Ext.form.Hidden</a>
 numberfield      <a href="Ext.form.Number.html">Ext.form.Number</a>
 radiofield       <a href="Ext.form.Radio.html">Ext.form.Radio</a>
 textareafield    <a href="Ext.form.TextArea.html">Ext.form.TextArea</a>
 textfield        <a href="Ext.form.Text.html">Ext.form.Text</a>
 togglefield      <a href="Ext.form.Toggle.html">Ext.form.Toggle</a>
 </pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'component' / the EXML element &lt;component>.</p>
 * @see ext.config.component
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#cls-Ext.Component Ext JS source
 */
[Native]
public class Component extends ext.lib.Component {

  /**
   *
   *
   * @param config The configuration options may be specified as either: <div class="mdetail-params"><ul><li><b>an element</b> : <p class="sub-desc">it is set as the internal element and its id used as the component id</p></li><li><b>a string</b> : <p class="sub-desc">it is assumed to be the id of an existing element and is used as the component id</p></li><li><b>anything else</b> : <p class="sub-desc">it is assumed to be a standard config object and is applied to the component</p></li></ul></div>
   * @see ext.config.component
   */
  public function Component(config:component) {
    super();
  }

  /**
   Center the Component. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get centered():Boolean;

  /**
   The class that is being added to this component when its floating. (defaults to x-floating)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get floatingCls():Boolean;

  /**
   Force the component to take up 100% width and height available. Defaults to false. Setting this configuration immediately sets the monitorOrientation config to true. Setting this to true will render the component instantly.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get fullscreen():Boolean;

  /**
   True to automatically bind a tap listener to the mask that hides the window. Defaults to true. Note: if you set this property to false you have to programmaticaly hide the overlay.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideOnMaskTap():Boolean;

  /**
   Set this to true to automatically relayout this component on orientation change. This property is set to true by default if a component is floating unless you specifically set this to false. Also note that you dont have to set this property to true if this component is a child of a fullscreen container, since fullscreen components are also laid out automatically on orientation change. Defaults to <tt>null</tt>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get layoutOnOrientationChange():Boolean;

  /**
   True to make the Component modal and mask everything behind it when displayed, false to display it without restricting access to other UI elements (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get modal():Boolean;

  /**
   Monitor Orientation change
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get monitorOrientation():Boolean;

  /**
   Configure the component to be scrollable. Acceptable values are: <ul><li>'horizontal', 'vertical', 'both' to enabling scrolling for that direction.</li><li>A <a href="Ext.util.Scroller.html">Scroller</a> configuration.</li><li>false to explicitly disable scrolling.</li></ul>Enabling scrolling immediately sets the monitorOrientation config to true (for <a href="Ext.Panel.html">Panel</a>)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scroll():*;

  /**
   The type of animation you want to use when this component is shown. If you set this this hide animation will automatically be the opposite.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get showAnimation():*;

  /**
   True to stop the event that fires when you click outside the floating component. Defalts to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get stopMaskTapEvent():Boolean;

  /**
   * Hide the component
   *
   * @param animation Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-hide Ext JS source
   */
  public native function hide(animation:* = null):void;

  /**
   * Show this component centered of its parent or the window This only applies when the component is floating.
   *
   * @param centered True to center, false to remove centering
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-setCentered Ext JS source
   */
  public native function setCentered(centered:Boolean):void;

  /**
   * Sets a Component as draggable.
   *
   * @param draggable On first call, this can be a config object for <a href="Ext.util.Draggable.html">Ext.util.Draggable</a>. Afterwards, if set to false, the existing draggable object will be disabled
   * @param autoShow
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-setDraggable Ext JS source
   */
  public native function setDraggable(draggable:*, autoShow:Boolean):void;

  /**
   * Sets a Component as floating.
   *
   * @param floating
   * @param autoShow
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-setFloating Ext JS source
   */
  public native function setFloating(floating:Boolean, autoShow:Boolean):void;

  /**
   * Sets the orientation for the Panel.
   *
   * @param orientation 'landscape' or 'portrait'
   * @param width New width of the Panel.
   * @param height New height of the Panel.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-setOrientation Ext JS source
   */
  public native function setOrientation(orientation:String, width:*, height:*):void;

  /**
   * Sets a Component as scrollable.
   *
   * @param config Acceptable values are a Ext.Scroller configuration, 'horizontal', 'vertical', 'both', and false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-setScrollable Ext JS source
   */
  public native function setScrollable(config:*):void;

  /**
   * Show the component.
   *
   * @param animation Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-show Ext JS source
   */
  public native function show(animation:* = null):void;

  /**
   * Show this component relative another component or element.
   *
   * @param alignTo Element or Component
   * @param animation
   * @param allowOnSide true to allow this element to be aligned on the left or right.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Component1.html#method-Ext.Component-showBy Ext JS source
   */
  public native function showBy(alignTo:*, animation:*, allowOnSide:Boolean):void;

}
}
    