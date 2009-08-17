package ext.grid {
/**
 * A specialized grid implementation intended to mimic the traditional property grid as typically seen in
 * development IDEs.  Each row in the grid represents a property of some object, and the data is stored
 * as a set of name/value pairs in <b class='link'>Ext.grid.PropertyRecord</b>s.  Example usage:
 * <pre><code>
var grid = new Ext.grid.PropertyGrid({
    title: 'Properties Grid',
    autoHeight: true,
    width: 300,
    renderTo: 'grid-ct',
    source: {
        "(name)": "My Object",
        "Created": new Date(Date.parse('10/15/2006')),
        "Available": false,
        "Version": .01,
        "Description": "A test object"
    }
});
</code></pre>
*/
public class PropertyGrid extends EditorGridPanel {
/**
 * @constructor
 * @param config The grid config object
 */
public function PropertyGrid(config : Object) {
  super(config);
}
    /**
    * @cfg {Object} propertyNames An object containing property name/display name pairs.
    * If specified, the display name will be shown in the name column instead of the property name.
    */
    /**
    * @cfg {Object} source A data object to use as the data source of the grid (see <b class='link'>#setSource</b> for details).
    */
    /**
    * @cfg {Object} customEditors An object containing name/value pairs of custom editor type definitions that allow
    * the grid to support additional types of editable fields.  By default, the grid supports strongly-typed editing
    * of strings, dates, numbers and booleans using built-in form editors, but any custom type can be supported and
    * associated with a custom input control by specifying a custom editor.  The name of the editor
    * type should correspond with the name of the property that will use the editor.  Example usage:
    * <pre><code>
var grid = new Ext.grid.PropertyGrid({
    ...
    customEditors: {
        'Start Time': new Ext.grid.GridEditor(new ext.form.TimeField({selectOnFocus:true}))
    },
    source: {
        'Start Time': '10:00 AM'
    }
});
</code></pre>
    */
    //public var enableColumnMove : Object;
    //public var stripeRows;
    //public var trackMouseOver;
    //public var clicksToEdit;
    //public var enableHdMenu ;
    public var viewConfig ;
    override protected native function initComponent() : void;
    //override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    /**
     * Sets the source data object containing the property data.  The data object can contain one or more name/value
     * pairs representing all of the properties of an object to display in the grid, and this data will automatically
     * be loaded into the grid's <b class='link'>#store</b>.  The values should be supplied in the proper data type if needed,
     * otherwise string type will be assumed.  If the grid already contains data, this method will replace any
     * existing data.  See also the <b class='link'>#source</b> config value.  Example usage:
     * <pre><code>
grid.setSource({
    "(name)": "My Object",
    "Created": new Date(Date.parse('10/15/2006')),  // date type
    "Available": false,  // boolean type
    "Version": .01,      // decimal type
    "Description": "A test object"
});
</code></pre>
     * @param source The data object
     */
    public native function setSource(source : Object) : void;
    /**
     * Gets the source data object containing the property data.  See <b class='link'>#setSource</b> for details regarding the
     * format of the data object.
     * @return The data object
     */
    public native function getSource() : Object;
}}
