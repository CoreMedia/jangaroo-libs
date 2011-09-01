package ext.config {


/**
 * Tracks what records are currently selected in a databound widget. This is an abstract class and is not meant to be directly used. DataBound UI widgets such as GridPanel, TreePanel, and ListView should subclass AbstractStoreSelectionModel and provide a way to binding to the component. The abstract methods onSelectChange and onLastFocusChanged should be implemented in these subclasses to update the UI widget.
 *
 * <p>This class serves as a
 * typed config object for constructor of class AbstractStoreSelectionModel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.AbstractStoreSelectionModel
 */
[ExtConfig(target="ext.AbstractStoreSelectionModel")]
public class abstractstoreselectionmodel extends observable {

  public function abstractstoreselectionmodel(config:Object = null) {

    super(config);
  }


  /**
   Allow users to deselect a record in a DataView, List or Grid. Only applicable when the SelectionModel's mode is 'SINGLE'. Defaults to false.
   */
  public native function get allowDeselect():Boolean;

  /**
   * @private
   */
  public native function set allowDeselect(value:Boolean):void;

  /**
   Modes of selection. Valid values are SINGLE, SIMPLE, and MULTI. Defaults to 'SINGLE'
   */
  public native function get mode():String;

  /**
   * @private
   */
  public native function set mode(value:String):void;


}
}
    