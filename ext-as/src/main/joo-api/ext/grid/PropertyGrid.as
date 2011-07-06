package ext.grid {


/**
 * Fires before a property value changes. Handlers can return false to cancel the property change (this will internally call <a href="output/Ext.data.Record.html#Ext.data.Record-reject">Ext.data.Record.reject</a> on the property's record).
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>source:Object</code>
 The source data object for the grid (corresponds to the same object passed in as the <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-source">source</a> config property).
 *       </li>

 *       <li>
 *           <code>recordId:String</code>
 The record's id in the data store
 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The current edited property value
 *       </li>

 *       <li>
 *           <code>oldValue:&#42;</code>
 The original property value prior to editing
 *       </li>

 * </ul>
 */
[Event(name="beforepropertychange")]

/**
 * Fires after a property value has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>source:Object</code>
 The source data object for the grid (corresponds to the same object passed in as the <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-source">source</a> config property).
 *       </li>

 *       <li>
 *           <code>recordId:String</code>
 The record's id in the data store
 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The current edited property value
 *       </li>

 *       <li>
 *           <code>oldValue:&#42;</code>
 The original property value prior to editing
 *       </li>

 * </ul>
 */
[Event(name="propertychange")]


/**
 * A specialized grid implementation intended to mimic the traditional property grid as typically seen in development IDEs. Each row in the grid represents a property of some object, and the data is stored as a set of name/value pairs in <a href="Ext.grid.PropertyRecord.html">Ext.grid.PropertyRecord</a>s. Example usage: <pre><code>var grid = new Ext.grid.PropertyGrid({
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
 * @see ext.config.propertygrid
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#cls-Ext.grid.PropertyGrid Ext JS source
 */
public class PropertyGrid extends EditorGridPanel {

  /**
   *
   *
   * @param config The grid config object
   * @see ext.config.propertygrid
   */
  public function PropertyGrid(config:Object) {
    super(null);
  }

  /**
   An object containing name/value pairs of custom editor type definitions that allow the grid to support additional types of editable fields. By default, the grid supports strongly-typed editing of strings, dates, numbers and booleans using built-in form editors, but any custom type can be supported and associated with a custom input control by specifying a custom editor. The name of the editor type should correspond with the name of the property that will use the editor. Example usage: <pre><code>var grid = new Ext.grid.PropertyGrid({
   ...
   customEditors: {
   'Start Time': new Ext.grid.GridEditor(new Ext.form.TimeField({selectOnFocus:true}))
   },
   source: {
   'Start Time': '10:00 AM'
   }
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get customEditors():Object;

  /**
   An object containing name/value pairs of custom renderer type definitions that allow the grid to support custom rendering of fields. By default, the grid supports strongly-typed rendering of strings, dates, numbers and booleans using built-in form editors, but any custom type can be supported and associated with the type of the value. The name of the renderer type should correspond with the name of the property that it will render. Example usage: <pre><code>var grid = new Ext.grid.PropertyGrid({
   ...
   customRenderers: {
   Available: function(v){
   if(v){
   return '<span style="color: green;">Yes</span>';
   }else{
   return '<span style="color: red;">No</span>';
   }
   }
   },
   source: {
   Available: true
   }
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get customRenderers():Object;

  /**
   An object containing property name/display name pairs. If specified, the display name will be shown in the name column instead of the property name.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get propertyNames():Object;

  /**
   * Gets the source data object containing the property data. See <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-setSource">setSource</a> for details regarding the format of the data object.
   *
   * @return The data object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#method-Ext.grid.PropertyGrid-getSource Ext JS source
   */
  public native function getSource():Object;

  /**
   * Removes a property from the grid.
   *
   * @param prop The name of the property to remove
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#method-Ext.grid.PropertyGrid-removeProperty Ext JS source
   */
  public native function removeProperty(prop:String):void;

  /**
   * Sets the value of a property.
   *
   * @param prop The name of the property to set
   * @param value The value to test
   * @param create True to create the property if it doesn't already exist. Defaults to <tt>false</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#method-Ext.grid.PropertyGrid-setProperty Ext JS source
   */
  public native function setProperty(prop:String, value:*, create:Boolean = false):void;

  /**
   * Sets the source data object containing the property data. The data object can contain one or more name/value pairs representing all of the properties of an object to display in the grid, and this data will automatically be loaded into the grid's <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-store">store</a>. The values should be supplied in the proper data type if needed, otherwise string type will be assumed. If the grid already contains data, this method will replace any existing data. See also the <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-source">source</a> config value. Example usage: <pre><code>grid.setSource({
   "(name)": "My Object",
   "Created": new Date(Date.parse('10/15/2006')),  // date type
   "Available": false,  // boolean type
   "Version": .01,      // decimal type
   "Description": "A test object"
   });
   </code></pre>
   *
   * @param source The data object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PropertyGrid.html#method-Ext.grid.PropertyGrid-setSource Ext JS source
   */
  public native function setSource(source:Object):void;

}
}
    