package ext.grid {

import ext.data.Record;

/**
 * The default SelectionModel used by <b class='link'>Ext.grid.GridPanel</b>.
 * It supports multiple selections and keyboard selection/navigation. The objects stored
 * as selections and returned by <b class='link' title='#getSelected'>getSelected</b>, and <b class='link' title='#getSelections'>getSelections</b> are
 * the <b class='link' title='ext.data.Record'>Record</b>s which provide the data for the selected rows.
*/
public class RowSelectionModel extends AbstractSelectionModel {
/**
 * @constructor
 * @param config
 */
public native function RowSelectionModel(config:Object = null);
    /**
     * @cfg {Boolean} singleSelect
     * <code>true</code> to allow selection of only one row at a time (defaults to <code>false</code>
     * allowing multiple selections)
     */
    public var singleSelect  : Boolean;
    /**
     * @cfg {Boolean} moveEditorOnEnter
     * <code>false</code> to turn off moving the editor to the next row down when the enter key is pressed
     * or the next row up when shift + enter keys are pressed.
     */
    protected native function initEvents() : void;
    protected native function onRefresh() : void;
    protected native function onRemove(v, index, r) : void;
    protected native function onRowUpdated(v, index, r) : void;
    /**
     * Select records.
     * @param records The records to select
     * @param keepExisting <code>true</code> to keep existing selections
     */
    public native function selectRecords(records : Array, keepExisting : Boolean = undefined) : void;
    /**
     * Gets the number of selected rows.
     * @return 
     */
    public native function getCount() : Number;
    /**
     * Selects the first row in the grid.
     */
    public native function selectFirstRow() : void;
    /**
     * Select the last row.
     * @param keepExisting <code>true</code> to keep existing selections
     */
    public native function selectLastRow(keepExisting : Boolean = undefined) : void;
    /**
     * Selects the row immediately following the last selected row.
     * @param keepExisting <code>true</code> to keep existing selections
     * @return <code>true</code> if there is a next row, else <code>false</code>
     */
    public native function selectNext(keepExisting : Boolean = undefined) : Boolean;
    /**
     * Selects the row that precedes the last selected row.
     * @param keepExisting <code>true</code> to keep existing selections
     * @return <code>true</code> if there is a previous row, else <code>false</code>
     */
    public native function selectPrevious(keepExisting : Boolean = undefined) : Boolean;
    /**
     * Returns true if there is a next record to select
     * @return 
     */
    public native function hasNext() : Boolean;
    /**
     * Returns true if there is a previous record to select
     * @return 
     */
    public native function hasPrevious() : Boolean;
    /**
     * Returns the selected records
     * @return Array of selected records
     */
    public native function getSelections() : Array;
    /**
     * Returns the first selected record.
     * @return 
     */
    public native function getSelected() : Record;
    /**
     * Calls the passed function with each selection. If the function returns
     * <code>false</code>, iteration is stopped and this function returns
     * <code>false</code>. Otherwise it returns <code>true</code>.
     * @param fn
     * @param scope
     * @return true if all selections were iterated
     */
    public native function each(fn : Function, scope : Object = undefined) : Boolean;
    /**
     * Clears all selections if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is not'>locked</b>.
     * @param fast <code>true</code> to bypass the
     * conditional checks and events described in <b class='link' title='#deselectRow'>deselectRow</b>.
     */
    public native function clearSelections(fast : Boolean = undefined) : void;
    /**
     * Selects all rows if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is not'>locked</b>. 
     */
    public native function selectAll() : void;
    /**
     * Returns <code>true</code> if there is a selection.
     * @return 
     */
    public native function hasSelection() : Boolean;
    /**
     * Returns <code>true</code> if the specified row is selected.
     * @param index The record or index of the record to check
     * @return 
     */
    public native function isSelected(index : *) : Boolean;
    /**
     * Returns <code>true</code> if the specified record id is selected.
     * @param id The id of record to check
     * @return 
     */
    public native function isIdSelected(id : String) : Boolean;
    protected native function handleMouseDown(g, rowIndex, e) : void;
    /**
     * Selects multiple rows.
     * @param rows Array of the indexes of the row to select
     * @param keepExisting <code>true</code> to keep
     * existing selections (defaults to <code>false</code>)
     */
    public native function selectRows(rows : Array, keepExisting : Boolean = undefined) : void;
    /**
     * Selects a range of rows if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is not'>locked</b>.
     * All rows in between startRow and endRow are also selected.
     * @param startRow The index of the first row in the range
     * @param endRow The index of the last row in the range
     * @param keepExisting True to retain existing selections
     */
    public native function selectRange(startRow : Number, endRow : Number, keepExisting : Boolean = undefined) : void;
    /**
     * Deselects a range of rows if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is not'>locked</b>.  
     * All rows in between startRow and endRow are also deselected.
     * @param startRow The index of the first row in the range
     * @param endRow The index of the last row in the range
     */
    public native function deselectRange(startRow : Number, endRow : Number, preventViewNotify) : void;
    /**
     * Selects a row.  Before selecting a row, checks if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is'>locked</b> and fires the
     * <b class='link' title='#beforerowselect'>beforerowselect</b> event.  If these checks are satisfied the row
     * will be selected and followed up by  firing the <b class='link' title='#rowselect'>rowselect</b> and
     * <b class='link' title='#selectionchange'>selectionchange</b> events.
     * @param row The index of the row to select
     * @param keepExisting <code>true</code> to keep existing selections
     * @param preventViewNotify Specify <code>true</code> to
     * prevent notifying the view (disables updating the selected appearance)
     */
    public native function selectRow(row : Number, keepExisting : Boolean = undefined, preventViewNotify : Boolean = undefined) : void;
    /**
     * Deselects a row.  Before deselecting a row, checks if the selection model
     * <b class='link' title='Ext.grid.AbstractSelectionModel#isLocked is'>locked</b>.
     * If this check is satisfied the row will be deselected and followed up by
     * firing the <b class='link' title='#rowdeselect'>rowdeselect</b> and <b class='link' title='#selectionchange'>selectionchange</b> events.
     * @param row The index of the row to deselect
     * @param preventViewNotify Specify <code>true</code> to
     * prevent notifying the view (disables updating the selected appearance)
     */
    public native function deselectRow(row : Number, preventViewNotify : Boolean = undefined) : void;
    protected native function restoreLast() : void;
    protected native function acceptsNav(row, col, cm) : void;
    protected native function onEditorKey(field, e) : void;
    override public native function destroy() : void;
}}
