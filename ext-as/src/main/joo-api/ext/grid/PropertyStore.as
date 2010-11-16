package ext.grid {

import ext.util.Observable;

/**
 * A custom wrapper for the <b class='link'>Ext.grid.PropertyGrid</b>'s <b class='link'>ext.data.Store</b>. This class handles the mapping
 * between the custom data source objects supported by the grid and the <b class='link'>Ext.grid.PropertyRecord</b> format
 * required for compatibility with the underlying store. Generally this class should not need to be used directly --
 * the grid's data should be accessed from the underlying store via the <b class='link' title='#store'>store</b> property.
*/
public class PropertyStore extends Observable {
/**
 * @constructor
 * @param grid The grid this store will be bound to
 * @param source The source data config object
 */
  public native function PropertyStore(grid : PropertyGrid, source : Object);
  public var recordType ;
    public native function setSource(grid : PropertyGrid, source : Object) : void;
    protected native function onUpdate(ds, record, type) : void;
    protected native function getProperty(row) : void;
    protected native function isEditableValue(val) : void;
    protected native function setValue(prop, value) : void;
    public native function getSource() : void;
}}
