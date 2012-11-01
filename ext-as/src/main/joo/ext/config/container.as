package ext.config {


/**
 * Base class for any <a href="Ext.BoxComponent.html">Ext.BoxComponent</a> that may contain other Components. Containers handle the basic behavior of containing items, namely adding, inserting and removing items.
 <p>The most commonly used Container classes are <a href="Ext.Panel.html">Ext.Panel</a>, <a href="Ext.Window.html">Ext.Window</a> and <a href="Ext.TabPanel.html">Ext.TabPanel</a>. If you do not need the capabilities offered by the aforementioned classes you can create a lightweight Container to be encapsulated by an HTML element to your specifications by using the <code><b><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></b></code> config option. This is a useful technique when creating embedded <a href="Ext.layout.ColumnLayout.html">column</a> layouts inside <a href="Ext.form.FormPanel.html">FormPanels</a> for example.</p><p>The code below illustrates both how to explicitly create a Container, and how to implicitly create one using the <b><code>'container'</code></b> xtype:</p><pre><code>// explicitly create a Container
 var embeddedColumns = new Ext.Container({
 autoEl: 'div',  // This is the default
 layout: 'column',
 defaults: {
 // implicitly create Container by specifying xtype
 xtype: 'container',
 autoEl: 'div', // This is the default.
 layout: 'form',
 columnWidth: 0.5,
 style: {
 padding: '10px'
 }
 },
 //  The two items below will be Ext.Containers, each encapsulated by a &lt;DIV&gt; element.
 items: [{
 items: {
 xtype: 'datefield',
 name: 'startDate',
 fieldLabel: 'Start date'
 }
 }, {
 items: {
 xtype: 'datefield',
 name: 'endDate',
 fieldLabel: 'End date'
 }
 }]
 });</code></pre><br/><br/> <p><u><b>Layout</b></u></p><p>Container classes delegate the rendering of child Components to a layout manager class which must be configured into the Container using the <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> configuration property.</p><p>When either specifying child <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> of a Container, or dynamically <a href="output/Ext.Container.html#Ext.Container-add">adding</a> Components to a Container, remember to consider how you wish the Container to arrange those child elements, and whether those child elements need to be sized using one of Ext's built-in <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> schemes. By default, Containers use the <a href="Ext.layout.ContainerLayout.html">ContainerLayout</a> scheme which only renders child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b> at all.</p><p>A common mistake is when a developer neglects to specify a <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> (e.g. widgets like GridPanels or TreePanels are added to Containers for which no <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> has been specified). If a Container is left to use the default <a href="Ext.layout.ContainerLayout.html">ContainerLayout</a> scheme, none of its child components will be resized, or changed in any way when the Container is resized.</p><p>Certain layout managers allow dynamic addition of child components. Those that do include <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a>, <a href="Ext.layout.AnchorLayout.html">Ext.layout.AnchorLayout</a>, <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>, and <a href="Ext.layout.TableLayout.html">Ext.layout.TableLayout</a>. For example:</p><pre><code>//  Create the GridPanel.
 var myNewGrid = new Ext.grid.GridPanel({
 store: myStore,
 columns: myColumnModel,
 title: 'Results', // the title becomes the title of the tab
 });

 myTabPanel.add(myNewGrid); // <a href="Ext.TabPanel.html">Ext.TabPanel</a> implicitly uses <a href="Ext.layout.CardLayout.html">CardLayout</a>
 myTabPanel.<a href="output/Ext.TabPanel.html#Ext.TabPanel-setActiveTab">setActiveTab</a>(myNewGrid);
 </code></pre><br/><br/> <p>The example above adds a newly created GridPanel to a TabPanel. Note that a TabPanel uses <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> as its layout manager which means all its child items are sized to <a href="Ext.layout.FitLayout.html">fit</a> exactly into its client area.</p><p><b><u>Overnesting is a common problem</u></b>. An example of overnesting occurs when a GridPanel is added to a TabPanel by wrapping the GridPanel <i>inside</i> a wrapping Panel (that has no <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> specified) and then add that wrapping Panel to the TabPanel. The point to realize is that a GridPanel <b>is</b> a Component which can be added directly to a Container. If the wrapping Panel has no <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> configuration, then the overnested GridPanel will not be sized as expected.</p><p><u><b>Adding via remote configuration</b></u></p><p>A server side script can be used to add Components which are generated dynamically on the server. An example of adding a GridPanel to a TabPanel where the GridPanel is generated by the server based on certain parameters:</p><pre><code>// execute an Ajax request to invoke server side script:
 Ext.Ajax.request({
 url: 'gen-invoice-grid.php',
 // send additional parameters to instruct server script
 params: {
 startDate: Ext.getCmp('start-date').getValue(),
 endDate: Ext.getCmp('end-date').getValue()
 },
 // process the response object to add it to the TabPanel:
 success: function(xhr) {
 var newComponent = eval(xhr.responseText); // see discussion below
 myTabPanel.add(newComponent); // add the component to the TabPanel
 myTabPanel.setActiveTab(newComponent);
 },
 failure: function() {
 Ext.Msg.alert("Grid create failed", "Server communication failure");
 }
 });
 </code></pre><p>The server script needs to return an executable Javascript statement which, when processed using <code>eval()</code>, will return either a config object with an <a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a>, or an instantiated Component. The server might return this for example:</p><pre><code>(function() {
 function formatDate(value){
 return value ? value.dateFormat('M d, Y') : '';
 };

 var store = new Ext.data.Store({
 url: 'get-invoice-data.php',
 baseParams: {
 startDate: '01/01/2008',
 endDate: '01/31/2008'
 },
 reader: new Ext.data.JsonReader({
 record: 'transaction',
 idProperty: 'id',
 totalRecords: 'total'
 }, [
 'customer',
 'invNo',
 {name: 'date', type: 'date', dateFormat: 'm/d/Y'},
 {name: 'value', type: 'float'}
 ])
 });

 var grid = new Ext.grid.GridPanel({
 title: 'Invoice Report',
 bbar: new Ext.PagingToolbar(store),
 store: store,
 columns: [
 {header: "Customer", width: 250, dataIndex: 'customer', sortable: true},
 {header: "Invoice Number", width: 120, dataIndex: 'invNo', sortable: true},
 {header: "Invoice Date", width: 100, dataIndex: 'date', renderer: formatDate, sortable: true},
 {header: "Value", width: 120, dataIndex: 'value', renderer: 'usMoney', sortable: true}
 ],
 });
 store.load();
 return grid;  // return instantiated component
 })();
 </code></pre><p>When the above code fragment is passed through the <code>eval</code> function in the success handler of the Ajax request, the code is executed by the Javascript processor, and the anonymous function runs, and returns the instantiated grid component.</p><p>Note: since the code above is <i>generated</i> by a server script, the <code>baseParams</code> for the Store, the metadata to allow generation of the Record layout, and the ColumnModel can all be generated into the code since these are all known on the server.</p>
 *
 * <p>This class represents the xtype 'container' and serves as a
 * typed config object for constructor of class Container.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Container
 */
[ExtConfig(target="ext.Container", xtype="container")]
public class container extends box {

  public function container(config:Object = null) {

    super(config);
  }


  /**
   A string component id or the numeric index of the component that should be initially activated within the container's layout on render. For example, activeItem: 'item-1' or activeItem: 0 (index 0 = the first item in the container's collection). activeItem only applies to layout styles that can display items one at a time (like <a href="Ext.layout.AccordionLayout.html">Ext.layout.AccordionLayout</a>, <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> and <a href="Ext.layout.FitLayout.html">Ext.layout.FitLayout</a>). Related to <a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-activeItem">Ext.layout.ContainerLayout.activeItem</a>.
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
  override public native function get bubbleEvents():Array;

  /**
   * @private
   */
  override public native function set bubbleEvents(value:Array):void;

  /**
   When set to true (50 milliseconds) or a number of milliseconds, the layout assigned for this container will buffer the frequency it calculates and does a re-layout of components. This is useful for heavy containers or containers with a large quantity of sub-components for which frequent layout calls would be expensive. Defaults to <code>50</code>.
   */
  public native function get bufferResize():*;

  /**
   * @private
   */
  public native function set bufferResize(value:*):void;

  /**
   The default <a href="Ext.Component.html">xtype</a> of child Components to create in this Container when a child item is specified as a raw configuration object, rather than as an instantiated Component.
   <p>Defaults to <code>'panel'</code>, except <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> which defaults to <code>'menuitem'</code>, and <a href="Ext.Toolbar.html">Ext.Toolbar</a> and <a href="Ext.ButtonGroup.html">Ext.ButtonGroup</a> which default to <code>'button'</code>.</p>
   */
  public native function get defaultType():String;

  /**
   * @private
   */
  public native function set defaultType(value:String):void;

  /**
   This option is a means of applying default settings to all added items whether added through the <a href="output/Ext.Container.html#Ext.Container-items">items</a> config or via the <a href="output/Ext.Container.html#Ext.Container-add">add</a> or <a href="output/Ext.Container.html#Ext.Container-insert">insert</a> methods.
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
   If true the container will force a layout initially even if hidden or collapsed. This option is useful for forcing forms to render in collapsed or hidden containers. (defaults to false).
   */
  public native function get forceLayout():Boolean;

  /**
   * @private
   */
  public native function set forceLayout(value:Boolean):void;

  /**
   True to hide the borders of each contained component, false to defer to the component's existing border settings (defaults to false).
   */
  public native function get hideBorders():Boolean;

  /**
   * @private
   */
  public native function set hideBorders(value:Boolean):void;

  /**
   <pre><b>&#42;&#42; IMPORTANT</b>: be sure to <b><a href="output/Ext.Container.html#Ext.Container-layout">specify a <code>layout</code></a> if needed ! &#42;&#42;</b></pre><p>A single item, or an array of child Components to be added to this container, for example:</p><pre><code>// specifying a single item
   items: {...},
   layout: 'fit',    // specify a layout!

   // specifying multiple items
   items: [{...}, {...}],
   layout: 'anchor', // specify a layout!
   </code></pre><p>Each item may be:</p><div><ul class="mdetail-params"><li>any type of object based on <a href="Ext.Component.html">Ext.Component</a></li><li>a fully instanciated object or</li><li>an object literal that:</li><li style="list-style: none"><div><ul class="mdetail-params"><li>has a specified <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code></li><li>the <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a> specified is associated with the Component desired and should be chosen from one of the available xtypes as listed in <a href="Ext.Component.html">Ext.Component</a>.</li><li>If an <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> is not explicitly specified, the <a href="output/Ext.Container.html#Ext.Container-defaultType">defaultType</a> for that Container is used.</li><li>will be "lazily instanciated", avoiding the overhead of constructing a fully instanciated Component object</li></ul></div></li></ul></div><p><b>Notes</b>:</p><div><ul class="mdetail-params"><li>Ext uses lazy rendering. Child Components will only be rendered should it become necessary. Items are automatically laid out when they are first shown (no sizing is done while hidden), or in response to a <a href="output/Ext.Container.html#Ext.Container-doLayout">doLayout</a> call.</li><li>Do not specify <code><a href="output/Ext.Panel.html#Ext.Panel-contentEl">contentEl</a></code>/ <code><a href="output/Ext.Panel.html#Ext.Panel-html">html</a></code> with <code>items</code>.</li></ul></div>
   */
  public native function get items():Array;

  /**
   * @private
   */
  public native function set items(value:Array):void;

  /**
   <b>&#42;Important</b>: In order for child items to be correctly sized and positioned, typically a layout manager <b>must</b> be specified through the <code>layout</code> configuration option.
   <br/><p>The sizing and positioning of child <a href="items.html">items</a> is the responsibility of the Container's layout manager which creates and manages the type of layout you have in mind. For example:</p><pre><code>new Ext.Window({
   width:300, height: 300,
   layout: 'fit', // explicitly set layout manager: override the default (layout:'auto')
   items: [{
   title: 'Panel inside a Window'
   }]
   }).show();
   </code></pre><p>If the <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> configuration is not explicitly specified for a general purpose container (e.g. Container or Panel) the <a href="Ext.layout.ContainerLayout.html">default layout manager</a> will be used which does nothing but render child components sequentially into the Container (no sizing or positioning will be performed in this situation). Some container classes implicitly specify a default layout (e.g. FormPanel specifies <code>layout:'form'</code>). Other specific purpose classes internally specify/manage their internal layout (e.g. GridPanel, TabPanel, TreePanel, Toolbar, Menu, etc.).</p><br/><p><b><code>layout</code></b> may be specified as either as an Object or as a String:</p><div><ul class="mdetail-params"><li><u>Specify as an Object</u></li><li style="list-style: none"><div><ul class="mdetail-params"><li>Example usage:</li><li style="list-style: none"><pre><code>layout: {
   type: 'vbox',
   padding: '5',
   align: 'left'
   }
   </code></pre></li><li><code><b>type</b></code></li><li style="list-style: none"><br/><p>The layout type to be used for this container. If not specified, a default <a href="Ext.layout.ContainerLayout.html">Ext.layout.ContainerLayout</a> will be created and used.</p><br/><p>Valid layout <code>type</code> values are:</p><div class="sub-desc"><ul class="mdetail-params"><li><code><b><a href="Ext.layout.AbsoluteLayout.html">absolute</a></b></code></li><li><code><b><a href="Ext.layout.AccordionLayout.html">accordion</a></b></code></li><li><code><b><a href="Ext.layout.AnchorLayout.html">anchor</a></b></code></li><li><code><b><a href="Ext.layout.ContainerLayout.html">auto</a></b></code>     <b>Default</b></li><li><code><b><a href="Ext.layout.BorderLayout.html">border</a></b></code></li><li><code><b><a href="Ext.layout.CardLayout.html">card</a></b></code></li><li><code><b><a href="Ext.layout.ColumnLayout.html">column</a></b></code></li><li><code><b><a href="Ext.layout.FitLayout.html">fit</a></b></code></li><li><code><b><a href="Ext.layout.FormLayout.html">form</a></b></code></li><li><code><b><a href="Ext.layout.HBoxLayout.html">hbox</a></b></code></li><li><code><b><a href="Ext.layout.MenuLayout.html">menu</a></b></code></li><li><code><b><a href="Ext.layout.TableLayout.html">table</a></b></code></li><li><code><b><a href="Ext.layout.ToolbarLayout.html">toolbar</a></b></code></li><li><code><b><a href="Ext.layout.VBoxLayout.html">vbox</a></b></code></li></ul></div></li><li>Layout specific configuration properties</li><li style="list-style: none"><br/><p>Additional layout specific configuration properties may also be specified. For complete details regarding the valid config options for each layout type, see the layout class corresponding to the <code>type</code> specified.</p></li></ul></div></li><li><u>Specify as a String</u></li><li style="list-style: none"><div><ul class="mdetail-params"><li>Example usage:</li><li style="list-style: none"><pre><code>layout: 'vbox',
   layoutConfig: {
   padding: '5',
   align: 'left'
   }
   </code></pre></li><li><code><b>layout</b></code></li><li style="list-style: none"><br/><p>The layout <code>type</code> to be used for this container (see list of valid layout type values above).</p><br/></li><li><code><b><a href="output/Ext.Container.html#Ext.Container-layoutConfig">layoutConfig</a></b></code></li><li style="list-style: none"><br/><p>Additional layout specific configuration properties. For complete details regarding the valid config options for each layout type, see the layout class corresponding to the <code>layout</code> specified.</p></li></ul></div></li></ul></div>
   */
  public native function get layout():*;

  /**
   * @private
   */
  public native function set layout(value:*):void;

  /**
   This is a config object containing properties specific to the chosen <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> if <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> has been specified as a <i>string</i>.<br/><br/>
   */
  public native function get layoutConfig():Object;

  /**
   * @private
   */
  public native function set layoutConfig(value:Object):void;

  /**
   True to automatically monitor window resize events to handle anything that is sensitive to the current size of the viewport. This value is typically managed by the chosen <code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code> and should not need to be set manually.
   */
  public native function get monitorResize():Boolean;

  /**
   * @private
   */
  public native function set monitorResize(value:Boolean):void;

  /**
   The event to listen to for resizing in layouts. Defaults to <code>'resize'</code>.
   */
  public native function get resizeEvent():String;

  /**
   * @private
   */
  public native function set resizeEvent(value:String):void;


}
}
    