package ext.config {


/**
 * The AutoLayout is the default layout manager delegated by <a href="Ext.Container.html">Ext.Container</a> to render any child Components when no <tt><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></tt> is configured into a <tt><a href="Ext.Container.html">Container</a>.</tt>. AutoLayout provides only a passthrough of any layout calls to any child containers.

 *
 * <p>This class serves as a
 * typed config object for constructor of class AutoContainerLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.AutoContainerLayout
 */
[ExtConfig(target="ext.layout.AutoContainerLayout")]
public class autocontainerlayout extends containerlayout {

  public function autocontainerlayout(config:Object = null) {

    super(config);
  }


}
}
    