package ext.config {


/**
 * This class provides the basic implementation for <i>single</i> <b>cell</b> selection in a grid. The object stored as the selection contains the following properties: <div class="mdetail-params"><ul><li><b>cell</b> : see <a href="output/Ext.grid.CellSelectionModel.html#Ext.grid.CellSelectionModel-getSelectedCell">getSelectedCell</a></li><li><b>record</b> : Ext.data.record The <a href="Ext.data.Record.html">Record</a> which provides the data for the row containing the selection</li></ul></div>
 * <p>This class serves as a typed config object for constructor of class CellSelectionModel.</p>
 *
 * @see ext.grid.CellSelectionModel
 */
[ExtConfig(target="ext.grid.CellSelectionModel")]
public class cellselectionmodel extends abstractselectionmodel {

  public function cellselectionmodel(config:Object = null) {

    super(config);
  }


}
}
    