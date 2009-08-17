package ext {
import ext.layout.ContainerLayout;
import ext.util.MixedCollection;

/**
 * <p>Base class for any <b class='link'>ext.BoxComponent</b> that may contain other Components. Containers handle the
 * basic behavior of containing items, namely adding, inserting and removing items.</p>
 *
 * <p>The most commonly used Container classes are <b class='link'>ext.Panel</b>, <b class='link'>ext.Window</b> and <b class='link'>ext.TabPanel</b>.
 * If you do not need the capabilities offered by the aforementioned classes you can create a lightweight
 * Container to be encapsulated by an HTML element to your specifications by using the
 * <tt><b class='link' title='ext.Component#autoEl'>autoEl</b></tt> config option. This is a useful technique when creating
 * embedded <b class='link' title='Ext.layout.ColumnLayout'>column</b> layouts inside <b class='link' title='ext.form.FormPanel'>FormPanels</b>
 * for example.</p>
 *
 * <p>The code below illustrates both how to explicitly create a Container, and how to implicitly
 * create one using the <b><tt>'container'</tt></b> xtype:<pre><code>
// explicitly create a Container
var embeddedColumns = new ext.Container({
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
//  The two items below will be ext.Containers, each encapsulated by a &lt;DIV> element.
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
});</code></pre></p>
 *
 * <p><u><b>Layout</b></u></p>
 * <p>Container classes delegate the rendering of child Components to a layout
 * manager class which must be configured into the Container using the
 * <code><b class='link'>#layout</b></code> configuration property.</p>
 * <p>When either specifying child <code><b class='link'>#items</b></code> of a Container,
 * or dynamically <b class='link' title='#add'>adding</b> Components to a Container, remember to
 * consider how you wish the Container to arrange those child elements, and
 * whether those child elements need to be sized using one of Ext's built-in
 * <b><code><b class='link'>#layout</b></code></b> schemes. By default, Containers use the
 * <b class='link' title='Ext.layout.ContainerLayout'>ContainerLayout</b> scheme which only
 * renders child components, appending them one after the other inside the
 * Container, and <b>does not apply any sizing</b> at all.</p>
 * <p>A common mistake is when a developer neglects to specify a
 * <b><code><b class='link'>#layout</b></code></b> (e.g. widgets like GridPanels or
 * TreePanels are added to Containers for which no <tt><b class='link'>#layout</b></tt>
 * has been specified). If a Container is left to use the default
 * <b class='link' title='Ext.layout.ContainerLayout'>ContainerLayout</b> scheme, none of its
 * child components will be resized, or changed in any way when the Container
 * is resized.</p>
 * <p>Certain layout managers allow dynamic addition of child components.
 * Those that do include <b class='link'>Ext.layout.CardLayout</b>,
 * <b class='link'>Ext.layout.AnchorLayout</b>, <b class='link'>Ext.layout.FormLayout</b>, and
 * <b class='link'>Ext.layout.TableLayout</b>. For example:<pre><code>
//  Create the GridPanel.
var myNewGrid = new Ext.grid.GridPanel({
    store: myStore,
    columns: myColumnModel,
    title: 'Results', // the title becomes the title of the tab
});

myTabPanel.add(myNewGrid); // <b class='link'>ext.TabPanel</b> implicitly uses <b class='link' title='Ext.layout.CardLayout'>CardLayout</b>
myTabPanel.<b class='link' title='ext.TabPanel#setActiveTab'>setActiveTab</b>(myNewGrid);
 * </code></pre></p>
 * <p>The example above adds a newly created GridPanel to a TabPanel. Note that
 * a TabPanel uses <b class='link'>Ext.layout.CardLayout</b> as its layout manager which
 * means all its child items are sized to <b class='link' title='Ext.layout.FitLayout'>fit</b>
 * exactly into its client area.
 * <p><b><u>Overnesting is a common problem</u></b>.
 * An example of overnesting occurs when a GridPanel is added to a TabPanel
 * by wrapping the GridPanel <i>inside</i> a wrapping Panel (that has no
 * <tt><b class='link'>#layout</b></tt> specified) and then add that wrapping Panel
 * to the TabPanel. The point to realize is that a GridPanel <b>is</b> a
 * Component which can be added directly to a Container. If the wrapping Panel
 * has no <tt><b class='link'>#layout</b></tt> configuration, then the overnested
 * GridPanel will not be sized as expected.<p>
</code></pre>
 *
 * <p><u><b>Adding via remote configuration</b></u></p>
 *
 * <p>A server side script can be used to add Components which are generated dynamically on the server.
 * An example of adding a GridPanel to a TabPanel where the GridPanel is generated by the server
 * based on certain parameters:
 * </p><pre><code>
// execute an Ajax request to invoke server side script:
ext.Ajax.request({
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
        ext.Msg.alert("Grid create failed", "Server communication failure");
    }
});
</code></pre>
 * <p>The server script needs to return an executable Javascript statement which, when processed
 * using <tt>eval()</tt>, will return either a config object with an <b class='link' title='ext.Component#xtype'>xtype</b>,
 * or an instantiated Component. The server might return this for example:</p><pre><code>
(function() {
    function formatDate(value){
        return value ? value.dateFormat('M d, Y') : '';
    };

    var store = new ext.data.Store({
        url: 'get-invoice-data.php',
        baseParams: {
            startDate: '01/01/2008',
            endDate: '01/31/2008'
        },
        reader: new ext.data.JsonReader({
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
        bbar: new ext.PagingToolbar(store),
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
</code></pre>
 * <p>When the above code fragment is passed through the <tt>eval</tt> function in the success handler
 * of the Ajax request, the code is executed by the Javascript processor, and the anonymous function
 * runs, and returns the instantiated grid component.</p>
 * <p>Note: since the code above is <i>generated</i> by a server script, the <tt>baseParams</tt> for
 * the Store, the metadata to allow generation of the Record layout, and the ColumnModel
 * can all be generated into the code since these are all known on the server.</p>
 *
 * @xtype container
 */
    /**
*/
public class Container extends BoxComponent {

  public function Container(config:*) {
    super(config);
  }

  /**
     * @cfg {Boolean} monitorResize
     * True to automatically monitor window resize events to handle anything that is sensitive to the current size
     * of the viewport.  This value is typically managed by the chosen <code><b class='link'>#layout</b></code> and should not need
     * to be set manually.
     */
    /**
     * @cfg {String/Object} layout
     * When creating complex UIs, it is important to remember that sizing and
     * positioning of child items is the responsibility of the Container's
     * layout manager. If you expect child items to be sized in response to
     * user interactions, <b>you must specify a layout manager</b> which
     * creates and manages the type of layout you have in mind.  For example:<pre><code>
new ext.Window({
    width:300, height: 300,
    layout: 'fit', // explicitly set layout manager: override the default (layout:'auto')
    items: [{
        title: 'Panel inside a Window'
    }]
}).show();
     * </code></pre>
     * <p>Omitting the <b class='link'>#layout</b> config means that the
     * <b class='link' title='Ext.layout.ContainerLayout default layout'>manager</b> will be used which does
     * nothing but render child components sequentially into the Container (no sizing or
     * positioning will be performed in this situation).</p>
     * <p>The layout manager class for this container may be specified as either as an
     * Object or as a String:</p>
     * <div><ul class="mdetail-params">
     *
     * <li><u>Specify as an Object</u></li>
     * <div><ul class="mdetail-params">
     * <li>Example usage:</li>
<pre><code>
layout: {
    type: 'vbox',
    padding: '5',
    align: 'left'
}
</code></pre>
     *
     * <li><tt><b>type</b></tt></li>
     * <br/><p>The layout type to be used for this container.  If not specified,
     * a default <b class='link'>Ext.layout.ContainerLayout</b> will be created and used.</p>
     * <br/><p>Valid layout <tt>type</tt> values are:</p>
     * <div class="sub-desc"><ul class="mdetail-params">
     * <li><tt><b class='link' title='Ext.layout.AbsoluteLayout'>absolute</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.AccordionLayout'>accordion</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.AnchorLayout'>anchor</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.ContainerLayout'>auto</b></tt> &nbsp;&nbsp;&nbsp; <b>Default</b></li>
     * <li><tt><b class='link' title='Ext.layout.BorderLayout'>border</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.CardLayout'>card</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.ColumnLayout'>column</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.FitLayout'>fit</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.FormLayout'>form</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.HBoxLayout'>hbox</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.MenuLayout'>menu</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.TableLayout'>table</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.ToolbarLayout'>toolbar</b></tt></li>
     * <li><tt><b class='link' title='Ext.layout.VBoxLayout'>vbox</b></tt></li>
     * </ul></div>
     *
     * <li>Layout specific configuration properties</li>
     * <br/><p>Additional layout specific configuration properties may also be
     * specified. For complete details regarding the valid config options for
     * each layout type, see the layout class corresponding to the <tt>type</tt>
     * specified.</p>
     *
     * </ul></div>
     *
     * <li><u>Specify as a String</u></li>
     * <div><ul class="mdetail-params">
     * <li>Example usage:</li>
<pre><code>
layout: 'vbox',
layoutConfig: {
    padding: '5',
    align: 'left'
}
</code></pre>
     * <li><tt><b>layout</b></tt></li>
     * <br/><p>The layout <tt>type</tt> to be used for this container (see list
     * of valid layout type values above).</p><br/>
     * <li><tt><b class='link'>#layoutConfig</b></tt></li>
     * <br/><p>Additional layout specific configuration properties. For complete
     * details regarding the valid config options for each layout type, see the
     * layout class corresponding to the <tt>layout</tt> specified.</p>
     * </ul></div></ul></div>
     */
    /**
     * @cfg {Object} layoutConfig
     * This is a config object containing properties specific to the chosen
     * <b><code><b class='link'>#layout</b></code></b> if <b><code><b class='link'>#layout</b></code></b>
     * has been specified as a <i>string</i>.</p>
     */
    /**
     * @cfg {Boolean/Number} bufferResize
     * When set to true (100 milliseconds) or a number of milliseconds, the layout assigned for this container will buffer
     * the frequency it calculates and does a re-layout of components. This is useful for heavy containers or containers
     * with a large quantity of sub-components for which frequent layout calls would be expensive.
     */
    public var bufferResize : *;
    /**
     * @cfg {String/Number} activeItem
     * A string component id or the numeric index of the component that should be initially activated within the
     * container's layout on render.  For example, activeItem: 'item-1' or activeItem: 0 (index 0 = the first
     * item in the container's collection).  activeItem only applies to layout styles that can display
     * items one at a time (like <b class='link'>Ext.layout.AccordionLayout</b>, <b class='link'>Ext.layout.CardLayout</b> and
     * <b class='link'>Ext.layout.FitLayout</b>).  Related to <b class='link'>Ext.layout.ContainerLayout#activeItem</b>.
     */
    /**
     * @cfg {Object/Array} items
     * <pre><b>** IMPORTANT</b>: be sure to specify a <b><code><b class='link'>#layout</b></code> ! **</b></pre>
     * <p>A single item, or an array of child Components to be added to this container,
     * for example:</p>
     * <pre><code>
// specifying a single item
items: {...},
layout: 'fit',    // specify a layout!

// specifying multiple items
items: [{...}, {...}],
layout: 'anchor', // specify a layout!
     * </code></pre>
     * <p>Each item may be:</p>
     * <div><ul class="mdetail-params">
     * <li>any type of object based on <b class='link'>ext.Component</b></li>
     * <li>a fully instanciated object or</li>
     * <li>an object literal that:</li>
     * <div><ul class="mdetail-params">
     * <li>has a specified <code><b class='link' title='ext.Component#xtype'>xtype</b></code></li>
     * <li>the <b class='link'>ext.Component#xtype</b> specified is associated with the Component
     * desired and should be chosen from one of the available xtypes as listed
     * in <b class='link'>ext.Component</b>.</li>
     * <li>If an <code><b class='link' title='ext.Component#xtype'>xtype</b></code> is not explicitly
     * specified, the <b class='link'>#defaultType</b> for that Container is used.</li>
     * <li>will be "lazily instanciated", avoiding the overhead of constructing a fully
     * instanciated Component object</li>
     * </ul></div></ul></div>
     * <p><b>Notes</b>:</p>
     * <div><ul class="mdetail-params">
     * <li>Ext uses lazy rendering. Child Components will only be rendered
     * should it become necessary. Items are automatically laid out when they are first
     * shown (no sizing is done while hidden), or in response to a <b class='link'>#doLayout</b> call.</li>
     * <li>Do not specify <code><b class='link' title='ext.Panel#contentEl'>contentEl</b></code>/
     * <code><b class='link' title='ext.Panel#html'>html</b></code> with <code>items</code>.</li>
     * </ul></div>
     */
    /**
     * @cfg {Object} defaults
     * <p>A config object that will be applied to all components added to this container either via the <b class='link'>#items</b>
     * config or via the <b class='link'>#add</b> or <b class='link'>#insert</b> methods.  The <tt>defaults</tt> config can contain any
     * number of name/value property pairs to be added to each item, and should be valid for the types of items
     * being added to the container.  For example, to automatically apply padding to the body of each of a set of
     * contained <b class='link' title='ext.Panel} items, you could pass:'><tt>defaults: {bodyStyle:'padding:15px'</b></tt>.</p><br/>
     * <p><b>Note</b>: <tt>defaults</tt> will not be applied to config objects if the option is already specified.
     * For example:</p><pre><code>
defaults: {               // defaults are applied to items, not the container
    autoScroll:true
},
items: [
    {
        xtype: 'panel',   // defaults <b>do not</b> have precedence over
        id: 'panel1',     // options in config objects, so the defaults
        autoScroll: false // will not be applied here, panel1 will be autoScroll:false
    },
    new ext.Panel({       // defaults <b>do</b> have precedence over options
        id: 'panel2',     // options in components, so the defaults
        autoScroll: false // will be applied here, panel2 will be autoScroll:true.
    })
]
     * </code></pre>
     */
    /** @cfg {Boolean} autoDestroy
     * If true the container will automatically destroy any contained component that is removed from it, else
     * destruction must be handled manually (defaults to true).
     */
    public var autoDestroy  : Boolean;
    /** @cfg {Boolean} forceLayout
     * If true the container will force a layout initially even if hidden or collapsed. This option
     * is useful for forcing forms to render in collapsed or hidden containers. (defaults to false).
     */
    public var forceLayout : Boolean;
    /** @cfg {Boolean} hideBorders
     * True to hide the borders of each contained component, false to defer to the component's existing
     * border settings (defaults to false).
     */
    /** @cfg {String} defaultType
     * <p>The default <b class='link' title='ext.Component'>xtype</b> of child Components to create in this Container when
     * a child item is specified as a raw configuration object, rather than as an instantiated Component.</p>
     * <p>Defaults to <tt>'panel'</tt>, except <b class='link'>Ext.menu.Menu</b> which defaults to <tt>'menuitem'</tt>,
     * and <b class='link'>ext.Toolbar</b> and <b class='link'>ext.ButtonGroup</b> which default to <tt>'button'</tt>.</p>
     */
    public var defaultType  : String;
    override protected native function initComponent() : void;
        /**
         * The collection of components in this container as a <b class='link'>Ext.util.MixedCollection</b>
         * @property items
         */
        public var items : MixedCollection;
    protected native function initItems() : void;
    protected native function setLayout(layout) : void;
    override public native function render(container : * = undefined, position : * = undefined):void;

  /**
     * <p>Returns the Element to be used to contain the child Components of this Container.</p>
     * <p>An implementation is provided which returns the Container's <b class='link' title='#getEl'>Element</b>, but
     * if there is a more complex structure to a Container, this may be overridden to return
     * the element into which the <b class='link' title='#layout'>layout</b> renders child Components.</p>
     * @return The Element to render child Components into.
     */
    public native function getLayoutTarget() : Element;
    public native function getComponentId(comp : Component) : void;
    /**
     * <p>Adds <b class='link' title='ext.Component'>Component</b>(s) to this Container.</p>
     * <br><p><b>Description</b></u> :
     * <div><ul class="mdetail-params">
     * <li>Fires the <b class='link'>#beforeadd</b> event before adding</li>
     * <li>The Container's <b class='link' title='#defaults default config'>values</b> will be applied
     * accordingly (see <code><b class='link'>#defaults</b></code> for details).</li>
     * <li>Fires the <b class='link'>#add</b> event after the component has been added.</li>
     * </ul></div>
     * <br><p><b>Notes</b></u> :
     * <div><ul class="mdetail-params">
     * <li>If the Container is <i>already rendered</i> when <tt>add</tt>
     * is called, you may need to call <b class='link'>#doLayout</b> to refresh the view which causes
     * any unrendered child Components to be rendered. This is required so that you can
     * <tt>add</tt> multiple child components if needed while only refreshing the layout
     * once. For example:<pre><code>
var tb = new <b class='link'>ext.Toolbar</b>();
tb.render(document.body);  // toolbar is rendered
tb.add({text:'Button 1'}); // add multiple items (<b class='link'>#defaultType</b> for <b class='link' title='ext.Toolbar'>Toolbar</b> is 'button')
tb.add({text:'Button 2'});
tb.<b class='link'>#doLayout</b>();             // refresh the layout
     * </code></pre></li>
     * <li><i>Warning:</i> Containers directly managed by the BorderLayout layout manager
     * may not be removed or added.  See the Notes for <b class='link' title='Ext.layout.BorderLayout'>BorderLayout</b>
     * for more details.</li>
     * </ul></div>
     * @param component
     * <p>Either a single component or an Array of components to add.  See
     * <code><b class='link'>#items</b></code> for additional information.</p>
     * @param  component_2
     * @param  component_n
     * @return component The Component (or config object) that was added.
     */
    public native function add(component : *, component_2 : Object = null, component_n : Object = null) : Component;
    /**
     * Inserts a Component into this Container at a specified index. Fires the
     * <b class='link'>#beforeadd</b> event before inserting, then fires the <b class='link'>#add</b> event after the
     * Component has been inserted.
     * @param index The index at which the Component will be inserted
     * into the Container's items collection
     * @param component The child Component to insert.<br><br>
     * Ext uses lazy rendering, and will only render the inserted Component should
     * it become necessary.<br><br>
     * A Component config object may be passed in order to avoid the overhead of
     * constructing a real Component object if lazy rendering might mean that the
     * inserted Component will not be rendered immediately. To take advantage of
     * this 'lazy instantiation', set the <b class='link'>ext.Component#xtype</b> config
     * property to the registered type of the Component wanted.<br><br>
     * For a list of all available xtypes, see <b class='link'>ext.Component</b>.
     * @return component The Component (or config object) that was
     * inserted with the Container's default config values applied.
     */
    public native function insert(index : Number, component : Component) : Component;
    protected native function applyDefaults(c) : void;
    protected native function onBeforeAdd(item) : void;
    /**
     * Removes a component from this container.  Fires the <b class='link'>#beforeremove</b> event before removing, then fires
     * the <b class='link'>#remove</b> event after the component has been removed.
     * @param component The component reference or id to remove.
     * @param autoDestroy True to automatically invoke the removed Component's <b class='link'>ext.Component#destroy</b> function.
     * Defaults to the value of this Container's <b class='link'>#autoDestroy</b> config.
     * @return component The Component that was removed.
     */
    public native function remove(component : *, autoDestroy : Boolean = false) : Component;
    /**
     * Removes all components from this container.
     * @param autoDestroy True to automatically invoke the removed Component's <b class='link'>ext.Component#destroy</b> function.
     * Defaults to the value of this Container's <b class='link'>#autoDestroy</b> config.
     * @return Array of the destroyed components
     */
    public native function removeAll(autoDestroy : Boolean = false) : Array;
    /**
     * Examines this container's <code><b class='link'>#items</b></code> <b>property</b>
     * and gets a direct child component of this container.
     * @param comp This parameter may be any of the following:
     * <div><ul class="mdetail-params">
     * <li>a <b><tt>String</tt></b> : representing the <code><b class='link' title='ext.Component#itemId'>itemId</b></code>
     * or <code><b class='link' title='ext.Component#id'>id</b></code> of the child component </li>
     * <li>a <b><tt>Number</tt></b> : representing the position of the child component
     * within the <code><b class='link'>#items</b></code> <b>property</b></li>
     * </ul></div>
     * <p>For additional information see <b class='link'>Ext.util.MixedCollection#get</b>.
     * @return The component (if found).
     */
    public native function getComponent(comp : *) : Component;
    protected native function lookupComponent(comp : Component) : void;
    protected native function createComponent(config : Object) : void;
    /**
     * Force this container's layout to be recalculated. A call to this function is required after adding a new component
     * to an already rendered container, or possibly after changing sizing/position properties of child components.
     * @param shallow True to only calc the layout of this component, and let child components auto
     * calc layouts as required (defaults to false, which calls doLayout recursively for each subcontainer)
     * @param force True to force a layout to occur, even if the item is hidden.
     * @return this
     */
    public native function doLayout(shallow : Boolean = undefined, force : Boolean = undefined) : Container;
    protected native function onLayout(shallow : Boolean = false, force : Boolean = false)  : void;
    override protected native function onShow() : void;
    /**
     * Returns the layout currently in use by the container.  If the container does not currently have a layout
     * set, a default <b class='link'>Ext.layout.ContainerLayout</b> will be created and set as the container's layout.
     * @return layout The container's layout
     */
    public native function getLayout() : ContainerLayout;
    override protected native function beforeDestroy() : void;
    /**
     * Bubbles up the component/container heirarchy, calling the specified function with each component. The scope (<i>this</i>) of
     * function call will be the scope provided or the current component. The arguments to the function
     * will be the args provided or the current component. If the function returns false at any point,
     * the bubble is stopped.
     * @param fn The function to call
     * @param scope The scope of the function (defaults to current node)
     * @param args The args to call the function with (default to passing the current component)
     * @return this
     */
    public native function bubble(fn : Function, scope : Object = undefined, args : Array = undefined) : Container;
    /**
     * Cascades down the component/container heirarchy from this component (called first), calling the specified function with
     * each component. The scope (<i>this</i>) of
     * function call will be the scope provided or the current component. The arguments to the function
     * will be the args provided or the current component. If the function returns false at any point,
     * the cascade is stopped on that branch.
     * @param fn The function to call
     * @param scope The scope of the function (defaults to current component)
     * @param args The args to call the function with (defaults to passing the current component)
     * @return this
     */
    public native function cascade(fn : Function, scope : Object = undefined, args : Array = undefined) : Container;
    /**
     * Find a component under this container at any level by id
     * @param id
     * @return 
     */
    public native function findById(id : String) : Component;
    /**
     * Find a component under this container at any level by xtype or class
     * @param xtype The xtype string for a component, or the class of the component directly
     * @param shallow False to check whether this Component is descended from the xtype (this is
     * the default), or true to check whether this Component is directly of the specified xtype.
     * @return Array of ext.Components
     */
    public native function findByType(xtype : *, shallow : Boolean = undefined) : Array;
    /**
     * Find a component under this container at any level by property
     * @param prop
     * @param value
     * @return Array of ext.Components
     */
    public native function find(prop : String, value : String) : Array;
    /**
     * Find a component under this container at any level by a custom function. If the passed function returns
     * true, the component will be included in the results. The passed function is called with the arguments (component, this container).
     * @param fn The function to call
     * @param scope
     * @return Array of ext.Components
     */
    public native function findBy(fn : Function, scope : Object = undefined) : Array;
    /**
     * Get a component contained by this container (alias for items.get(key))
     * @param key The index or id of the component
     * @return ext.Component
     */
    public native function get(key : *) : Component;
public static var LAYOUTS = {};

}}
