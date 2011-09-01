
package ext.config {

import ext.form.Number;


/**
 * Shared Component class
 *
 * <p>This class represents the xtype 'libcomponent' and serves as a
 * typed config object for constructor of class Component.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.lib.Component
 */
[ExtConfig(target="ext.lib.Component", xtype="libcomponent")]
public class libcomponent extends ext.config.observable {

  public function libcomponent(config:Object = null) {

    super(config);
  }

  
  
  /**
The base CSS class to apply to this components's element. This will also be prepended to elements within this component like Panel's body will get a class x-panel-body. This means that if you create a subclass of Panel, and you want it to get all the Panels styling for the element and the body, you leave the baseCls x-panel and use componentCls to add specific styling for this component.
   */      
  public native function get baseCls():String;

  /**
   * @private
   */
   public native function set baseCls(value:String):void;
      
  /**
Specifies the border for this component. The border can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   */      
  public native function get border():*;

  /**
   * @private
   */
   public native function set border(value:*):void;
      
  /**
An optional extra CSS class that will be added to this component's Element (defaults to ''). This can be useful for adding customized styles to the component or any of its children using standard CSS rules.
   */      
  public native function get cls():String;

  /**
   * @private
   */
   public native function set cls(value:String):void;
      
  /**
CSS Class to be added to a components root level element to give distinction to it via styling.
   */      
  public native function get componentCls():String;

  /**
   * @private
   */
   public native function set componentCls(value:String):void;
      
  /**
<br/><p>The sizing and positioning of the component Elements is the responsibility of the Component's layout manager which creates and manages the type of layout specific to the component.</p><p>If the <a href="output/Ext.lib.Component.html#Ext.lib.Component-layout">layout</a> configuration is not explicitly specified for a general purpose compopnent the <a href="Ext.layout.AutoComponentLayout.html">default layout manager</a> will be used.</p>
   */      
  public native function get componentLayout():*;

  /**
   * @private
   */
   public native function set componentLayout(value:*):void;
      
  /**
Optional. Specify an existing HTML element, or the <code>id</code> of an existing HTML element to use as the content for this component.
<ul><li><b>Description</b> : <div class="sub-desc">This config option is used to take an existing HTML element and place it in the layout element of a new component (it simply moves the specified DOM element <i>after the Component is rendered</i> to use as the content.</div></li><li><b>Notes</b> : <div class="sub-desc">The specified HTML element is appended to the layout element of the component <i>after any configured <a href="output/Ext.lib.Component.html#Ext.lib.Component-html">HTML</a> has been inserted</i>, and so the document will not contain this element at the time the <a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a> event is fired.</div><div class="sub-desc">The specified HTML element used will not participate in any <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> scheme that the Component may use. It is just HTML. Layouts operate on child <code><b><a href="output/Ext.Container.html#Ext.Container-items">items</a></b></code>.</div><div class="sub-desc">Add either the <code>x-hidden</code> or the <code>x-hide-display</code> CSS class to prevent a brief flicker of the content before it is rendered to the panel.</div></li></ul>
   */      
  public native function get contentEl():String;

  /**
   * @private
   */
   public native function set contentEl(value:String):void;
      
  /**
The initial set of data to apply to the <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-tpl">tpl</a></code> to update the content area of the Component.
   */      
  public native function get data():*;

  /**
   * @private
   */
   public native function set data(value:*):void;
      
  /**
Defaults to false.
   */      
  public native function get disabled():Boolean;

  /**
   * @private
   */
   public native function set disabled(value:Boolean):void;
      
  /**
CSS class to add when the Component is disabled. Defaults to 'x-item-disabled'.
   */      
  public native function get disabledCls():String;

  /**
   * @private
   */
   public native function set disabledCls(value:String):void;
      
  /**
Allows the component to be dragged via the touch event.
   */      
  public native function get draggable():Boolean;

  /**
   * @private
   */
   public native function set draggable(value:Boolean):void;
      
  /**
Create the Component as a floating and use absolute positioning. Defaults to false.
   */      
  public native function get floating():Boolean;

  /**
   * @private
   */
   public native function set floating(value:Boolean):void;
      
  /**
The height of this component in pixels.
   */      
  public native function get height():ext.form.Number;

  /**
   * @private
   */
   public native function set height(value:ext.form.Number):void;
      
  /**
Defaults to false.
   */      
  public native function get hidden():Boolean;

  /**
   * @private
   */
   public native function set hidden(value:Boolean):void;
      
  /**
An HTML fragment, or a <a href="Ext.DomHelper.html">DomHelper</a> specification to use as the layout element content (defaults to ''). The HTML content is added after the component is rendered, so the document will not contain this HTML at the time the <a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a> event is fired. This content is inserted into the body <i>before</i> any configured <a href="output/Ext.lib.Component.html#Ext.lib.Component-contentEl">contentEl</a> is appended.
   */      
  public native function get html():*;

  /**
   * @private
   */
   public native function set html(value:*):void;
      
  /**
Specifies the margin for this component. The margin can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   */      
  public native function get margin():*;

  /**
   * @private
   */
   public native function set margin(value:*):void;
      
  /**
The maximum value in pixels which this Component will set its height to.
<p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */      
  public native function get maxHeight():ext.form.Number;

  /**
   * @private
   */
   public native function set maxHeight(value:ext.form.Number):void;
      
  /**
The maximum value in pixels which this Component will set its width to.
<p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */      
  public native function get maxWidth():ext.form.Number;

  /**
   * @private
   */
   public native function set maxWidth(value:ext.form.Number):void;
      
  /**
The minimum value in pixels which this Component will set its height to.
<p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */      
  public native function get minHeight():ext.form.Number;

  /**
   * @private
   */
   public native function set minHeight(value:ext.form.Number):void;
      
  /**
The minimum value in pixels which this Component will set its width to.
<p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */      
  public native function get minWidth():ext.form.Number;

  /**
   * @private
   */
   public native function set minWidth(value:ext.form.Number):void;
      
  /**
Specifies the padding for this component. The padding can be a single numeric value to apply to all sides or it can be a CSS style specification for each style, for example: '10 5 3 10'.
   */      
  public native function get padding():*;

  /**
   * @private
   */
   public native function set padding(value:*):void;
      
  /**
An object or array of objects that will provide custom functionality for this component. The only requirement for a valid plugin is that it contain an init method that accepts a reference of type Ext.Component. When a component is created, if any plugins are available, the component will call the init method on each plugin, passing a reference to itself. Each plugin can then call methods or respond to events on the component as needed to provide its functionality.
   */      
  public native function get plugins():*;

  /**
   * @private
   */
   public native function set plugins(value:*):void;
      
  /**
An object containing properties specifying <a href="Ext.DomQuery.html">DomQuery</a> selectors which identify child elements created by the render process.
<p>After the Component's internal structure is rendered according to the <a href="renderTpl.html">renderTpl</a>, this object is iterated through, and the found Elements are added as properties to the Component using the <code>renderSelector</code> property name.</p><p>For example, a Component which rendered an image, and description into its element might use the following properties coded into its prototype:</p><pre><code>renderTpl: '<img class="x-image-component-img" src="{imageUrl}" alt=""/></code></pre><div class="x-image-component-desc"><code>{description}</code></div><pre>',

renderSelectors: {
    image: 'img.x-image-component-img',
    descEl: 'div.x-image-component-desc'
}
</pre><p><code>After rendering, the Component would have a property <code>image</code> referencing its child <code>img</code> Element, and a property <code>descEl</code> referencing the <code>div</code> Element which contains the description.</code></p>
   */      
  public native function get renderSelectors():Object;

  /**
   * @private
   */
   public native function set renderSelectors(value:Object):void;
      
  /**
Specify the id of the element, a DOM element or an existing Element that this component will be rendered into.
<div><ul><li><b>Notes</b> : <div style="margin-left: 2em"><div class="sub-desc">Do <u>not</u> use this option if the Component is to be a child item of a <a href="Ext.Container.html">Container</a>. It is the responsibility of the <a href="Ext.Container.html">Container</a>'s <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a> to render and manage its child items.</div><div class="sub-desc">When using this config, a call to render() is not required.</div></div></li></ul></div><p>See <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-render">render</a></code> also.</p>
   */      
  public native function get renderTo():*;

  /**
   * @private
   */
   public native function set renderTo(value:*):void;
      
  /**
An <a href="Ext.XTemplate.html">XTemplate</a> used to create the internal structure inside this Component's encapsulating <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a>.
<p>You do not normally need to specify this. For the base classes <a href="Ext.Component.html">Ext.Component</a> and <a href="Ext.Container.html">Ext.Container</a>, this defaults to <b><code>null</code></b> which means that they will be initially rendered with no internal structure; they render their <a href="output/Ext.lib.Component.html#Ext.lib.Component-getEl">Element</a> empty. The more specialized ExtJS and Touch classes which use a more complex DOM structure, provide their own template definitions.</p><p>This is intended to allow the developer to create application-specific utility Components with customized internal structure.</p><p>Upon rendering, any created child elements may be automatically imported into object properties using the <a href="output/Ext.lib.Component.html#Ext.lib.Component-renderSelectors">renderSelectors</a> option.</p>
   */      
  public native function get renderTpl():*;

  /**
   * @private
   */
   public native function set renderTpl(value:*):void;
      
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
   */      
  public native function get style():String;

  /**
   * @private
   */
   public native function set style(value:String):void;
      
  /**
The class that is added to the content target when you set styleHtmlContent to true. Defaults to 'x-html'
   */      
  public native function get styleHtmlCls():String;

  /**
   * @private
   */
   public native function set styleHtmlCls(value:String):void;
      
  /**
True to automatically style the html inside the content target of this component (body for panels). Defaults to false.
   */      
  public native function get styleHtmlContent():String;

  /**
   * @private
   */
   public native function set styleHtmlContent(value:String):void;
      
  /**
An <a href="Ext.Template.html">Ext.Template</a>, <a href="Ext.XTemplate.html">Ext.XTemplate</a> or an array of strings to form an Ext.XTemplate. Used in conjunction with the <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-data">data</a></code> and <code><a href="output/Ext.lib.Component.html#Ext.lib.Component-tplWriteMode">tplWriteMode</a></code> configurations.
   */      
  public native function get tpl():*;

  /**
   * @private
   */
   public native function set tpl(value:*):void;
      
  /**
The Ext.(X)Template method to use when updating the content area of the Component. Defaults to <code>'overwrite'</code> (see <code><a href="output/Ext.XTemplate.html#Ext.XTemplate-overwrite">Ext.XTemplate.overwrite</a></code>).
   */      
  public native function get tplWriteMode():String;

  /**
   * @private
   */
   public native function set tplWriteMode(value:String):void;
      
  /**
A set of predefined ui styles for individual components. Most components support 'light' and 'dark'. Extra string added to the baseCls with an extra '-'. <pre><code>     new Ext.Panel({
          title: 'Some Title',
          baseCls: 'x-component'
          ui: 'green'
      });
      </code></pre><p>The ui configuration in this example would add 'x-component-green' as an additional class.</p>
   */      
  public native function get ui():String;

  /**
   * @private
   */
   public native function set ui(value:String):void;
      
  /**
The width of this component in pixels.
   */      
  public native function get width():ext.form.Number;

  /**
   * @private
   */
   public native function set width(value:ext.form.Number):void;
      

}
}
    