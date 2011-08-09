package ext.config {


/**
 * Layout manager used by Ext.Toolbar. This is highly specialised for use by Toolbars and would not usually be used by any other class.
 * <p>This class serves as a typed config object for constructor of class ToolbarLayout.</p>
 *
 * @see ext.layout.ToolbarLayout
 */
[ExtConfig(target="ext.layout.ToolbarLayout", type="toolbar")]
public class toolbarlayout extends containerlayout {

  public function toolbarlayout(config:Object = null) {

    super(config);
  }


}
}
    