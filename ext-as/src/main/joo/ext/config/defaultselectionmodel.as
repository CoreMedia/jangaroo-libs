package ext.config {


/**
 * The default single selection for a TreePanel.
 *
 * <p>This class serves as a
 * typed config object for constructor of class DefaultSelectionModel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.tree.DefaultSelectionModel
 */
[ExtConfig(target="ext.tree.DefaultSelectionModel")]
public class defaultselectionmodel extends observable {

  public function defaultselectionmodel(config:Object = null) {

    super(config);
  }


}
}
    