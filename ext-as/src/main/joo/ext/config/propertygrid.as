package ext.config {


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
 * <p>This class serves as a typed config object for constructor of class PropertyGrid.</p>
 *
 * @see ext.grid.PropertyGrid
 */
[ExtConfig(target="ext.grid.PropertyGrid")]
public class propertygrid extends editorgrid {

  public function propertygrid(config:Object = null) {

    super(config);
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
   */
  public native function get customEditors():Object;

  /**
   * @private
   */
  public native function set customEditors(value:Object):void;

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
   */
  public native function get customRenderers():Object;

  /**
   * @private
   */
  public native function set customRenderers(value:Object):void;

  /**
   An object containing property name/display name pairs. If specified, the display name will be shown in the name column instead of the property name.
   */
  public native function get propertyNames():Object;

  /**
   * @private
   */
  public native function set propertyNames(value:Object):void;

  /**
   A data object to use as the data source of the grid (see <a href="output/Ext.grid.PropertyGrid.html#Ext.grid.PropertyGrid-setSource">setSource</a> for details).
   */
  public native function get source():Object;

  /**
   * @private
   */
  public native function set source(value:Object):void;


}
}
    