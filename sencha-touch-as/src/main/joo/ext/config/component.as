package ext.config {

import joo.JavaScriptObject;


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
 * <p>This class represents the xtype 'component' and serves as a
 * typed config object for constructor of class Component.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Component
 */
[ExtConfig(target="ext.Component", xtype="component")]
public class component extends libcomponent {

  public function component(config:Object = null) {

    super(config);
  }


  /**
   Center the Component. Defaults to false.
   */
  public native function get centered():Boolean;

  /**
   * @private
   */
  public native function set centered(value:Boolean):void;

  /**
   The class that is being added to this component when its floating. (defaults to x-floating)
   */
  public native function get floatingCls():Boolean;

  /**
   * @private
   */
  public native function set floatingCls(value:Boolean):void;

  /**
   Force the component to take up 100% width and height available. Defaults to false. Setting this configuration immediately sets the monitorOrientation config to true. Setting this to true will render the component instantly.
   */
  public native function get fullscreen():Boolean;

  /**
   * @private
   */
  public native function set fullscreen(value:Boolean):void;

  /**
   True to automatically bind a tap listener to the mask that hides the window. Defaults to true. Note: if you set this property to false you have to programmaticaly hide the overlay.
   */
  public native function get hideOnMaskTap():Boolean;

  /**
   * @private
   */
  public native function set hideOnMaskTap(value:Boolean):void;

  /**
   Set this to true to automatically relayout this component on orientation change. This property is set to true by default if a component is floating unless you specifically set this to false. Also note that you dont have to set this property to true if this component is a child of a fullscreen container, since fullscreen components are also laid out automatically on orientation change. Defaults to <tt>null</tt>
   */
  public native function get layoutOnOrientationChange():Boolean;

  /**
   * @private
   */
  public native function set layoutOnOrientationChange(value:Boolean):void;

  /**
   True to make the Component modal and mask everything behind it when displayed, false to display it without restricting access to other UI elements (defaults to false).
   */
  public native function get modal():Boolean;

  /**
   * @private
   */
  public native function set modal(value:Boolean):void;

  /**
   Monitor Orientation change
   */
  public native function get monitorOrientation():Boolean;

  /**
   * @private
   */
  public native function set monitorOrientation(value:Boolean):void;

  /**
   Configure the component to be scrollable. Acceptable values are: <ul><li>'horizontal', 'vertical', 'both' to enabling scrolling for that direction.</li><li>A <a href="Ext.util.Scroller.html">Scroller</a> configuration.</li><li>false to explicitly disable scrolling.</li></ul>Enabling scrolling immediately sets the monitorOrientation config to true (for <a href="Ext.Panel.html">Panel</a>)
   */
  public native function get scroll():*;

  /**
   * @private
   */
  public native function set scroll(value:*):void;

  /**
   The type of animation you want to use when this component is shown. If you set this this hide animation will automatically be the opposite.
   */
  public native function get showAnimation():*;

  /**
   * @private
   */
  public native function set showAnimation(value:*):void;

  /**
   True to stop the event that fires when you click outside the floating component. Defalts to true.
   */
  public native function get stopMaskTapEvent():Boolean;

  /**
   * @private
   */
  public native function set stopMaskTapEvent(value:Boolean):void;


}
}
    