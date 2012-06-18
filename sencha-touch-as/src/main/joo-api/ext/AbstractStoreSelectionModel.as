package ext {

import ext.form.Number;
import ext.util.Observable;

/**
 * Tracks what records are currently selected in a databound widget. This is an abstract class and is not meant to be directly used. DataBound UI widgets such as GridPanel, TreePanel, and ListView should subclass AbstractStoreSelectionModel and provide a way to binding to the component. The abstract methods onSelectChange and onLastFocusChanged should be implemented in these subclasses to update the UI widget.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.abstractstoreselectionmodel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#cls-Ext.AbstractStoreSelectionModel Ext JS source
 */
[Native]
public class AbstractStoreSelectionModel extends Observable {

  /**
   *
   *
   * @see ext.config.abstractstoreselectionmodel
   */
  public function AbstractStoreSelectionModel() {
    super();
  }

  /**
   READ-ONLY A MixedCollection that maintains all of the currently selected records.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#prop-Ext.AbstractStoreSelectionModel-selected Ext JS source
   */
  public native function get selected():Object;

  /**
   * @private
   */
  public native function set selected(value:Object):void;

  /**
   Allow users to deselect a record in a DataView, List or Grid. Only applicable when the SelectionModel's mode is 'SINGLE'. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowDeselect():Boolean;

  /**
   Modes of selection. Valid values are SINGLE, SIMPLE, and MULTI. Defaults to 'SINGLE'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get mode():String;

  /**
   * Deselects a record instance by record instance or index.
   *
   * @param records An array of records or an index
   * @param suppressEvent Set to false to not fire a deselect event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-deselect Ext JS source
   */
  public native function deselect(records:*, suppressEvent:Boolean):void;

  /**
   * Returns the last selected record.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-getLastSelected Ext JS source
   */
  public native function getLastSelected():void;

  /**
   * Returns an array of the currently selected records.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-getSelection Ext JS source
   */
  public native function getSelection():void;

  /**
   * Returns the current selectionMode. SINGLE, MULTI or SIMPLE.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-getSelectionMode Ext JS source
   */
  public native function getSelectionMode():void;

  /**
   * Returns true if there is a selected record.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-hasSelection Ext JS source
   */
  public native function hasSelection():Boolean;

  /**
   * Returns true if the selections are locked.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-isLocked Ext JS source
   */
  public native function isLocked():Boolean;

  /**
   * Returns <tt>true</tt> if the specified row is selected.
   *
   * @param record The record or index of the record to check
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-isSelected Ext JS source
   */
  public native function isSelected(record:*):Boolean;

  /**
   * Selects a record instance by record instance or index.
   *
   * @param records An array of records or an index
   * @param keepExisting
   * @param suppressEvent Set to false to not fire a select event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-select Ext JS source
   */
  public native function select(records:*, keepExisting:Boolean, suppressEvent:Boolean):void;

  /**
   * Selects a range of rows if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is not locked</a>. All rows in between startRow and endRow are also selected.
   *
   * @param startRow The index of the first row in the range
   * @param endRow The index of the last row in the range
   * @param keepExisting True to retain existing selections
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-selectRange Ext JS source
   */
  public native function selectRange(startRow:ext.form.Number, endRow:ext.form.Number, keepExisting:Boolean = false):void;

  /**
   *
   *
   * @param record Set a record as the last focused record. This does NOT mean that the record has been selected.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-setLastFocused Ext JS source
   */
  public native function setLastFocused(record:ext.data.Record):void;

  /**
   * Locks the current selection and disables any changes from happening to the selection.
   *
   * @param locked
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-setLocked Ext JS source
   */
  public native function setLocked(locked:Boolean):void;

  /**
   * Sets the current selectionMode. SINGLE, MULTI or SIMPLE.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractStoreSelectionModel.html#method-Ext.AbstractStoreSelectionModel-setSelectionMode Ext JS source
   */
  public native function setSelectionMode():void;

}
}
    