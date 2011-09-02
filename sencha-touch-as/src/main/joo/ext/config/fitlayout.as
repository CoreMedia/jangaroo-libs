package ext.config {


/**
 * This is a base class for layouts that contain <b>a single item</b> that automatically expands to fill the layout's container. This class is intended to be extended or created via the <tt>layout:'fit'</tt> <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.
 <p>FitLayout does not have any direct config options (other than inherited ones). To fit a panel to a container using FitLayout, simply set layout:'fit' on the container and add a single panel to it. If the container has multiple panels, only the first one will be displayed.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class FitLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.FitLayout
 */
[ExtConfig(target="ext.layout.FitLayout", type="fit")]
public class fitlayout extends containerlayout {

  public function fitlayout(config:Object = null) {

    super(config);
  }


}
}
    