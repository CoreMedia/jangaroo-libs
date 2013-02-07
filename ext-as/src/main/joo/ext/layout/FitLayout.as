package ext.layout {
import ext.config.fitlayout;

/**
 * This is a base class for layouts that contain <b>a single item</b> that automatically expands to fill the layout's container. This class is intended to be extended or created via the <tt>layout:'fit'</tt> <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.
 <p>FitLayout does not have any direct config options (other than inherited ones). To fit a panel to a container using FitLayout, simply set layout:'fit' on the container and add a single panel to it. If the container has multiple panels, only the first one will be displayed. Example usage:</p><pre><code>var p = new Ext.Panel({
 title: 'Fit Layout',
 layout:'fit',
 items: {
 title: 'Inner Panel',
 html: '&lt;p&gt;This is the inner panel content&lt;/p&gt;',
 border: false
 }
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.fitlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.FitLayout Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.layout.FitLayout")]
public class FitLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.fitlayout
   */
  public function FitLayout(config:fitlayout = null) {
    super(config);
  }

}
}
    