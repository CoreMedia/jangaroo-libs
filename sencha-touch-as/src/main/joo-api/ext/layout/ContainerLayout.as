package ext.layout {

import ext.Element;
import ext.config.containerlayout;

/**
 * This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.containerlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ContainerLayout.html#cls-Ext.layout.ContainerLayout Ext JS source
 */
public class ContainerLayout extends Layout {

  /**
   *
   *
   * @see ext.config.containerlayout
   */
  public function ContainerLayout(config:containerlayout = null) {
    super(config);
  }

  /**
   An optional extra CSS class that will be added to the container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-ctCls">ctCls</a> also.
   <br/><br/>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemCls():String;

  /**
   * Returns an array of child components.
   *
   * @return of child components
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ContainerLayout.html#method-Ext.layout.ContainerLayout-getLayoutItems Ext JS source
   */
  public native function getLayoutItems():Array;

  /**
   * Returns the owner component's resize element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ContainerLayout.html#method-Ext.layout.ContainerLayout-getTarget Ext JS source
   */
  public native function getTarget():Element;

}
}
    