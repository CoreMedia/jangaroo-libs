package ext.grid {

import ext.util.Observable;

/**
 * Abstract base class for grid SelectionModels.  It provides the interface that should be
 * implemented by descendant classes.  This class should not be directly instantiated.
*/
public class AbstractSelectionModel extends Observable {
/**
 * @constructor
 */
public function AbstractSelectionModel() {
  super();
}
    /**
     * The GridPanel for which this SelectionModel is handling selection. Read-only.
     * @property grid
     */
    /** @ignore Called by the grid automatically. Do not call directly. */
    protected native function init(grid : *) : void;

    /**
     * Locks the selections.
     */
    public native function lock() : void;
    /**
     * Unlocks the selections.
     */
    public native function unlock() : void;
    /**
     * Returns true if the selections are locked.
     * @return 
     */
    public native function isLocked() : Boolean;
    public native function destroy() : void;
}}
