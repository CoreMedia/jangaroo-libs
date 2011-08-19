package ext.config {


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
 *
 * <p>This class represents the xtype 'box' and serves as a
 * typed config object for constructor of class BoxComponent.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.BoxComponent
 */
[ExtConfig(target="ext.BoxComponent", xtype="box")]
public class box extends component {

  public function box(config:Object = null) {

    super(config);
  }


  /**
   <b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use an <b><a href="Ext.layout.AnchorLayout.html">AnchorLayout</a> (or subclass thereof).</b> based layout manager, for example:
   <div class="mdetail-params"><ul><li><a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a></li><li>specifying <code>layout: 'anchor' // or 'form', or 'absolute'</code></li></ul></div><br/><br/> <p>See <a href="Ext.layout.AnchorLayout.html">Ext.layout.AnchorLayout</a>.<a href="output/Ext.layout.AnchorLayout.html#Ext.layout.AnchorLayout-anchor">anchor</a> also.</p>
   */
  public native function get anchor():String;

  /**
   * @private
   */
  public native function set anchor(value:String):void;

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
   */
  public native function get autoHeight():Boolean;

  /**
   * @private
   */
  public native function set autoHeight(value:Boolean):void;

  /**
   <code>true</code> to use overflow:'auto' on the components layout element and show scroll bars automatically when necessary, <code>false</code> to clip any overflowing content (defaults to <code>false</code>).
   */
  public native function get autoScroll():Boolean;

  /**
   * @private
   */
  public native function set autoScroll(value:Boolean):void;

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
   */
  public native function get autoWidth():Boolean;

  /**
   * @private
   */
  public native function set autoWidth(value:Boolean):void;

  /**
   The maximum value in pixels which this BoxComponent will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */
  public native function get boxMaxHeight():Number;

  /**
   * @private
   */
  public native function set boxMaxHeight(value:Number):void;

  /**
   The maximum value in pixels which this BoxComponent will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */
  public native function get boxMaxWidth():Number;

  /**
   * @private
   */
  public native function set boxMaxWidth(value:Number):void;

  /**
   The minimum value in pixels which this BoxComponent will set its height to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */
  public native function get boxMinHeight():Number;

  /**
   * @private
   */
  public native function set boxMinHeight(value:Number):void;

  /**
   The minimum value in pixels which this BoxComponent will set its width to.
   <p><b>Warning:</b> This will override any size management applied by layout managers.</p>
   */
  public native function get boxMinWidth():Number;

  /**
   * @private
   */
  public native function set boxMinWidth(value:Number):void;

  /**
   <b>Note</b>: this config is only used when this Component is rendered by a Container which has been configured to use a <b><a href="Ext.layout.BoxLayout.html">BoxLayout</a>.</b> Each child Component with a <code>flex</code> property will be flexed either vertically (by a VBoxLayout) or horizontally (by an HBoxLayout) according to the item's <b>relative</b> <code>flex</code> value compared to the sum of all Components with <code>flex value specified. Any child items that have either a</code> flex = 0 or <code>flex = undefined</code> will not be 'flexed' (the initial size will not be changed).

   */
  public native function get flex():Number;

  /**
   * @private
   */
  public native function set flex(value:Number):void;

  /**
   The height of this component in pixels (defaults to auto). <b>Note</b> to express this dimension as a percentage or offset see <a href="output/Ext.Component.html#Ext.Component-anchor">Ext.Component.anchor</a>.
   */
  public native function get height():*;

  /**
   * @private
   */
  public native function set height(value:*):void;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is rendered by a Container which has been configured to use the <b><a href="Ext.layout.BorderLayout.html">BorderLayout</a></b> or one of the two <b><a href="Ext.layout.BoxLayout.html">BoxLayout</a> subclasses.</b>
   <p>An object containing margins to apply to this BoxComponent in the format:</p><pre><code>{
   top: (top margin),
   right: (right margin),
   bottom: (bottom margin),
   left: (left margin)
   }</code></pre><p>May also be a string containing space-separated, numeric margin values. The order of the sides associated with each value matches the way CSS processes margin values:</p><div class="mdetail-params"><ul><li>If there is only one value, it applies to all sides.</li><li>If there are two values, the top and bottom borders are set to the first value and the right and left are set to the second.</li><li>If there are three values, the top is set to the first value, the left and right are set to the second, and the bottom is set to the third.</li><li>If there are four values, they apply to the top, right, bottom, and left, respectively.</li></ul></div><br/><br/> <p>Defaults to:</p><pre><code>{top:0, right:0, bottom:0, left:0}
   </code></pre>
   */
  public native function get margins():Object;

  /**
   * @private
   */
  public native function set margins(value:Object):void;

  /**
   The page level x coordinate for this component if contained within a positioning container.
   */
  public native function get pageX():Number;

  /**
   * @private
   */
  public native function set pageX(value:Number):void;

  /**
   The page level y coordinate for this component if contained within a positioning container.
   */
  public native function get pageY():Number;

  /**
   * @private
   */
  public native function set pageY(value:Number):void;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is rendered by a Container which has been configured to use the <b><a href="Ext.layout.BorderLayout.html">BorderLayout</a></b> layout manager (e.g. specifying <tt>layout:'border'</tt>).
   <br/><p>See <a href="Ext.layout.BorderLayout.html">Ext.layout.BorderLayout</a> also.</p>
   */
  public native function get region():String;

  /**
   * @private
   */
  public native function set region(value:String):void;

  /**
   <b>Note</b>: this config is only used when this BoxComponent is a child item of a TabPanel.
   A string to be used as innerHTML (html tags are accepted) to show in a tooltip when mousing over the associated tab selector element. <a href="Ext.QuickTips.html">Ext.QuickTips</a>.init() must be called in order for the tips to render.
   */
  public native function get tabTip():String;

  /**
   * @private
   */
  public native function set tabTip(value:String):void;

  /**
   The width of this component in pixels (defaults to auto). <b>Note</b> to express this dimension as a percentage or offset see <a href="output/Ext.Component.html#Ext.Component-anchor">Ext.Component.anchor</a>.
   */
  public native function get width():*;

  /**
   * @private
   */
  public native function set width(value:*):void;

  /**
   The local x (left) coordinate for this component if contained within a positioning container.
   */
  public native function get x():Number;

  /**
   * @private
   */
  public native function set x(value:Number):void;

  /**
   The local y (top) coordinate for this component if contained within a positioning container.
   */
  public native function get y():Number;

  /**
   * @private
   */
  public native function set y(value:Number):void;


}
}
    