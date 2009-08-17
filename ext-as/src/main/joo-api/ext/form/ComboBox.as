package ext.form {
import ext.DataView;
import ext.Element;
import ext.XTemplate;
import ext.data.Store;

/**
 * <p>A combobox control with support for autocomplete, remote-loading, paging and many other features.</p>
 * <p>A ComboBox works in a similar manner to a traditional HTML &lt;select> field. The difference is
 * that to submit the <b class='link'>#valueField</b>, you must specify a <b class='link'>#hiddenName</b> to create a hidden input
 * field to hold the value of the valueField. The <i><b class='link'>#displayField</b></i> is shown in the text field
 * which is named according to the <b class='link'>#name</b>.</p>
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
        var record = combo.findRecord(combo.<b class='link'>#valueField</b>, value);
        return record ? record.get(combo.<b class='link'>#displayField</b>) : combo.<b class='link'>#valueNotFoundText</b>;
    }
}

// create the combo instance
var combo = new ext.form.ComboBox({
    <b class='link'>#typeAhead</b>: true,
    <b class='link'>#triggerAction</b>: 'all',
    <b class='link'>#lazyRender</b>:true,
    <b class='link'>#mode</b>: 'local',
    <b class='link'>#store</b>: new ext.data.ArrayStore({
        id: 0,
        fields: [
            'myId',
            'displayText'
        ],
        data: [[1, 'item1'], [2, 'item2']]
    }),
    <b class='link'>#valueField</b>: 'myId',
    <b class='link'>#displayField</b>: 'displayText'
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
 * store manually see <tt><b class='link'>#lastQuery</b></tt>.</p>
*/
public class ComboBox extends TriggerField {
/**
 * @constructor
 * Create a new ComboBox.
 * @param config Configuration options
 * @xtype combo
 */
public function ComboBox(config : Object) {
  super(config);
}
    /**
     * @cfg {Mixed} transform The id, DOM node or element of an existing HTML SELECT to convert to a ComboBox.
     * Note that if you specify this and the combo is going to be in an <b class='link'>ext.form.BasicForm</b> or
     * <b class='link'>ext.form.FormPanel</b>, you must also set <tt><b class='link'>#lazyRender</b> = true</tt>.
     */
    /**
     * @cfg {Boolean} lazyRender <tt>true</tt> to prevent the ComboBox from rendering until requested
     * (should always be used when rendering into an <b class='link'>ext.Editor</b> (e.g. <b class='link' title='Ext.grid.EditorGridPanel'>Grids</b>),
     * defaults to <tt>false</tt>).
     */
    /**
     * @cfg {String/Object} autoCreate <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec, or <tt>true</tt> for a default
     * element spec. Used to create the <b class='link' title='ext.Component#getEl'>Element</b> which will encapsulate this Component.
     * See <tt><b class='link' title='ext.Component#autoEl'>autoEl</b></tt> for details.  Defaults to:</p>
     * <pre><code>{tag: "input", type: "text", size: "24", autocomplete: "off"}</code></pre>
     */
    /**
     * @cfg {ext.data.Store/Array} store The data source to which this combo is bound (defaults to <tt>undefined</tt>).
     * Acceptable values for this property are:
     * <div class="mdetail-params"><ul>
     * <li><b>any <b class='link' title='ext.data.Store'>Store</b> subclass</b></li>
     * <li><b>an Array</b> : Arrays will be converted to a <b class='link'>ext.data.ArrayStore</b> internally.
     * <div class="mdetail-params"><ul>
     * <li><b>1-dimensional array</b> : (e.g., <tt>['Foo','Bar']</tt>)<div class="sub-desc">
     * A 1-dimensional array will automatically be expanded (each array item will be the combo
     * <b class='link' title='#valueField'>value</b> and <b class='link' title='#displayField'>text</b>)</div></li>
     * <li><b>2-dimensional array</b> : (e.g., <tt>[['f','Foo'],['b','Bar']]</tt>)<div class="sub-desc">
     * For a multi-dimensional array, the value in index 0 of each item will be assumed to be the combo
     * <b class='link' title='#valueField'>value</b>, while the value at index 1 is assumed to be the combo <b class='link' title='#displayField'>text</b>.
     * </div></li></ul></div></li></ul></div>
     * <p>See also <tt><b class='link'>#mode</b></tt>.</p>
     */
    /**
     * @cfg {String} title If supplied, a header element is created containing this text and added into the top of
     * the dropdown list (defaults to undefined, with no header element)
     */
    //protected var defaultAutoCreate  : String;
    /**
     * @cfg {Number} listWidth The width (used as a parameter to <b class='link'>ext.Element#setWidth</b>) of the dropdown
     * list (defaults to the width of the ComboBox field).  See also <tt><b class='link'>#minListWidth</b>
     */
    /**
     * @cfg {String} displayField The underlying <b class='link' title='ext.data.Field#name data field'>name</b> to bind to this
     * ComboBox (defaults to undefined if <tt><b class='link'>#mode</b> = 'remote'</tt> or <tt>'text'</tt> if
     * <b class='link' title='#transform transforming a'>select</b> a select).
     * <p>See also <tt><b class='link'>#valueField</b></tt>.</p>
     * <p><b>Note</b>: if using a ComboBox in an <b class='link' title='Ext.grid.EditorGridPanel Editor'>Grid</b> a
     * <b class='link' title='Ext.grid.Column#renderer'>renderer</b> will be needed to show the displayField when the editor is not
     * active.</p>
     */
  public var displayField : String;
    /**
     * @cfg {String} valueField The underlying <b class='link' title='ext.data.Field#name data value'>name</b> to bind to this
     * ComboBox (defaults to undefined if <tt><b class='link'>#mode</b> = 'remote'</tt> or <tt>'value'</tt> if
     * <b class='link' title='#transform transforming a'>select</b>).
     * <p><b>Note</b>: use of a <tt>valueField</tt> requires the user to make a selection in order for a value to be
     * mapped.  See also <tt><b class='link'>#hiddenName</b></tt>, <tt><b class='link'>#hiddenValue</b></tt>, and <tt><b class='link'>#displayField</b></tt>.</p>
     */
  public var valueField : String;
    /**
     * @cfg {String} hiddenName If specified, a hidden form field with this name is dynamically generated to store the
     * field's data value (defaults to the underlying DOM element's name). Required for the combo's value to automatically
     * post during a form submission.  See also <b class='link'>#valueField</b>.
     * <p><b>Note</b>: the hidden field's id will also default to this name if <b class='link'>#hiddenId</b> is not specified.
     * The ComboBox <b class='link' title='ext.Component#id'>id</b> and the <tt><b class='link'>#hiddenId</b></tt> <b>should be different</b>, since
     * no two DOM nodes should share the same id.  So, if the ComboBox <tt><b class='link' title='ext.form.Field#name'>name</b></tt> and
     * <tt>hiddenName</tt> are the same, you should specify a unique <tt><b class='link'>#hiddenId</b></tt>.</p>
     */
  public var hiddenName : String;
    /**
     * @cfg {String} hiddenId If <tt><b class='link'>#hiddenName</b></tt> is specified, <tt>hiddenId</tt> can also be provided
     * to give the hidden field a unique id (defaults to the <tt><b class='link'>#hiddenName</b></tt>).  The <tt>hiddenId</tt>
     * and combo <b class='link' title='ext.Component#id'>id</b> should be different, since no two DOM
     * nodes should share the same id.
     */
  public var hiddenId : String;
    /**
     * @cfg {String} hiddenValue Sets the initial value of the hidden field if <b class='link'>#hiddenName</b> is
     * specified to contain the selected <b class='link'>#valueField</b>, from the Store. Defaults to the configured
     * <tt><b class='link' title='ext.form.Field#value'>value</b></tt>.
     */
  public var hiddenValue : String;
    /**
     * @cfg {String} listClass The CSS class to add to the predefined <tt>'x-combo-list'</tt> class
     * applied the dropdown list element (defaults to '').
     */
    public var listClass  : String;
    /**
     * @cfg {String} selectedClass CSS class to apply to the selected item in the dropdown list
     * (defaults to <tt>'x-combo-selected'</tt>)
     */
    public var selectedClass  : String;
    /**
     * @cfg {String} listEmptyText The empty text to display in the data view if no items are found.
     * (defaults to '')
     */
    public var listEmptyText : String;
    /**
     * @cfg {String} triggerClass An additional CSS class used to style the trigger button.  The trigger will always
     * get the class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified
     * (defaults to <tt>'x-form-arrow-trigger'</tt> which displays a downward arrow icon).
     */
    public var triggerClass  : String;
    /**
     * @cfg {Boolean/String} shadow <tt>true</tt> or <tt>"sides"</tt> for the default effect, <tt>"frame"</tt> for
     * 4-way shadow, and <tt>"drop"</tt> for bottom-right
     */
    public var shadow  : *;
    /**
     * @cfg {String} listAlign A valid anchor position value. See <tt><b class='link'>ext.Element#alignTo</b></tt> for details
     * on supported anchor positions (defaults to <tt>'tl-bl?'</tt>)
     */
    public var listAlign  : String;
    /**
     * @cfg {Number} maxHeight The maximum height in pixels of the dropdown list before scrollbars are shown
     * (defaults to <tt>300</tt>)
     */
    public var maxHeight  : Number;
    /**
     * @cfg {Number} minHeight The minimum height in pixels of the dropdown list when the list is constrained by its
     * distance to the viewport edges (defaults to <tt>90</tt>)
     */
    public var minHeight  : Number;
    /**
     * @cfg {String} triggerAction The action to execute when the trigger is clicked.
     * <div class="mdetail-params"><ul>
     * <li><b><tt>'query'</tt></b> : <b>Default</b>
     * <p class="sub-desc"><b class='link' title='#doQuery run the'>query</b> using the <b class='link' title='ext.form.Field#getRawValue raw'>value</b>.</p></li>
     * <li><b><tt>'all'</tt></b> :
     * <p class="sub-desc"><b class='link' title='#doQuery run the'>query</b> specified by the <tt><b class='link'>#allQuery</b></tt> config option</p></li>
     * </ul></div>
     * <p>See also <code><b class='link'>#queryParam</b></code>.</p>
     */
    public var triggerAction  : String;
    /**
     * @cfg {Number} minChars The minimum number of characters the user must type before autocomplete and
     * <b class='link'>#typeAhead</b> activate (defaults to <tt>4</tt> if <tt><b class='link'>#mode</b> = 'remote'</tt> or <tt>0</tt> if
     * <tt><b class='link'>#mode</b> = 'local'</tt>, does not apply if
     * <tt><b class='link' title='ext.form.TriggerField#editable'>editable</b> = false</tt>).
     */
    public var minChars  : Number;
    /**
     * @cfg {Boolean} typeAhead <tt>true</tt> to populate and autoselect the remainder of the text being
     * typed after a configurable delay (<b class='link'>#typeAheadDelay</b>) if it matches a known value (defaults
     * to <tt>false</tt>)
     */
    public var typeAhead  : Boolean;
    /**
     * @cfg {Number} queryDelay The length of time in milliseconds to delay between the start of typing and
     * sending the query to filter the dropdown list (defaults to <tt>500</tt> if <tt><b class='link'>#mode</b> = 'remote'</tt>
     * or <tt>10</tt> if <tt><b class='link'>#mode</b> = 'local'</tt>)
     */
    public var queryDelay  : Number;
    /**
     * @cfg {Number} pageSize If greater than <tt>0</tt>, a <b class='link'>ext.PagingToolbar</b> is displayed in the
     * footer of the dropdown list and the <b class='link' title='#doQuery filter'>queries</b> will execute with page start and
     * <b class='link' title='ext.PagingToolbar#pageSize'>limit</b> parameters. Only applies when <tt><b class='link'>#mode</b> = 'remote'</tt>
     * (defaults to <tt>0</tt>).
     */
    public var pageSize  : Number;
    /**
     * @cfg {Boolean} selectOnFocus <tt>true</tt> to select any existing text in the field immediately on focus.
     * Only applies when <tt><b class='link' title='ext.form.TriggerField#editable'>editable</b> = true</tt> (defaults to
     * <tt>false</tt>).
     */
    //public var selectOnFocus  : Boolean;
    /**
     * @cfg {String} queryParam Name of the query (<b class='link' title='ext.data.Store#baseParam'>baseParam</b> name for the store)
     * as it will be passed on the querystring (defaults to <tt>'query'</tt>)
     */
    public var queryParam  : String;
    /**
     * @cfg {String} loadingText The text to display in the dropdown list while data is loading.  Only applies
     * when <tt><b class='link'>#mode</b> = 'remote'</tt> (defaults to <tt>'Loading...'</tt>)
     */
    public var loadingText  : String;
    /**
     * @cfg {Boolean} resizable <tt>true</tt> to add a resize handle to the bottom of the dropdown list
     * (creates an <b class='link'>ext.Resizable</b> with 'se' <b class='link' title='ext.Resizable#pinned'>pinned</b> handles).
     * Defaults to <tt>false</tt>.
     */
    public var resizable  : Boolean;
    /**
     * @cfg {Number} handleHeight The height in pixels of the dropdown list resize handle if
     * <tt><b class='link'>#resizable</b> = true</tt> (defaults to <tt>8</tt>)
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
     * <li><b><tt>'remote'</tt></b> : <b>Default</b>
     * <p class="sub-desc">Automatically loads the <tt><b class='link'>#store</b></tt> the <b>first</b> time the trigger
     * is clicked. If you do not want the store to be automatically loaded the first time the trigger is
     * clicked, set to <tt>'local'</tt> and manually load the store.  To force a requery of the store
     * <b>every</b> time the trigger is clicked see <tt><b class='link'>#lastQuery</b></tt>.</p></li>
     * <li><b><tt>'local'</tt></b> :
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
     * @cfg {Number} minListWidth The minimum width of the dropdown list in pixels (defaults to <tt>70</tt>, will
     * be ignored if <tt><b class='link'>#listWidth</b></tt> has a higher value)
     */
    public var minListWidth  : Number;
    /**
     * @cfg {Boolean} forceSelection <tt>true</tt> to restrict the selected value to one of the values in the list,
     * <tt>false</tt> to allow the user to set arbitrary text into the field (defaults to <tt>false</tt>)
     */
    public var forceSelection  : Boolean;
    /**
     * @cfg {Number} typeAheadDelay The length of time in milliseconds to wait until the typeahead text is displayed
     * if <tt><b class='link'>#typeAhead</b> = true</tt> (defaults to <tt>250</tt>)
     */
    public var typeAheadDelay  : Number;
    /**
     * @cfg {String} valueNotFoundText When using a name/value combo, if the value passed to setValue is not found in
     * the store, valueNotFoundText will be displayed as the field text if defined (defaults to undefined). If this
     * default text is used, it means there is no value set and no validation will occur on this field.
     */
    /**
     * @cfg {Boolean} lazyInit <tt>true</tt> to not initialize the list for this combo until the field is focused
     * (defaults to <tt>true</tt>)
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
     * configure the combo with <tt>lastQuery=''</tt>. Example use:
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
                * DataView. See <b class='link'>#view</b>.</p>
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
                * <p>Also see <b class='link'>#itemSelector</b> for additional details.</p>
                */
  public var tpl : XTemplate;
                /**
                 * @cfg {String} itemSelector
                 * <p>A simple CSS selector (e.g. div.some-class or span:first-child) that will be
                 * used to determine what nodes the <b class='link' title='#view'>ext.DataView</b> which handles the dropdown
                 * display will be working with.</p>
                 * <p><b>Note</b>: this setting is <b>required</b> if a custom XTemplate has been
                 * specified in <b class='link'>#tpl</b> which assigns a class other than <pre>'x-combo-list-item'</pre>
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
    override protected native function validateBlur(e) : void;
    protected native function initQuery() : void;
    override protected native function beforeBlur() : void;
    /**
     * Execute a query to filter the dropdown list.  Fires the <b class='link'>#beforequery</b> event prior to performing the
     * query allowing the query action to be canceled if needed.
     * @param query The SQL query to execute
     * @param forceAll <tt>true</tt> to force the query to execute even if there are currently fewer
     * characters in the field than the minimum specified by the <tt><b class='link'>#minChars</b></tt> config option.  It
     * also clears any filter previously saved in the current store (defaults to <tt>false</tt>)
     */
    public native function doQuery(query : String, forceAll : Boolean) : void;
    protected native function getParams(q) : void;
    /**
     * Hides the dropdown list if it is currently expanded. Fires the <b class='link'>#collapse</b> event on completion.
     */
    public native function collapse() : void;
    protected native function collapseIf(e) : void;
    /**
     * Expands the dropdown list if it is currently hidden. Fires the <b class='link'>#expand</b> event on completion.
     */
    public native function expand() : void;
    /**
     * @method onTriggerClick
     * @hide
     */
    override public native function onTriggerClick(e : *) : void;
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
