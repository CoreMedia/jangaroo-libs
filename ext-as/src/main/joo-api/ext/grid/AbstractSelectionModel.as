package ext.grid {

import ext.util.Observable;

/**
 * Abstract base class for grid SelectionModels. It provides the interface that should be implemented by descendant classes. This class should not be directly instantiated.
 * @see ext.config.abstractselectionmodel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractSelectionModel.html#cls-Ext.grid.AbstractSelectionModel Ext JS source
 */
public class AbstractSelectionModel extends Observable {

  /**
   *
   *
   * @see ext.config.abstractselectionmodel
   */
  public function AbstractSelectionModel() {
    super();
  }

  /**
   The GridPanel for which this SelectionModel is handling selection.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractSelectionModel.html#prop-Ext.grid.AbstractSelectionModel-grid Ext JS source
   */
  public native function get grid():Object;

  /**
   * Returns true if the selections are locked.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractSelectionModel.html#method-Ext.grid.AbstractSelectionModel-isLocked Ext JS source
   */
  public native function isLocked():Boolean;

  /**
   * Locks the selections.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractSelectionModel.html#method-Ext.grid.AbstractSelectionModel-lock Ext JS source
   */
  public native function lock():void;

  /**
   * Unlocks the selections.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/AbstractSelectionModel.html#method-Ext.grid.AbstractSelectionModel-unlock Ext JS source
   */
  public native function unlock():void;

}
}
    