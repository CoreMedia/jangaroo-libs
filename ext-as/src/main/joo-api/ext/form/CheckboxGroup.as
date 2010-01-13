package ext.form {

/**
 * <p>A grouping container for <b class='link'>ext.form.Checkbox</b> controls.</p>
 * <p>Sample usage:</p>
 * <pre><code>
var myCheckboxGroup = new ext.form.CheckboxGroup({
    id&#58;'myGroup',
    xtype&#58; 'checkboxgroup',
    fieldLabel&#58; 'Single Column',
    itemCls&#58; 'x-check-group-alt',
    &#47;/ Put all controls in a single column with width 100%
    columns&#58; 1,
    items&#58; [
        {boxLabel: 'Item 1', name: 'cb-col-1'},
        {boxLabel: 'Item 2', name: 'cb-col-2', checked: true},
        {boxLabel: 'Item 3', name: 'cb-col-3'}
    ]
});
 * </code></pre>
*/
public class CheckboxGroup extends Field {
/**
 * @constructor
 * Creates a new CheckboxGroup
 * @param config Configuration options
 * @xtype checkboxgroup
 */
public function CheckboxGroup(config : Object) {
  super(config);
}
    /**
     * @cfg {Array} items An Array of <b class='link' title='ext.form.Checkbox'>Checkbox</b>es or Checkbox config objects
     * to arrange in the group.
     */
    /**
     * @cfg {String/Number/Array} columns Specifies the number of columns to use when displaying grouped
     * checkbox/radio controls using automatic layout.  This config can take several types of values:
     * <ul><li><b>'auto'</b> : <p class="sub-desc">The controls will be rendered one per column on one row and the width
     * of each column will be evenly distributed based on the width of the overall field container. This is the default.</p></li>
     * <li><b>Number</b> : <p class="sub-desc">If you specific a number (e.g., 3) that number of columns will be 
     * created and the contained controls will be automatically distributed based on the value of <b class='link' title='#vertical'>vertical</b>.</p></li>
     * <li><b>Array</b> : Object<p class="sub-desc">You can also specify an array of column widths, mixing integer
     * (fixed width) and float (percentage width) values as needed (e.g., [100, .25, .75]). Any integer values will
     * be rendered first, then any float values will be calculated as a percentage of the remaining space. Float
     * values do not have to add up to 1 (100%) although if you want the controls to take up the entire field
     * container you should do so.</p></li></ul>
     */
    public var columns  : *;
    /**
     * @cfg {Boolean} vertical True to distribute contained controls across columns, completely filling each column 
     * top to bottom before starting on the next column.  The number of controls in each column will be automatically
     * calculated to keep columns as even as possible.  The default value is false, so that controls will be added
     * to columns one at a time, completely filling each row left to right before starting on the next row.
     */
    public var vertical  : Boolean;
    /**
     * @cfg {Boolean} allowBlank False to validate that at least one item in the group is checked (defaults to true).
     * If no items are selected at validation time, <b class='link' title='#blankText'>blankText</b> will be used as the error text.
     */
    public var allowBlank  : Boolean;
    /**
     * @cfg {String} blankText Error text to display if the <b class='link' title='#allowBlank'>allowBlank</b> validation fails (defaults to "You must 
     * select at least one item in this group")
     */
    public var blankText  : String;
    protected var defaultType ;
    protected var groupCls ;
    override protected native function initComponent() : void;

    //override protected native function onRender(container : Element, position : Element) : void;
    //override public native function afterRender() : void;
    protected native function doLayout() : void;
    protected native function fireChecked() : void;
    //override protected native function validateValue(value) : void;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    //override protected native function onResize(w, h) : void;
    override public native function reset() : void;
    /**
     * <b class='link' title='ext.form.Checkbox#setValue Set the'>value(s)</b> of an item or items
     * in the group. Examples illustrating how this method may be called:
     * <pre><code>
&#47;/ call with name and value
myCheckboxGroup.setValue('cb-col-1', true);
&#47;/ call with an array of boolean values 
myCheckboxGroup.setValue([true, false, false]);
&#47;/ call with an object literal specifying item:value pairs
myCheckboxGroup.setValue({
    'cb-col-2': false,
    'cb-col-3': true
});
&#47;/ use comma separated string to set items with name to true (checked)
myCheckboxGroup.setValue('cb-col-1,cb-col-3');
     * </code></pre>
     * See <b class='link'>ext.form.Checkbox#setValue</b> for additional information.
     * @param id The checkbox to check, or as described by example shown.
     * @param value The value to set the item.
     * @return this
     */
    public native function setValueById(id : *, value : Boolean = undefined) : CheckboxGroup;
    override protected native function onDestroy() : void;
    public native function setValueForItem(val) : void;
    public native function getBoxById(id) : void;
    /**
     * Gets an array of the selected <b class='link'>ext.form.Checkbox</b> in the group.
     * @return An array of the selected checkboxes.
     */
    public native function getValues() : Array;
    protected native function eachItem(fn) : void;
    /**
     * @cfg {String} name
     * @hide
     */
    /**
     * @method initValue
     * @hide
     */
    override protected native function initValue()  : void;
    /**
     * @method getRawValue
     * @hide
     */
    override public native function getRawValue() : *;
    /**
     * @method setRawValue
     * @hide
     */
    override public native function setRawValue(value : *) : *;
}}
