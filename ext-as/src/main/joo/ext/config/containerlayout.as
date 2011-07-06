package ext.config {

import ext.Ext;

/**
 * This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.

 * <p>This class serves as a typed config object for constructor of class ContainerLayout.</p>
 *
 * @see ext.layout.ContainerLayout
 */
[ExtConfig(target="ext.layout.ContainerLayout")]
public class containerlayout {

  public function containerlayout(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   An optional extra CSS class that will be added to the container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-ctCls">ctCls</a> also.
   <p><b>Note</b>: <tt>extraCls</tt> defaults to <tt>''</tt> except for the following classes which assign a value by default:</p><div class="mdetail-params"><ul><li><a href="Ext.layout.AbsoluteLayout.html">Absolute Layout</a> : <tt>'x-abs-layout-item'</tt></li><li><a href="Ext.layout.Box.html">Box Layout</a> : <tt>'x-box-item'</tt></li><li><a href="Ext.layout.ColumnLayout.html">Column Layout</a> : <tt>'x-column'</tt></li></ul></div>To configure the above Classes with an extra CSS class append to the default. For example, for ColumnLayout:<pre><code>extraCls: 'x-column custom-class'
   </code></pre><br/><br/>
   */
  public native function get extraCls():String;

  /**
   * @private
   */
  public native function set extraCls(value:String):void;

  /**
   True to hide each contained item on render (defaults to false).
   */
  public native function get renderHidden():Boolean;

  /**
   * @private
   */
  public native function set renderHidden(value:Boolean):void;


}
}
    