package ext.layout {

import ext.Element;

/**
 * This class is intended to be extended or created via the <tt><b><a href="output/Ext.Component.html#Ext.Component-componentLayout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Component.html#Ext.Component-componentLayout">Ext.Component.componentLayout</a></b></tt> for additional details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentLayout.html#cls-Ext.layout.ComponentLayout Ext JS source
 */
[Native]
public class ComponentLayout extends Layout {

  /**
   *
   *
   */
  public function ComponentLayout() {
    super();
  }

  /**
   * Returns the owner component's resize element.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentLayout.html#method-Ext.layout.ComponentLayout-getTarget Ext JS source
   */
  public native function getTarget():Element;

  /**
   * Check if the new size is different from the current size and only trigger a layout if it is necessary.
   *
   * @param width The new width to set.
   * @param height The new height to set.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentLayout.html#method-Ext.layout.ComponentLayout-needsLayout Ext JS source
   */
  public native function needsLayout(width:*, height:*):void;

  /**
   * Set the size of any element supporting undefined, null, and values.
   *
   * @param width The new width to set.
   * @param height The new height to set.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentLayout.html#method-Ext.layout.ComponentLayout-setElementSize Ext JS source
   */
  public native function setElementSize(width:*, height:*):void;

  /**
   * Set the size of the target element.
   *
   * @param width The new width to set.
   * @param height The new height to set.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ComponentLayout.html#method-Ext.layout.ComponentLayout-setTargetSize Ext JS source
   */
  public native function setTargetSize(width:*, height:*):void;

}
}
    