package ext.config {


/**
 * A custom column model for the <a href="Ext.grid.PropertyGrid.html">Ext.grid.PropertyGrid</a>. Generally it should not need to be used directly.
 *
 * <p>This class serves as a
 * typed config object for constructor of class PropertyColumnModel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.grid.PropertyColumnModel
 */
[ExtConfig(target="ext.grid.PropertyColumnModel")]
public class propertycolumnmodel extends columnmodel {

  public function propertycolumnmodel(config:Object = null) {

    super(config);
  }


}
}
    