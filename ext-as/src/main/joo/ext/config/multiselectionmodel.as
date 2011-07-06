package ext.config {


/**
 * Multi selection for a TreePanel.
 * <p>This class serves as a typed config object for constructor of class MultiSelectionModel.</p>
 *
 * @see ext.tree.MultiSelectionModel
 */
[ExtConfig(target="ext.tree.MultiSelectionModel")]
public class multiselectionmodel extends observable {

  public function multiselectionmodel(config:Object = null) {

    super(config);
  }


}
}
    