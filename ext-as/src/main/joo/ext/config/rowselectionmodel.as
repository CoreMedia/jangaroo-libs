package ext.config {


/**
 * The default SelectionModel used by <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>. It supports multiple selections and keyboard selection/navigation. The objects stored as selections and returned by <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-getSelected">getSelected</a>, and <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-getSelections">getSelections</a> are the <a href="Ext.data.Record.html">Record</a>s which provide the data for the selected rows.
 * <p>This class serves as a typed config object for constructor of class RowSelectionModel.</p>
 *
 * @see ext.grid.RowSelectionModel
 */
[ExtConfig(target="ext.grid.RowSelectionModel")]
public class rowselectionmodel extends abstractselectionmodel {

  public function rowselectionmodel(config:Object = null) {

    super(config);
  }


  /**
   <tt>false</tt> to turn off moving the editor to the next row down when the enter key is pressed or the next row up when shift + enter keys are pressed.
   */
  public native function get moveEditorOnEnter():Boolean;

  /**
   * @private
   */
  public native function set moveEditorOnEnter(value:Boolean):void;

  /**
   <tt>true</tt> to allow selection of only one row at a time (defaults to <tt>false</tt> allowing multiple selections)
   */
  public native function get singleSelect():Boolean;

  /**
   * @private
   */
  public native function set singleSelect(value:Boolean):void;


}
}
    