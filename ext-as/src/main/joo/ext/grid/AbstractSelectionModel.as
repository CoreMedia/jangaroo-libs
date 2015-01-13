package ext.grid {
import ext.util.Observable;

/**
 * Abstract base class for grid SelectionModels. It provides the interface that should be implemented by descendant classes. This class should not be directly instantiated.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.abstractselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.AbstractSelectionModel Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "grid.AbstractSelectionModel")]
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.AbstractSelectionModel-property-grid Sencha Docs Ext JS 3.4
   */
  public native function get grid():Object;

  /**
   * Returns true if the selections are locked.
   *
   * @return
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.AbstractSelectionModel-method-isLocked Sencha Docs Ext JS 3.4
   */
  public native function isLocked():Boolean;

  /**
   * Locks the selections.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.AbstractSelectionModel-method-lock Sencha Docs Ext JS 3.4
   */
  public native function lock():void;

  /**
   * Unlocks the selections.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.AbstractSelectionModel-method-unlock Sencha Docs Ext JS 3.4
   */
  public native function unlock():void;

}
}
    