package ext.form {
import ext.DataView;
import ext.Element;
import ext.EventObjectClass;
import ext.XTemplate;
import ext.data.Store;

/**
 * <p>A combobox control with support for autocomplete, remote-loading, paging and many other features.</p>
 * <p>A ComboBox works in a similar manner to a traditional HTML &lt;select> field. The difference is
 * that to submit the <b class='link' title='#valueField'>valueField</b>, you must specify a <b class='link' title='#hiddenName'>hiddenName</b> to create a hidden input
 * field to hold the value of the valueField. The <i><b class='link' title='#displayField'>displayField</b></i> is shown in the text field
 * which is named according to the <b class='link' title='#name'>name</b>.</p>
 * <p><b><u>Events</u></b></p>
 * <p>To do something when something in ComboBox is selected, configure the select event:<pre><code>
var cb = new ext.form.ComboBox({
    // all of your config options
    listeners:{
         scope: yourScope,
         'select': yourFunction
    }
});

// Alternatively, you can assign events after the object is created:
var cb = new ext.form.ComboBox(yourOptions);
cb.on('select', yourFunction, yourScope);
 * </code></pre></p>
 *
 * <p><b><u>ComboBox in Grid</u></b></p>
 * <p>If using a ComboBox in an <b class='link' title='Ext.grid.EditorGridPanel Editor'>Grid</b> a <b class='link' title='Ext.grid.Column#renderer'>renderer</b>
 * will be needed to show the displayField when the editor is not active.  Set up the renderer manually, or implement
 * a reusable render, for example:<pre><code>
// create reusable renderer
Ext.util.Format.comboRenderer = function(combo){
    return function(value){
        var record = combo.findRecord(combo.<b class='link' title='#valueField'>valueField</b>, value);
        return record ? record.get(combo.<b class='link' title='#displayField'>displayField</b>) : combo.<b class='link' title='#valueNotFoundText'>valueNotFoundText</b>;
    }
}

// create the combo instance
var combo = new ext.form.ComboBox({
    <b class='link' title='#typeAhead'>typeAhead</b>: true,
    <b class='link' title='#triggerAction'>triggerAction</b>: 'all',
    <b class='link' title='#lazyRender'>lazyRender</b>:true,
    <b class='link' title='#mode'>mode</b>: 'local',
    <b class='link' title='#store'>store</b>: new ext.data.ArrayStore({
        id: 0,
        fields: [
            'myId',
            'displayText'
        ],
        data: [[1, 'item1'], [2, 'item2']]
    }),
    <b class='link' title='#valueField'>valueField</b>: 'myId',
    <b class='link' title='#displayField'>displayField</b>: 'displayText'
});

// snippet of column model used within grid
var cm = new Ext.grid.ColumnModel([{
       ...
    },{
       header: "Some Header",
       dataIndex: 'whatever',
       width: 130,
       editor: combo, // specify reference to combo instance
       renderer: Ext.util.Format.comboRenderer(combo) // pass combo instance to reusable renderer
    },
    ...
]);
 * </code></pre></p>
 *
 * <p><b><u>Filtering</u></b></p>
 * <p>A ComboBox <b class='link' title='#doQuery uses filtering'>itself</b>, for information about filtering the ComboBox
 * store manually see <code><b class='link' title='#lastQuery'>lastQuery</b></code>.</p>
*/
public class ComboBox extends TriggerField {
/**
 * @constructor
 * Create a new ComboBox.
 * @param config Configuration options
 * @xtype combo
 */
public function ComboBox(config:Object = null) {
  super(config);
}
    /**
     * @cfg {Mixed} transform The id, DOM node or element of an existing HTML SELECT to convert to a ComboBox.
     * Note that if you specify this and the combo is going to be in an <b class='link'>ext.form.BasicForm</b> or
     * <b class='link'>ext.form.FormPanel</b>, you must also set <code><b class='link' title='#lazyRender'>lazyRender</b> = true</code>.
     */
    /**
     * @cfg {Boolean} lazyRender <code>true</code> to prevent the ComboBox from rendering until requested
     * (should always be used when rendering into an <b class='link'>ext.Editor</b> (e.g. <b class='link' title='Ext.grid.EditorGridPanel'>Grids</b>),
     * defaults to <code>false</code>).
     */
    /**
     * @cfg {String/Object} autoCreate <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec, or <code>true</code> for a default
     * element spec. Used to create the <b class='link' title='ext.Component#getEl'>Element</b> which will encapsulate this Component.
     * See <code><b class='link' title='ext.Component#autoEl'>autoEl</b></code> for details.  Defaults to:</p>
     * <pre><code>{tag: "input", type: "text", size: "24", autocomplete: "off"}</code></pre>
     */
    /**
     * @cfg {ext.data.Store/Array} store The data source to which this combo is bound (defaults to <code>undefined</code>).
     * Acceptable values for this property are:
     * <div class="mdetail-params"><ul>
     * <li><b>any <b class='link' title='ext.data.Store'>Store</b> subclass</b></li>
     * <li><b>an Array</b> : Arrays will be converted to a <b class='link'>ext.data.ArrayStore</b> internally.
     * <div class="mdetail-params"><ul>
     * <li><b>1-dimensional array</b> : (e.g., <code>['Foo','Bar']</code>)<div class="sub-desc">
     * A 1-dimensional array will automatically be expanded (each array item will be the combo
     * <b class='link' title='#valueField'>value</b> and <b class='link' title='#displayField'>text</b>)</div></li>
     * <li><b>2-dimensional array</b> : (e.g., <code>[['f','Foo'],['b','Bar']]</code>)<div class="sub-desc">
     * For a multi-dimensional array, the value in index 0 of each item will be assumed to be the combo
     * <b class='link' title='#valueField'>value</b>, while the value at index 1 is assumed to be the combo <b class='link' title='#displayField'>text</b>.
     * </div></li></ul></div></li></ul></div>
     * <p>See also <code><b class='link' title='#mode'>mode</b></code>.</p>
     */
    /**
     * @cfg {String} title If supplied, a header element is created containing this text and added into the top of
     * the dropdown list (defaults to undefined, with no header element)
     */
    //protected var defaultAutoCreate  : String;
    /**
     * @cfg {Number} listWidth The width (used as a parameter to <b class='link'>ext.Element#setWidth</b>) of the dropdown
     * list (defaults to the width of the ComboBox field).  See also <code><b class='link' title='#minListWidth'>minListWidth</b>
     */
    /**
     * @cfg {String} displayField The underlying <b class='link' title='ext.data.Field#name data field'>name</b> to bind to this
     * ComboBox (defaults to undefined if <code><b class='link' title='#mode'>mode</b> = 'remote'</code> or <code>'text'</code> if
     * <b class='link' title='#transform transforming a'>select</b> a select).
     * <p>See also <code><b class='link' title='#valueField'>valueField</b></code>.</p>
     * <p><b>Note</b>: if using a ComboBox in an <b class='link' title='Ext.grid.EditorGridPanel Editor'>Grid</b> a
     * <b class='link' title='Ext.grid.Column#renderer'>renderer</b> will be needed to show the displayField when the editor is not
     * active.</p>
     */
  public var displayField : String;
    /**
     * @cfg {String} valueField The underlying <b class='link' title='ext.data.Field#name data value'>name</b> to bind to this
     * ComboBox (defaults to undefined if <code><b class='link' title='#mode'>mode</b> = 'remote'</code> or <code>'value'</code> if
     * <b class='link' title='#transform transforming a'>select</b>).
     * <p><b>Note</b>: use of a <code>valueField</code> requires the user to make a selection in order for a value to be
     * mapped.  See also <code><b class='link' title='#hiddenName'>hiddenName</b></code>, <code><b class='link' title='#hiddenValue'>hiddenValue</b></code>, and <code><b class='link' title='#displayField'>displayField</b></code>.</p>
     */
  public var valueField : String;
    /**
     * @cfg {String} hiddenName If specified, a hidden form field with this name is dynamically generated to store the
     * field's data value (defaults to the underlying DOM element's name). Required for the combo's value to automatically
     * post during a form submission.  See also <b class='link' title='#valueField'>valueField</b>.
     * <p><b>Note</b>: the hidden field's id will also default to this name if <b class='link' title='#hiddenId'>hiddenId</b> is not specified.
     * The ComboBox <b class='link' title='ext.Component#id'>id</b> and the <code><b class='link' title='#hiddenId'>hiddenId</b></code> <b>should be different</b>, since
     * no two DOM nodes should share the same id.  So, if the ComboBox <code><b class='link' title='ext.form.Field#name'>name</b></code> and
     * <code>hiddenName</code> are the same, you should specify a unique <code><b class='link' title='#hiddenId'>hiddenId</b></code>.</p>
     */
  public var hiddenName : String;
    /**
     * @cfg {String} hiddenId If <code><b class='link' title='#hiddenName'>hiddenName</b></code> is specified, <code>hiddenId</code> can also be provided
     * to give the hidden field a unique id (defaults to the <code><b class='link' title='#hiddenName'>hiddenName</b></code>).  The <code>hiddenId</code>
     * and combo <b class='link' title='ext.Component#id'>id</b> should be different, since no two DOM
     * nodes should share the same id.
     */
  public var hiddenId : String;
    /**
     * @cfg {String} hiddenValue Sets the initial value of the hidden field if <b class='link' title='#hiddenName'>hiddenName</b> is
     * specified to contain the selected <b class='link' title='#valueField'>valueField</b>, from the Store. Defaults to the configured
     * <code><b class='link' title='ext.form.Field#value'>value</b></code>.
     */
  public var hiddenValue : String;
    /**
     * @cfg {String} listClass The CSS class to add to the predefined <code>'x-combo-list'</code> class
     * applied the dropdown list element (defaults to '').
     */
    public var listClass  : String;
    /**
     * @cfg {String} selectedClass CSS class to apply to the selected item in the dropdown list
     * (defaults to <code>'x-combo-selected'</code>)
     */
    public var selectedClass  : String;
    /**
     * @cfg {String} listEmptyText The empty text to display in the data view if no items are found.
     * (defaults to '')
     */
    public var listEmptyText : String;
    /**
     * @cfg {String} triggerClass An additional CSS class used to style the trigger button.  The trigger will always
     * get the class <code>'x-form-trigger'</code> and <code>triggerClass</code> will be <b>appended</b> if specified
     * (defaults to <code>'x-form-arrow-trigger'</code> which displays a downward arrow icon).
     */
    public var triggerClass  : String;
    /**
     * @cfg {Boolean/String} shadow <code>true</code> or <code>"sides"</code> for the default effect, <code>"frame"</code> for
     * 4-way shadow, and <code>"drop"</code> for bottom-right
     */
    public var shadow  : *;
    /**
     * @cfg {String} listAlign A valid anchor position value. See <code><b class='link'>ext.Element#alignTo</b></code> for details
     * on supported anchor positions (defaults to <code>'tl-bl?'</code>)
     */
    public var listAlign  : String;
    /**
     * @cfg {Number} maxHeight The maximum height in pixels of the dropdown list before scrollbars are shown
     * (defaults to <code>300</code>)
     */
    public var maxHeight  : Number;
    /**
     * @cfg {Number} minHeight The minimum height in pixels of the dropdown list when the list is constrained by its
     * distance to the viewport edges (defaults to <code>90</code>)
     */
    public var minHeight  : Number;
    /**
     * @cfg {String} triggerAction The action to execute when the trigger is clicked.
     * <div class="mdetail-params"><ul>
     * <li><b><code>'query'</code></b> : <b>Default</b>
     * <p class="sub-desc"><b class='link' title='#doQuery run the'>query</b> using the <b class='link' title='ext.form.Field#getRawValue raw'>value</b>.</p></li>
     * <li><b><code>'all'</code></b> :
     * <p class="sub-desc"><b class='link' title='#doQuery run the'>query</b> specified by the <code><b class='link' title='#allQuery'>allQuery</b></code> config option</p></li>
     * </ul></div>
     * <p>See also <code><b class='link' title='#queryParam'>queryParam</b></code>.</p>
     */
    public var triggerAction  : String;
    /**
     * @cfg {Number} minChars The minimum number of characters the user must type before autocomplete and
     * <b class='link' title='#typeAhead'>typeAhead</b> activate (defaults to <code>4</code> if <code><b class='link' title='#mode'>mode</b> = 'remote'</code> or <code>0</code> if
     * <code><b class='link' title='#mode'>mode</b> = 'local'</code>, does not apply if
     * <code><b class='link' title='ext.form.TriggerField#editable'>editable</b> = false</code>).
     */
    public var minChars  : Number;
    /**
     * @cfg {Boolean} typeAhead <code>true</code> to populate and autoselect the remainder of the text being
     * typed after a configurable delay (<b class='link' title='#typeAheadDelay'>typeAheadDelay</b>) if it matches a known value (defaults
     * to <code>false</code>)
     */
    public var typeAhead  : Boolean;
    /**
     * @cfg {Number} queryDelay The length of time in milliseconds to delay between the start of typing and
     * sending the query to filter the dropdown list (defaults to <code>500</code> if <code><b class='link' title='#mode'>mode</b> = 'remote'</code>
     * or <code>10</code> if <code><b class='link' title='#mode'>mode</b> = 'local'</code>)
     */
    public var queryDelay  : Number;
    /**
     * @cfg {Number} pageSize If greater than <code>0</code>, a <b class='link'>ext.PagingToolbar</b> is displayed in the
     * footer of the dropdown list and the <b class='link' title='#doQuery filter'>queries</b> will execute with page start and
     * <b class='link' title='ext.PagingToolbar#pageSize'>limit</b> parameters. Only applies when <code><b class='link' title='#mode'>mode</b> = 'remote'</code>
     * (defaults to <code>0</code>).
     */
    public var pageSize  : Number;
    /**
     * @cfg {Boolean} selectOnFocus <code>true</code> to select any existing text in the field immediately on focus.
     * Only applies when <code><b class='link' title='ext.form.TriggerField#editable'>editable</b> = true</code> (defaults to
     * <code>false</code>).
     */
    //public var selectOnFocus  : Boolean;
    /**
     * @cfg {String} queryParam Name of the query (<b class='link' title='ext.data.Store#baseParam'>baseParam</b> name for the store)
     * as it will be passed on the querystring (defaults to <code>'query'</code>)
     */
    public var queryParam  : String;
    /**
     * @cfg {String} loadingText The text to display in the dropdown list while data is loading.  Only applies
     * when <code><b class='link' title='#mode'>mode</b> = 'remote'</code> (defaults to <code>'Loading...'</code>)
     */
    public var loadingText  : String;
    /**
     * @cfg {Boolean} resizable <code>true</code> to add a resize handle to the bottom of the dropdown list
     * (creates an <b class='link'>ext.Resizable</b> with 'se' <b class='link' title='ext.Resizable#pinned'>pinned</b> handles).
     * Defaults to <code>false</code>.
     */
    public var resizable  : Boolean;
    /**
     * @cfg {Number} handleHeight The height in pixels of the dropdown list resize handle if
     * <code><b class='link' title='#resizable'>resizable</b> = true</code> (defaults to <code>8</code>)
     */
    public var handleHeight  : Number;
    /**
     * @cfg {String} allQuery The text query to send to the server to return all records for the list
     * with no filtering (defaults to '')
     */
    public var allQuery : String;
    /**
     * @cfg {String} mode Acceptable values are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>'remote'</code></b> : <b>Default</b>
     * <p class="sub-desc">Automatically loads the <code><b class='link' title='#store'>store</b></code> the <b>first</b> time the trigger
     * is clicked. If you do not want the store to be automatically loaded the first time the trigger is
     * clicked, set to <code>'local'</code> and manually load the store.  To force a requery of the store
     * <b>every</b> time the trigger is clicked see <code><b class='link' title='#lastQuery'>lastQuery</b></code>.</p></li>
     * <li><b><code>'local'</code></b> :
     * <p class="sub-desc">ComboBox loads local data</p>
     * <pre><code>
var combo = new ext.form.ComboBox({
    renderTo: document.body,
    mode: 'local',
    store: new ext.data.ArrayStore({
        id: 0,
        fields: [
            'myId',  // numeric value is the key
            'displayText'
        ],
        data: [[1, 'item1'], [2, 'item2']]  // data is local
    }),
    valueField: 'myId',
    displayField: 'displayText',
    triggerAction: 'all'
});
     * </code></pre></li>
     * </ul></div>
     */
    public var mode : String;
    /**
     * @cfg {Number} minListWidth The minimum width of the dropdown list in pixels (defaults to <code>70</code>, will
     * be ignored if <code><b class='link' title='#listWidth'>listWidth</b></code> has a higher value)
     */
    public var minListWidth  : Number;
    /**
     * @cfg {Boolean} forceSelection <code>true</code> to restrict the selected value to one of the values in the list,
     * <code>false</code> to allow the user to set arbitrary text into the field (defaults to <code>false</code>)
     */
    public var forceSelection  : Boolean;
    /**
     * @cfg {Number} typeAheadDelay The length of time in milliseconds to wait until the typeahead text is displayed
     * if <code><b class='link' title='#typeAhead'>typeAhead</b> = true</code> (defaults to <code>250</code>)
     */
    public var typeAheadDelay  : Number;
    /**
     * @cfg {String} valueNotFoundText When using a name/value combo, if the value passed to setValue is not found in
     * the store, valueNotFoundText will be displayed as the field text if defined (defaults to undefined). If this
     * default text is used, it means there is no value set and no validation will occur on this field.
     */
    /**
     * @cfg {Boolean} lazyInit <code>true</code> to not initialize the list for this combo until the field is focused
     * (defaults to <code>true</code>)
     */
    public var lazyInit  : Boolean;
    /**
     * The value of the match string used to filter the store. Delete this property to force a requery.
     * Example use:
     * <pre><code>
var combo = new ext.form.ComboBox({
    ...
    mode: 'remote',
    ...
    listeners: {
        // delete the previous query in the beforequery event or set
        // combo.lastQuery = null (this will reload the store the next time it expands)
        beforequery: function(qe){
            delete qe.combo.lastQuery;
        }
    }
});
     * </code></pre>
     * To make sure the filter in the store is not cleared the first time the ComboBox trigger is used
     * configure the combo with <code>lastQuery=''</code>. Example use:
     * <pre><code>
var combo = new ext.form.ComboBox({
    ...
    mode: 'local',
    triggerAction: 'all',
    lastQuery: ''
});
     * </code></pre>
     * @property lastQuery
     */
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function initValue() : void;
    protected native function initList() : void;
                /**
                * @cfg {String/ext.XTemplate} tpl <p>The template string, or <b class='link'>ext.XTemplate</b> instance to
                * use to display each item in the dropdown list. The dropdown list is displayed in a
                * DataView. See <b class='link' title='#view'>view</b>.</p>
                * <p>The default template string is:</p><pre><code>
                  '&lt;tpl for=".">&lt;div class="x-combo-list-item">{' + this.displayField + '}&lt;/div>&lt;/tpl>'
                * </code></pre>
                * <p>Override the default value to create custom UI layouts for items in the list.
                * For example:</p><pre><code>
                  '&lt;tpl for=".">&lt;div ext:qtip="{state}. {nick}" class="x-combo-list-item">{state}&lt;/div>&lt;/tpl>'
                * </code></pre>
                * <p>The template <b>must</b> contain one or more substitution parameters using field
                * names from the Combo's</b> <b class='link' title='#store'>Store</b>. In the example above an
                * <pre>ext:qtip</pre> attribute is added to display other fields from the Store.</p>
                * <p>To preserve the default visual look of list items, add the CSS class name
                * <pre>x-combo-list-item</pre> to the template's container element.</p>
                * <p>Also see <b class='link' title='#itemSelector'>itemSelector</b> for additional details.</p>
                */
  public var tpl : XTemplate;
                /**
                 * @cfg {String} itemSelector
                 * <p>A simple CSS selector (e.g. div.some-class or span:first-child) that will be
                 * used to determine what nodes the <b class='link' title='#view'>ext.DataView</b> which handles the dropdown
                 * display will be working with.</p>
                 * <p><b>Note</b>: this setting is <b>required</b> if a custom XTemplate has been
                 * specified in <b class='link' title='#tpl'>tpl</b> which assigns a class other than <pre>'x-combo-list-item'</pre>
                 * to dropdown list items</b>
                 */
  public var itemSelector : String;
            /**
            * The <b class='link' title='ext.DataView'>DataView</b> used to display the ComboBox's options.
            */
  public var view : DataView;
    /**
     * <p>Returns the element used to house this ComboBox's pop-up list. Defaults to the document body.</p>
     * A custom implementation may be provided as a configuration option if the floating list needs to be rendered
     * to a different Element. An example might be rendering the list inside a Menu so that clicking
     * the list does not hide the Menu:<pre><code>
var store = new ext.data.ArrayStore({
    autoDestroy: true,
    fields: ['initials', 'fullname'],
    data : [
        ['FF', 'Fred Flintstone'],
        ['BR', 'Barney Rubble']
    ]
});

var combo = new ext.form.ComboBox({
    store: store,
    displayField: 'fullname',
    emptyText: 'Select a name...',
    forceSelection: true,
    getListParent: function() {
        return this.el.up('.x-menu');
    },
    iconCls: 'no-icon', //use iconCls if placing within menu to shift to right side of menu
    mode: 'local',
    selectOnFocus: true,
    triggerAction: 'all',
    typeAhead: true,
    width: 135
});

var menu = new Ext.menu.Menu({
    id: 'mainMenu',
    items: [
        combo // A Field in a Menu
    ]
});
</code></pre>
     */
    public native function getListParent() : void;
    /**
     * Returns the store associated with this combo.
     * @return The store
     */
    public native function getStore() : Store;
    protected native function bindStore(store, initial) : void;
    override protected native function initEvents() : void;
    override protected native function onDestroy() : void;
    protected native function unsetDelayCheck() : void;
    override protected native function fireKey(e) : void;
    override public native function onResize(aw, ah, rw, rh) : void;
    override protected native function onEnable() : void;
    override protected native function onDisable() : void;
    protected native function onBeforeLoad() : void;
    protected native function onLoad() : void;
    protected native function onTypeAhead() : void;
    protected native function onSelect(record, index) : void;
    override public native function getName() : String;
    /**
     * Returns the currently selected field value or empty string if no value is set.
     * @return value The selected value
     */
    override public native function getValue() : *;
    /**
     * Clears any text/value currently set in the field
     */
    public native function clearValue() : void;
    /**
     * Sets the specified value into the field.  If the value finds a match, the corresponding record text
     * will be displayed in the field.  If the value does not match the data value of an existing item,
     * and the valueNotFoundText config option is defined, it will be displayed as the default field text.
     * Otherwise the field will be blank (although the value will still be set).
     * @param value The value to match
     * @return this
     */
    override public native function setValue(value : *) : Field;
    protected native function findRecord(prop, value) : void;
    protected native function onViewMove(e, t) : void;
    protected native function onViewOver(e, t) : void;
    protected native function onViewClick(doFocus) : void;
    protected native function restrictHeight() : void;
    protected native function onEmptyResults() : void;
    /**
     * Returns true if the dropdown list is expanded, else false.
     */
    public native function isExpanded() : void;
    /**
     * Select an item in the dropdown list by its data value. This function does NOT cause the select event to fire.
     * The store must be loaded and the list expanded for this function to work, otherwise use setValue.
     * @param value The data value of the item to select
     * @param scrollIntoView False to prevent the dropdown list from autoscrolling to display the
     * selected item if it is not currently in view (defaults to true)
     * @return True if the value matched an item in the list, else false
     */
    public native function selectByValue(value : String, scrollIntoView : Boolean) : Boolean;
    /**
     * Select an item in the dropdown list by its numeric index in the list. This function does NOT cause the select event to fire.
     * The store must be loaded and the list expanded for this function to work, otherwise use setValue.
     * @param index The zero-based index of the list item to select
     * @param scrollIntoView False to prevent the dropdown list from autoscrolling to display the
     * selected item if it is not currently in view (defaults to true)
     */
    public native function select(index : Number, scrollIntoView : Boolean) : void;

  /**
   * The index of the currently selected item.
   */
    public native function get selectedIndex() : Number;
    protected native function selectNext() : void;
    protected native function selectPrev() : void;
    override protected native function onKeyUp(e) : void;
    override protected native function validateBlur(e : EventObjectClass) : void;
    protected native function initQuery() : void;
    override protected native function beforeBlur() : void;
    /**
     * Execute a query to filter the dropdown list.  Fires the <b class='link' title='#beforequery'>beforequery</b> event prior to performing the
     * query allowing the query action to be canceled if needed.
     * @param query The SQL query to execute
     * @param forceAll <code>true</code> to force the query to execute even if there are currently fewer
     * characters in the field than the minimum specified by the <code><b class='link' title='#minChars'>minChars</b></code> config option.  It
     * also clears any filter previously saved in the current store (defaults to <code>false</code>)
     */
    public native function doQuery(query : String, forceAll : Boolean) : void;
    protected native function getParams(q) : void;
    /**
     * Hides the dropdown list if it is currently expanded. Fires the <b class='link' title='#collapse'>collapse</b> event on completion.
     */
    public native function collapse() : void;
    protected native function collapseIf(e) : void;
    /**
     * Expands the dropdown list if it is currently hidden. Fires the <b class='link' title='#expand'>expand</b> event on completion.
     */
    public native function expand() : void;
    /**
     * @method onTriggerClick
     * @hide
     */
    override public native function onTriggerClick(e : EventObjectClass) : void;
    /**
     * @hide
     * @method autoSize
     */
    /**
     * @cfg {Boolean} grow @hide
     */
    /**
     * @cfg {Number} growMin @hide
     */
    /**
     * @cfg {Number} growMax @hide
     */
  /**
   * The Store where my options come from.
   */
    protected var store : Store;
}}
