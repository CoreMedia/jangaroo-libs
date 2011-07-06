package ext.config {


/**
 * Abstract base class for grid SelectionModels. It provides the interface that should be implemented by descendant classes. This class should not be directly instantiated.
 * <p>This class serves as a typed config object for constructor of class AbstractSelectionModel.</p>
 *
 * @see ext.grid.AbstractSelectionModel
 */
[ExtConfig(target="ext.grid.AbstractSelectionModel")]
public class abstractselectionmodel extends observable {

  public function abstractselectionmodel(config:Object = null) {

    super(config);
  }


}
}
    