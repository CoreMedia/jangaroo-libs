package ext {
import ext.toolbar.Item;
import ext.toolbar.Spacer;
import ext.form.Field;
import ext.layout.ContainerLayout;

/**
 * <p>Basic Toolbar class. Although the <tt><b class='link' title='ext.Container#defaultType'>defaultType</b></tt> for Toolbar
 * is <tt><b class='link' title='ext.Button'>button</b></tt>, Toolbar elements (child items for the Toolbar container) may
 * be virtually any type of Component. Toolbar elements can be created explicitly via their constructors,
 * or implicitly via their xtypes, and can be <tt><b class='link'>#add</b></tt>ed dynamically.</p>
 * <p>Some items have shortcut strings for creation:</p>
 * <pre>
<u>Shortcut</u>  <u>xtype</u>          <u>Class</u>                  <u>Description</u>
'->'      'tbfill'       <b class='link'>ext.toolbar.Fill</b>       begin using the right-justified button container
'-'       'tbseparator'  <b class='link'>ext.toolbar.Separator</b>  add a vertical separator bar between toolbar items
' '       'tbspacer'     <b class='link'>ext.toolbar.Spacer</b>     add horiztonal space between elements
 * </pre>
 *
 * Example usage of various elements:
 * <pre><code>
var tb = new ext.Toolbar({
    renderTo: document.body,
    width: 600,
    height: 100,
    items: [
        {
            // xtype: 'button', // default for Toolbars, same as 'tbbutton'
            text: 'Button'
        },
        {
            xtype: 'splitbutton', // same as 'tbsplitbutton'
            text: 'Split Button'
        },
        // begin using the right-justified button container
        '->', // same as {xtype: 'tbfill'}, // Ext.toolbar.Fill
        {
            xtype: 'textfield',
            name: 'field1',
            emptyText: 'enter search term'
        },
        // add a vertical separator bar between toolbar items
        '-', // same as {xtype: 'tbseparator'} to create ext.Toolbar.Separator
        'text 1', // same as {xtype: 'tbtext', text: 'text1'} to create ext.Toolbar.TextItem
        {xtype: 'tbspacer'},// same as ' ' to create ext.toolbar.Spacer
        'text 2',
        {xtype: 'tbspacer', width: 50}, // add a 50px space
        'text 3'
    ]
});
 * </code></pre>
 * Example adding a ComboBox within a menu of a button:
 * <pre><code>
// ComboBox creation
var combo = new ext.form.ComboBox({
    store: new ext.data.ArrayStore({
        autoDestroy: true,
        fields: ['initials', 'fullname'],
        data : [
            ['FF', 'Fred Flintstone'],
            ['BR', 'Barney Rubble']
        ]
    }),
    displayField: 'fullname',
    typeAhead: true,
    mode: 'local',
    forceSelection: true,
    triggerAction: 'all',
    emptyText: 'Select a name...',
    selectOnFocus: true,
    width: 135,
    getListParent: function() {
        return this.el.up('.x-menu');
    },
    iconCls: 'no-icon' //use iconCls if placing within menu to shift to right side of menu
});

// put ComboBox in a Menu
var menu = new Ext.menu.Menu({
    id: 'mainMenu',
    items: [
        combo // A Field in a Menu
    ]
});

// add a Button with the menu
tb.add({
        text:'Button w/ Menu',
        menu: menu  // assign menu by instance
    });
tb.doLayout();
 * </code></pre>
*/
public class Toolbar extends Container {
/**
 * @constructor
 * Creates a new Toolbar
 * @param config A config object or an array of buttons to <tt><b class='link'>#add</b></tt>
 * @xtype toolbar
 */
  public function Toolbar(config : Object = null) {
    super(config);
    config++;
  }

  public var layout : ContainerLayout;
  //public var defaultType;
  public var trackMenus;
  public var internalDefaults;
  public var toolbarCls;
    override protected native function initComponent() : void;
  override protected native function onRender(container : Element, position : Element) : void;
    /**
     * Adds element(s) to the toolbar -- this function takes a variable number of
     * arguments of mixed type and adds them to the toolbar.
     * @param arg1 The following types of arguments are all valid:<br />
     * <ul>
     * <li><b class='link'>ext.Button</b> config: A valid button config object (equivalent to <b class='link'>#addButton</b>)</li>
     * <li>HtmlElement: Any standard HTML element (equivalent to <b class='link'>#addElement</b>)</li>
     * <li>Field: Any form field (equivalent to <b class='link'>#addField</b>)</li>
     * <li>Item: Any subclass of <b class='link'>ext.Toolbar.Item</b> (equivalent to <b class='link'>#addItem</b>)</li>
     * <li>String: Any generic string (gets wrapped in a <b class='link'>ext.Toolbar.TextItem</b>, equivalent to <b class='link'>#addText</b>).
     * Note that there are a few special strings that are treated differently as explained next.</li>
     * <li>'-': Creates a separator element (equivalent to <b class='link'>#addSeparator</b>)</li>
     * <li>' ': Creates a spacer element (equivalent to <b class='link'>#addSpacer</b>)</li>
     * <li>'->': Creates a fill element (equivalent to <b class='link'>#addFill</b>)</li>
     * </ul>
     * @param arg2
     * @param argn
     * @method add
     */
    override public native function add(arg1 : *, arg2 : Object = null, argn : Object = null) : Component;
    override protected native function lookupComponent(comp : Component) : void;
    override protected native function applyDefaults(c) : void;
    protected native function constructItem(item, type) : void;
    /**
     * Adds a separator
     * @return The separator <b class='link' title='ext.Toolbar.Item'>item</b>
     */
    public native function addSeparator() : Item;
    /**
     * Adds a spacer element
     * @return The spacer item
     */
    public native function addSpacer() : ext.toolbar.Spacer;
    /**
     * Forces subsequent additions into the float:right toolbar
     */
    public native function addFill() : void;
    /**
     * Adds any standard HTML element to the toolbar
     * @param el The element or id of the element to add
     * @return The element's item
     */
    public native function addElement(el : *) : Item;
    /**
     * Adds any Toolbar.Item or subclass
     * @param item
     * @return The item
     */
    public native function addItem(item : Item) : Item;
    /**
     * Adds a button (or buttons). See <b class='link'>ext.Button</b> for more info on the config.
     * @param config A button config or array of configs
     * @return 
     */
    public native function addButton(config : *) : *;
    /**
     * Adds text to the toolbar
     * @param text The text to add
     * @return The element's item
     */
    public native function addText(text : String) : Item;
    /**
     * Adds a new element to the toolbar from the passed <b class='link'>ext.DomHelper</b> config
     * @param config
     * @return The element's item
     */
    public native function addDom(config : Object) : Item;
    /**
     * Adds a dynamically rendered Ext.form field (TextField, ComboBox, etc). Note: the field should not have
     * been rendered yet. For a field that has already been rendered, use <b class='link'>#addElement</b>.
     * @param field
     * @return 
     */
    public native function addField(field : Field) : Item;
    /**
     * Inserts any <b class='link'>ext.Toolbar.Item</b>/<b class='link'>ext.Button</b> at the specified index.
     * @param index The index where the item is to be inserted
     * @param item The button, or button config object to be
     * inserted, or an array of buttons/configs.
     * @return 
     */
    public native function insertButton(index : Number, item : *) : *;
    protected native function initMenuTracking(item) : void;
    protected native function constructButton(item) : void;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    protected native function onButtonTriggerOver(btn) : void;
    protected native function onButtonMenuShow(btn) : void;
    protected native function onButtonMenuHide(btn) : void;
/**
*/
}}
