package ext.config {

import joo.JavaScriptObject;

/**
 * This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.

 *
 * <p>This class serves as a
 * typed config object for constructor of class ContainerLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.ContainerLayout
 */
[ExtConfig(target="ext.layout.ContainerLayout", type="container")]
public class containerlayout extends JavaScriptObject {

  public function containerlayout(config:Object = null) {

    super(config);
  }


  /**
   An optional extra CSS class that will be added to the container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-ctCls">ctCls</a> also.
   <br/><br/>
   */
  public native function get itemCls():String;

  /**
   * @private
   */
  public native function set itemCls(value:String):void;


}
}
    