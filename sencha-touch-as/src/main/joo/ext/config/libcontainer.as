
package ext.config {

import ext.form.Number;


/**
 * Shared Container class
 *
 * <p>This class represents the xtype 'libcontainer' and serves as a
 * typed config object for constructor of class Container.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.lib.Container
 */
[ExtConfig(target="ext.lib.Container", xtype="libcontainer")]
public class libcontainer extends ext.config.component {

  public function libcontainer(config:Object = null) {

    super(config);
  }

  
  
  /**
A string component id or the numeric index of the component that should be initially activated within the container's layout on render. For example, activeItem: 'item-1' or activeItem: 0 (index 0 = the first item in the container's collection). activeItem only applies to layout styles that can display items one at a time (like <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> and <a href="Ext.layout.FitLayout.html">Ext.layout.FitLayout</a>). Related to <a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-activeItem">Ext.layout.ContainerLayout.activeItem</a>.
   */      
  public native function get activeItem():*;

  /**
   * @private
   */
   public native function set activeItem(value:*):void;
      
  /**
If true the container will automatically destroy any contained component that is removed from it, else destruction must be handled manually (defaults to true).
   */      
  public native function get autoDestroy():Boolean;

  /**
   * @private
   */
   public native function set autoDestroy(value:Boolean):void;
      
  /**
An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <code>['add', 'remove']</code>.

   */      
  public native function get bubbleEvents():Array;

  /**
   * @private
   */
   public native function set bubbleEvents(value:Array):void;
      
  /**
The default <a href="Ext.Component.html">xtype</a> of child Components to create in this Container when a child item is specified as a raw configuration object, rather than as an instantiated Component.
<p>Defaults to <code>'panel'</code>.</p>
   */      
  public native function get defaultType():String;

  /**
   * @private
   */
   public native function set defaultType(value:String):void;
      
  /**
This option is a means of applying default settings to all added items whether added through the <a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a> config or via the <a href="output/Ext.lib.Container.html#Ext.lib.Container-add">add</a> or <a href="output/Ext.lib.Container.html#Ext.lib.Container-insert">insert</a> methods.
<p>If an added item is a config object, and <b>not</b> an instantiated Component, then the default properties are unconditionally applied. If the added item <b>is</b> an instantiated Component, then the default properties are applied conditionally so as not to override existing properties in the item.</p><p>If the defaults option is specified as a function, then the function will be called using this Container as the scope (<code>this</code> reference) and passing the added item as the first parameter. Any resulting object from that call is then applied to the item as default properties.</p><p>For example, to automatically apply padding to the body of each of a set of contained <a href="Ext.Panel.html">Ext.Panel</a> items, you could pass: <code>defaults: {bodyStyle:'padding:15px'}</code>.</p><p>Usage:</p><pre><code>defaults: {               // defaults are applied to items, not the container
    autoScroll:true
},
items: [
    {
        xtype: 'panel',   // defaults <b>do not</b> have precedence over
        id: 'panel1',     // options in config objects, so the defaults
        autoScroll: false // will not be applied here, panel1 will be autoScroll:false
    },
    new Ext.Panel({       // defaults <b>do</b> have precedence over options
        id: 'panel2',     // options in components, so the defaults
        autoScroll: false // will be applied here, panel2 will be autoScroll:true.
    })
]
      </code></pre>
   */      
  public native function get defaults():*;

  /**
   * @private
   */
   public native function set defaults(value:*):void;
      
  /**
<pre><b>&#42;&#42; IMPORTANT</b>: be sure to <b><a href="output/Ext.lib.Container.html#Ext.lib.Container-layout">specify a <code>layout</code></a> if needed ! &#42;&#42;</b></pre><p>A single item, or an array of child Components to be added to this container, for example:</p><pre><code>// specifying a single item
items: {...},
layout: 'fit',    // specify a layout!

// specifying multiple items
items: [{...}, {...}],
layout: 'hbox', // specify a layout!
      </code></pre><p>Each item may be:</p><div><ul class="mdetail-params"><li>any type of object based on <a href="Ext.Component.html">Ext.Component</a></li><li>a fully instanciated object or</li><li>an object literal that:</li><li style="list-style: none"><div><ul class="mdetail-params"><li>has a specified <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code></li><li>the <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a> specified is associated with the Component desired and should be chosen from one of the available xtypes as listed in <a href="Ext.Component.html">Ext.Component</a>.</li><li>If an <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> is not explicitly specified, the <a href="output/Ext.lib.Container.html#Ext.lib.Container-defaultType">defaultType</a> for that Container is used.</li><li>will be "lazily instanciated", avoiding the overhead of constructing a fully instanciated Component object</li></ul></div></li></ul></div><p><b>Notes</b>:</p><div><ul class="mdetail-params"><li>Ext uses lazy rendering. Child Components will only be rendered should it become necessary. Items are automatically laid out when they are first shown (no sizing is done while hidden), or in response to a <a href="output/Ext.lib.Container.html#Ext.lib.Container-doLayout">doLayout</a> call.</li><li>Do not specify <code><a href="output/Ext.Panel.html#Ext.Panel-contentEl">contentEl</a></code>/ <code><a href="output/Ext.Panel.html#Ext.Panel-html">html</a></code> with <code>items</code>.</li></ul></div>
   */      
  public native function get items():*;

  /**
   * @private
   */
   public native function set items(value:*):void;
      
  /**
<b>&#42;Important</b>: In order for child items to be correctly sized and positioned, typically a layout manager <b>must</b> be specified through the <code>layout</code> configuration option.
<br/><p>The sizing and positioning of child <a href="items.html">items</a> is the responsibility of the Container's layout manager which creates and manages the type of layout you have in mind. For example:</p><p>If the <a href="output/Ext.lib.Container.html#Ext.lib.Container-layout">layout</a> configuration is not explicitly specified for a general purpose container (e.g. Container or Panel) the <a href="Ext.layout.AutoContainerLayout.html">default layout manager</a> will be used which does nothing but render child components sequentially into the Container (no sizing or positioning will be performed in this situation).</p><br/><p><b><code>layout</code></b> may be specified as either as an Object or as a String:</p><div><ul class="mdetail-params"><li><u>Specify as an Object</u></li><li style="list-style: none"><div><ul class="mdetail-params"><li>Example usage:</li><li style="list-style: none"><pre><code>layout: {
    type: 'vbox',
    align: 'left'
}
      </code></pre></li><li><code><b>type</b></code></li><li style="list-style: none"><br/><p>The layout type to be used for this container. If not specified, a default <a href="Ext.layout.ContainerLayout.html">Ext.layout.ContainerLayout</a> will be created and used.</p><br/><p>Valid layout <code>type</code> values are:</p><div class="sub-desc"><ul class="mdetail-params"><li><code><b><a href="Ext.layout.ContainerLayout.html">auto</a></b></code>     <b>Default</b></li><li><code><b><a href="Ext.layout.CardLayout.html">card</a></b></code></li><li><code><b><a href="Ext.layout.FitLayout.html">fit</a></b></code></li><li><code><b><a href="Ext.layout.HBoxLayout.html">hbox</a></b></code></li><li><code><b><a href="Ext.layout.VBoxLayout.html">vbox</a></b></code></li></ul></div></li><li>Layout specific configuration properties</li><li style="list-style: none"><br/><p>Additional layout specific configuration properties may also be specified. For complete details regarding the valid config options for each layout type, see the layout class corresponding to the <code>type</code> specified.</p></li></ul></div></li><li><u>Specify as a String</u></li><li style="list-style: none"><div><ul class="mdetail-params"><li>Example usage:</li><li style="list-style: none"><pre><code>layout: {
    type: 'vbox',
    padding: '5',
    align: 'left'
}
      </code></pre></li><li><code><b>layout</b></code></li><li style="list-style: none"><br/><p>The layout <code>type</code> to be used for this container (see list of valid layout type values above).</p><br/><br/><p>Additional layout specific configuration properties. For complete details regarding the valid config options for each layout type, see the layout class corresponding to the <code>layout</code> specified.</p></li></ul></div></li></ul></div>
   */      
  public native function get layout():*;

  /**
   * @private
   */
   public native function set layout(value:*):void;
      

}
}
    