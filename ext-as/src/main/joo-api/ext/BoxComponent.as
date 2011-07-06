package ext {


/**
 * Fires after the component is moved.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>x:Number</code>
 The new x position
 *       </li>

 *       <li>
 *           <code>y:Number</code>
 The new y position
 *       </li>

 * </ul>
 */
[Event(name="move")]

/**
 * Fires after the component is resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Component</code>

 *       </li>

 *       <li>
 *           <code>adjWidth:Number</code>
 The box-adjusted width that was set
 *       </li>

 *       <li>
 *           <code>adjHeight:Number</code>
 The box-adjusted height that was set
 *       </li>

 *       <li>
 *           <code>rawWidth:Number</code>
 The width that was originally specified
 *       </li>

 *       <li>
 *           <code>rawHeight:Number</code>
 The height that was originally specified
 *       </li>

 * </ul>
 */
[Event(name="resize")]


/**
 * Base class for any <a href="Ext.Component.html">Component</a> that is to be sized as a box, using width and height.
 <p>BoxComponent provides automatic box model adjustments for sizing and positioning and will work correctly within the Component rendering model.</p><p>A BoxComponent may be created as a custom Component which encapsulates any HTML element, either a pre-existing element, or one that is created to your specifications at render time. Usually, to participate in layouts, a Component will need to be a <b>Box</b>Component in order to have its width and height managed.</p><p>To use a pre-existing element as a BoxComponent, configure it so that you preset the <b>el</b> property to the element to reference:</p><pre><code>var pageHeader = new Ext.BoxComponent({
 el: 'my-header-div'
 });</code></pre>This may then be <a href="output/Ext.Container.html#Ext.Container-add">added</a> to a <a href="Ext.Container.html">Container</a> as a child item.<br/><br/> <p>To create a BoxComponent based around a HTML element to be created at render time, use the <a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a> config option which takes the form of a <a href="Ext.DomHelper.html">DomHelper</a> specification:</p><pre><code>var myImage = new Ext.BoxComponent({
 autoEl: {
 tag: 'img',
 src: '/images/my-image.jpg'
 }
 });</code></pre><br/><br/>
 * <p>This component is created by the xtype 'box' / the EXML element &lt;box>.</p>
 * @see ext.config.box
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#cls-Ext.BoxComponent Ext JS source
 */
public class BoxComponent extends Component {

  /**
   *
   *
   * @param config The configuration options.
   * @see ext.config.box
   */
  public function BoxComponent(config:*) {
    super(null);
  }

  /**
   <b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use an <b><a href="Ext.layout.AnchorLayout.html">AnchorLayout</a> (or subclass thereof).</b> based layout manager, for example:
   <div class="mdetail-params"><ul><li><a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a></li><li>specifying <code>layout: 'anchor' // or 'form', or 'absolute'</code></li></ul></div><br/><br/> <p>See <a href="Ext.layout.AnchorLayout.html">Ext.layout.AnchorLayout</a>.<a href="output/Ext.layout.AnchorLayout.html#Ext.layout.AnchorLayout-anchor">anchor</a> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get anchor():String;

  /**
   True to use height:'auto', false to use fixed height (or allow it to be managed by its parent Container's <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a>. Defaults to false.
   <p><b>Note</b>: Although many components inherit this config option, not all will function as expected with a height of 'auto'. Setting autoHeight:true means that the browser will manage height based on the element's contents, and that Ext will not manage it at all.</p><p>If the <i>browser</i> is managing the height, be aware that resizes performed by the browser in response to changes within the structure of the Component cannot be detected. Therefore changes to the height might result in elements needing to be synchronized with the new height. Example:</p><pre><code>var w = new Ext.Window({
   title: 'Window',
   width: 600,
   autoHeight: true,
   items: {
   title: 'Collapse Me',
   height: 400,
   collapsible: true,
   border: false,
   listeners: {
   beforecollapse: function() {
   w.el.shadow.hide();
   },
   beforeexpand: function() {
   w.el.shadow.hide();
   },
   collapse: function() {
   w.syncShadow();
   },
   expand: function() {
   w.syncShadow();
   }
   }
   }
   }).show();
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoHeight():Boolean;

  /**
   <code>true</code> to use overflow:'auto' on the components layout element and show scroll bars automatically when necessary, <code>false</code> to clip any overflowing content (defaults to <code>false</code>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoScroll():Boolean;

  /**
   True to use width:'auto', false to use fixed width (or allow it to be managed by its parent Container's <a href="output/Ext.Container.html#Ext.Container-layout">layout manager</a>. Defaults to false.
   <p><b>Note</b>: Although many components inherit this config option, not all will function as expected with a width of 'auto'. Setting autoWidth:true means that the browser will manage width based on the element's contents, and that Ext will not manage it at all.</p><p>If the <i>browser</i> is managing the width, be aware that resizes performed by the browser in response to changes within the structure of the Component cannot be detected. Therefore changes to the width might result in elements needing to be synchronized with the new width. For example, where the target element is:</p><pre><code>&lt;div id='grid-container' style='margin-left:25%;width:50%'&gt;&lt;/div&gt;
   </code></pre>A Panel rendered into that target element must listen for browser window resize in order to relay its child items when the browser changes its width:<pre><code>var myPanel = new Ext.Panel({
   renderTo: 'grid-container',
   monitorResize: true, // relay on browser resize
   title: 'Panel',
   height: 400,
   autoWidth: true,
   layout: 'hbox',
   layoutConfig: {
   align: 'stretch'
   },
   defaults: {
   flex: 1
   },
   items: [{
   title: 'Box 1',
   }, {
   title: 'Box 2'
   }, {
   title: 'Box 3'
   }],
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoWidth():Boolean;

  /**
   The maximum value in pixels which this BoxComponent will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get boxMaxHeight():Number;

  /**
   The maximum value in pixels which this BoxComponent will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get boxMaxWidth():Number;

  /**
   The minimum value in pixels which this BoxComponent will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get boxMinHeight():Number;

  /**
   The minimum value in pixels which this BoxComponent will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get boxMinWidth():Number;

  /**
   <b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use a <b><a href="Ext.layout.BoxLayout.html">BoxLayout</a>.</b> Each child Component with a <code>flex</code> property will be flexed either vertically (by a VBoxLayout) or horizontally (by an HBoxLayout) according to the item's <b>relative</b> <code>flex</code> value compared to the sum of all Components with <code>flex value specified. Any child items that have either a</code> flex = 0 or <code>flex = undefined</code> will not be 'flexed' (the initial size will not be changed).

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get flex():Number;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is rendered by a Container which has been configured to use the <b><a href="Ext.layout.BorderLayout.html">BorderLayout</a></b> or one of the two <b><a href="Ext.layout.BoxLayout.html">BoxLayout</a> subclasses.</b>
   <p>An object containing margins to apply to this BoxComponent in the format:</p><pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>May also be a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><br/><br/> <p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get margins():Object;

  /**
   The page level x coordinate for this component if contained within a positioning container.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pageX():Number;

  /**
   The page level y coordinate for this component if contained within a positioning container.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pageY():Number;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is rendered by a Container which has been configured to use the <b><a href="Ext.layout.BorderLayout.html">BorderLayout</a></b> layout manager (e.g. specifying <tt>layout:'border'</tt>).
   <br/><p>See <a href="Ext.layout.BorderLayout.html">Ext.layout.BorderLayout</a> also.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get region():String;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is a child item of a TabPanel.
   A string to be used as innerHTML (html tags are accepted) to show in a tooltip when mousing over the associated tab selector element. <a href="Ext.QuickTips.html">Ext.QuickTips</a>.init() must be called in order for the tips to render.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get tabTip():String;

  /**
   The local x (left) coordinate for this component if contained within a positioning container.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get x():Number;

  /**
   The local y (top) coordinate for this component if contained within a positioning container.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get y():Number;

  /**
   * Gets the current box measurements of the component's underlying element.
   *
   * @param local If true the element's left and top are returned instead of page XY (defaults to false)
   * @return box An object in the format {x, y, width, height}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getBox Ext JS source
   */
  public native function getBox(local:Boolean = false):Object;

  /**
   * Gets the current height of the component's underlying element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getHeight Ext JS source
   */
  public native function getHeight():Number;

  /**
   * Gets the current size of the component's underlying element, including space taken by its margins.
   *
   * @return An object containing the element's size {width: (element width + left/right margins), height: (element height + top/bottom margins)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getOuterSize Ext JS source
   */
  public native function getOuterSize():Object;

  /**
   * Gets the current XY position of the component's underlying element.
   *
   * @param local If true the element's left and top are returned instead of page XY (defaults to false)
   * @return The XY position of the element (e.g., [100, 200])
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getPosition Ext JS source
   */
  public native function getPosition(local:Boolean = false):Array;

  /**
   * Returns the outermost Element of this Component which defines the Components overall size.
   <p><i>Usually</i> this will return the same Element as <code><a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">getEl</a></code>, but in some cases, a Component may have some more wrapping Elements around its main active Element.</p><p>An example is a ComboBox. It is encased in a <i>wrapping</i> Element which contains both the <code>&lt;input&gt;</code> Element (which is what would be returned by its <code><a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">getEl</a></code> method, <i>and</i> the trigger button Element. This Element is returned as the <code>resizeEl</code>.</p>
   *
   * @return The Element which is to be resized by size managing layouts.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getResizeEl Ext JS source
   */
  public native function getResizeEl():Element;

  /**
   * Gets the current size of the component's underlying element.
   *
   * @return An object containing the element's size {width: (element width), height: (element height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getSize Ext JS source
   */
  public native function getSize():Object;

  /**
   * Gets the current width of the component's underlying element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-getWidth Ext JS source
   */
  public native function getWidth():Number;

  /**
   * Called after the component is moved, this method is empty by default but can be implemented by any subclass that needs to perform custom logic after a move occurs.
   *
   * @param x The new x position
   * @param y The new y position
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-onPosition Ext JS source
   */
  protected native function onPosition(x:Number, y:Number):void;

  /**
   * Called after the component is resized, this method is empty by default but can be implemented by any subclass that needs to perform custom logic after a resize occurs.
   *
   * @param adjWidth The box-adjusted width that was set
   * @param adjHeight The box-adjusted height that was set
   * @param rawWidth The width that was originally specified
   * @param rawHeight The height that was originally specified
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-onResize Ext JS source
   */
  protected native function onResize(adjWidth:Number, adjHeight:Number, rawWidth:Number, rawHeight:Number):void;

  /**
   * Sets the overflow on the content element of the component.
   *
   * @param scroll True to allow the Component to auto scroll.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setAutoScroll Ext JS source
   */
  public native function setAutoScroll(scroll:Boolean):BoxComponent;

  /**
   * Sets the height of the component. This method fires the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-resize">resize</a> event.
   *
   * @param height The new height to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style.</li><li><i>undefined</i> to leave the height unchanged.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setHeight Ext JS source
   */
  public native function setHeight(height:*):BoxComponent;

  /**
   * Sets the page XY position of the component. To set the left and top instead, use <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-setPosition">setPosition</a>. This method fires the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-move">move</a> event.
   *
   * @param x The new x position
   * @param y The new y position
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setPagePosition Ext JS source
   */
  public native function setPagePosition(x:Number, y:Number):BoxComponent;

  /**
   * Sets the left and top of the component. To set the page XY position instead, use <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-setPagePosition">setPagePosition</a>. This method fires the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-move">move</a> event.
   *
   * @param left The new left
   * @param top The new top
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setPosition Ext JS source
   */
  public native function setPosition(left:Number, top:Number):BoxComponent;

  /**
   * Sets the width and height of this BoxComponent. This method fires the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-resize">resize</a> event. This method can accept either width and height as separate arguments, or you can pass a size object like <code>{width:10, height:20}</code>.
   *
   * @param width The new width to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style.</li><li>A size object in the format <code>{width: widthValue, height: heightValue}</code>.</li><li><code>undefined</code> to leave the width unchanged.</li></ul></div>
   * @param height The new height to set (not required if a size object is passed as the first arg). This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new height in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">Ext.Element.defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS height style. Animation may <b>not</b> be used.</li><li><code>undefined</code> to leave the height unchanged.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setSize Ext JS source
   */
  public native function setSize(width:*, height:*):BoxComponent;

  /**
   * Sets the width of the component. This method fires the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-resize">resize</a> event.
   *
   * @param width The new width to set. This may be one of:<div class="mdetail-params"><ul><li>A Number specifying the new width in the <a href="output/Ext.BoxComponent.html#Ext.BoxComponent-getEl">Element</a>'s <a href="output/Ext.Element.html#Ext.Element-defaultUnit">defaultUnit</a>s (by default, pixels).</li><li>A String used to set the CSS width style.</li></ul></div>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-setWidth Ext JS source
   */
  public native function setWidth(width:*):BoxComponent;

  /**
   * Force the component's size to recalculate based on the underlying element's current height and width.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-syncSize Ext JS source
   */
  public native function syncSize():BoxComponent;

  /**
   * Sets the current box measurements of the component's underlying element.
   *
   * @param box An object in the format {x, y, width, height}
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxComponent.html#method-Ext.BoxComponent-updateBox Ext JS source
   */
  public native function updateBox(box:Object):BoxComponent;

}
}
    