package ext {
import ext.config.container;
import ext.layout.ContainerLayout;
import ext.util.MixedCollection;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component that was added
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index at which the component was added to the container's items collection
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Fires when the components in this container are arranged by the associated layout manager.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>layout:ext.layout.ContainerLayout</code>
 The ContainerLayout implementation for this container
 *       </li>

 * </ul>
 */
[Event(name="afterlayout")]

/**
 * Fires before any <a href="Ext.Component.html">Ext.Component</a> is added or inserted into the container. A handler can return false to cancel the add.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component being added
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index at which the component will be added to the container's items collection
 *       </li>

 * </ul>
 */
[Event(name="beforeadd")]

/**
 * Fires before any <a href="Ext.Component.html">Ext.Component</a> is removed from the container. A handler can return false to cancel the remove.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component being removed
 *       </li>

 * </ul>
 */
[Event(name="beforeremove")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component that was removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]


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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'container' / the EXML element &lt;container>.</p>
 * @see ext.config.container
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container Sencha Docs Ext JS 3.4
 */
public class Container extends BoxComponent {

  /**
   * Create a new Container.
   *
   * @param config The config object
   * @see ext.config.container
   */
  public function Container(config:container = null) {
    super(null);
  }

  /**
   The collection of components in this container as a <a href="Ext.util.MixedCollection.html">Ext.util.MixedCollection</a>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-property-items Sencha Docs Ext JS 3.4
   */
  public native function get items():MixedCollection;

  /**
   * @private
   */
  public native function set items(value:MixedCollection):void;

  /**
   A string component id or the numeric index of the component that should be initially activated within the container's layout on render. For example, activeItem: 'item-1' or activeItem: 0 (index 0 = the first item in the container's collection). activeItem only applies to layout styles that can display items one at a time (like <a href="Ext.layout.AccordionLayout.html">Ext.layout.AccordionLayout</a>, <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> and <a href="Ext.layout.FitLayout.html">Ext.layout.FitLayout</a>). Related to <a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-activeItem">Ext.layout.ContainerLayout.activeItem</a>.
   */
  public native function get activeItem():*;

  /**
   If true the container will automatically destroy any contained component that is removed from it, else destruction must be handled manually (defaults to true).
   */
  public native function get autoDestroy():Boolean;

  /**
   When set to true (50 milliseconds) or a number of milliseconds, the layout assigned for this container will buffer the frequency it calculates and does a re-layout of components. This is useful for heavy containers or containers with a large quantity of sub-components for which frequent layout calls would be expensive. Defaults to <code>50</code>.
   */
  public native function get bufferResize():*;

  /**
   The default <a href="Ext.Component.html">xtype</a> of child Components to create in this Container when a child item is specified as a raw configuration object, rather than as an instantiated Component.
   <p>Defaults to <code>'panel'</code>, except <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> which defaults to <code>'menuitem'</code>, and <a href="Ext.Toolbar.html">Ext.Toolbar</a> and <a href="Ext.ButtonGroup.html">Ext.ButtonGroup</a> which default to <code>'button'</code>.</p>
   */
  public native function get defaultType():String;

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
   If true the container will force a layout initially even if hidden or collapsed. This option is useful for forcing forms to render in collapsed or hidden containers. (defaults to false).
   */
  public native function get forceLayout():Boolean;

  /**
   True to hide the borders of each contained component, false to defer to the component's existing border settings (defaults to false).
   */
  public native function get hideBorders():Boolean;

  /**
   This is a config object containing properties specific to the chosen <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> if <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> has been specified as a <i>string</i>.<br/><br/>
   */
  public native function get layoutConfig():Object;

  /**
   True to automatically monitor window resize events to handle anything that is sensitive to the current size of the viewport. This value is typically managed by the chosen <code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code> and should not need to be set manually.
   */
  public native function get monitorResize():Boolean;

  /**
   The event to listen to for resizing in layouts. Defaults to <code>'resize'</code>.
   */
  public native function get resizeEvent():String;

  /**
   * Adds <a href="Ext.Component.html">Component</a>(s) to this Container.
   <br/><p><b>Description</b> :</p><div><ul class="mdetail-params"><li>Fires the <a href="output/Ext.Container.html#Ext.Container-beforeadd">beforeadd</a> event before adding</li><li>The Container's <a href="output/Ext.Container.html#Ext.Container-defaults">default config values</a> will be applied accordingly (see <code><a href="output/Ext.Container.html#Ext.Container-defaults">defaults</a></code> for details).</li><li>Fires the <a href="output/Ext.Container.html#Ext.Container-add">add</a> event after the component has been added.</li></ul></div><br/><p><b>Notes</b> :</p><div><ul class="mdetail-params"><li>If the Container is <i>already rendered</i> when <code>add</code> is called, you may need to call <a href="output/Ext.Container.html#Ext.Container-doLayout">doLayout</a> to refresh the view which causes any unrendered child Components to be rendered. This is required so that you can <code>add</code> multiple child components if needed while only refreshing the layout once. For example:<pre><code>var tb = new <a href="Ext.Toolbar.html">Ext.Toolbar</a>();
   tb.render(document.body);  // toolbar is rendered
   tb.add({text:'Button 1'}); // add multiple items (<a href="output/Ext.Container.html#Ext.Container-defaultType">defaultType</a> for <a href="Ext.Toolbar.html">Toolbar</a> is 'button')
   tb.add({text:'Button 2'});
   tb.<a href="output/Ext.Container.html#Ext.Container-doLayout">doLayout</a>();             // refresh the layout
   </code></pre></li><li><i>Warning:</i> Containers directly managed by the BorderLayout layout manager may not be removed or added. See the Notes for <a href="Ext.layout.BorderLayout.html">BorderLayout</a> for more details.</li></ul></div>
   *
   * @param component Either one or more Components to add or an Array of Components to add. See <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> for additional information.

   * @return The Components that were added.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-add Sencha Docs Ext JS 3.4
   */
  public native function add(...component:Array):*;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-canLayout Sencha Docs Ext JS 3.4
   */
  public native function canLayout():void;

  /**
   * Cascades down the component/container hierarchy from this component (called first), calling the specified function with each component. The scope (<i>this</i>) of function call will be the scope provided or the current component. The arguments to the function will be the args provided or the current component. If the function returns false at any point, the cascade is stopped on that branch.
   *
   * @param fn The function to call
   * @param scope The scope of the function (defaults to current component)
   * @param args The args to call the function with (defaults to passing the current component)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-cascade Sencha Docs Ext JS 3.4
   */
  public native function cascade(fn:Function, scope:Object = null, args:Array = null):Container;

  /**
   * Force this container's layout to be recalculated. A call to this function is required after adding a new component to an already rendered container, or possibly after changing sizing/position properties of child components.
   *
   * @param shallow True to only calc the layout of this component, and let child components auto calc layouts as required (defaults to false, which calls doLayout recursively for each subcontainer)
   * @param force True to force a layout to occur, even if the item is hidden.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-doLayout Sencha Docs Ext JS 3.4
   */
  public native function doLayout(shallow:Boolean = false, force:Boolean = false):void;

  /**
   * Find a component under this container at any level by property
   *
   * @param prop
   * @param value
   * @return Array of Ext.Components
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-find Sencha Docs Ext JS 3.4
   */
  public native function find(prop:String, value:String):Array;

  /**
   * Find a component under this container at any level by a custom function. If the passed function returns true, the component will be included in the results. The passed function is called with the arguments (component, this container).
   *
   * @param fn The function to call
   * @param scope
   * @return Array of Ext.Components
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-findBy Sencha Docs Ext JS 3.4
   */
  public native function findBy(fn:Function, scope:Object = null):Array;

  /**
   * Find a component under this container at any level by id
   *
   * @param id
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-findById Sencha Docs Ext JS 3.4
   */
  public native function findById(id:String):Component;

  /**
   * Find a component under this container at any level by xtype or class
   *
   * @param xtype The xtype string for a component, or the class of the component directly
   * @param shallow False to check whether this Component is descended from the xtype (this is the default), or true to check whether this Component is directly of the specified xtype.
   * @return Array of Ext.Components
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-findByType Sencha Docs Ext JS 3.4
   */
  public native function findByType(xtype:*, shallow:Boolean = false):Array;

  /**
   * Get a component contained by this container (alias for items.get(key))
   *
   * @param key The index or id of the component
   * @return Ext.Component
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-get Sencha Docs Ext JS 3.4
   */
  public native function get(key:*):Component;

  /**
   * Examines this container's <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> <b>property</b> and gets a direct child component of this container.
   *
   * @param comp This parameter may be any of the following: <div><ul class="mdetail-params"><li>a <b><code>String</code></b> : representing the <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> of the child component</li><li>a <b><code>Number</code></b> : representing the position of the child component within the <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> <b>property</b></li></ul></div><p>For additional information see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.</p>
   * @return The component (if found).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-getComponent Sencha Docs Ext JS 3.4
   */
  public native function getComponent(comp:*):Component;

  /**
   * Returns the layout currently in use by the container. If the container does not currently have a layout set, a default <a href="Ext.layout.ContainerLayout.html">Ext.layout.ContainerLayout</a> will be created and set as the container's layout.
   *
   * @return layout The container's layout
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-getLayout Sencha Docs Ext JS 3.4
   */
  public native function getLayout():ContainerLayout;

  /**
   * Returns the Element to be used to contain the child Components of this Container.
   <p>An implementation is provided which returns the Container's <a href="output/Ext.Container.html#Ext.Container-getEl">Element</a>, but if there is a more complex structure to a Container, this may be overridden to return the element into which the <a href="output/Ext.Container.html#Ext.Container-layout">layout</a> renders child Components.</p>
   *
   * @return The Element to render child Components into.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-getLayoutTarget Sencha Docs Ext JS 3.4
   */
  public native function getLayoutTarget():Element;

  /**
   * Inserts a Component into this Container at a specified index. Fires the <a href="output/Ext.Container.html#Ext.Container-beforeadd">beforeadd</a> event before inserting, then fires the <a href="output/Ext.Container.html#Ext.Container-add">add</a> event after the Component has been inserted.
   *
   * @param index The index at which the Component will be inserted into the Container's items collection
   * @param component The child Component to insert.<br/><br/>Ext uses lazy rendering, and will only render the inserted Component should it become necessary.<br/><br/>A Component config object may be passed in order to avoid the overhead of constructing a real Component object if lazy rendering might mean that the inserted Component will not be rendered immediately. To take advantage of this 'lazy instantiation', set the <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a> config property to the registered type of the Component wanted.<br/><br/>For a list of all available xtypes, see <a href="Ext.Component.html">Ext.Component</a>.
   * @return component The Component (or config object) that was inserted with the Container's default config values applied.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-insert Sencha Docs Ext JS 3.4
   */
  public native function insert(index:Number, component:*):Component;

  /**
   *
   *
   * @param shallow
   * @param force
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-onLayout Sencha Docs Ext JS 3.4
   */
  protected native function onLayout(shallow:Boolean = false, force:Boolean = false):void;

  /**
   * Removes a component from this container. Fires the <a href="output/Ext.Container.html#Ext.Container-beforeremove">beforeremove</a> event before removing, then fires the <a href="output/Ext.Container.html#Ext.Container-remove">remove</a> event after the component has been removed.
   *
   * @param component The component reference or id to remove.
   * @param autoDestroy True to automatically invoke the removed Component's <a href="output/Ext.Component.html#Ext.Component-destroy">Ext.Component.destroy</a> function. Defaults to the value of this Container's <a href="output/Ext.Container.html#Ext.Container-autoDestroy">autoDestroy</a> config.
   * @return component The Component that was removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-remove Sencha Docs Ext JS 3.4
   */
  public native function remove(component:*, autoDestroy:Boolean = false):Component;

  /**
   * Removes all components from this container.
   *
   * @param autoDestroy True to automatically invoke the removed Component's <a href="output/Ext.Component.html#Ext.Component-destroy">Ext.Component.destroy</a> function. Defaults to the value of this Container's <a href="output/Ext.Container.html#Ext.Container-autoDestroy">autoDestroy</a> config.
   * @return Array of the destroyed components
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Container-method-removeAll Sencha Docs Ext JS 3.4
   */
  public native function removeAll(autoDestroy:Boolean = false):Array;

}
}
    