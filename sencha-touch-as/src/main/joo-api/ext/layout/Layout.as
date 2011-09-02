package ext.layout {

import ext.Component;
import ext.Element;
import ext.form.Number;

/**
 * Base Layout class - extended by ComponentLayout and ContainerLayout
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#cls-Ext.layout.Layout Ext JS source
 */
public class Layout {

  /**
   *
   *
   */
  public function Layout(config:Object = null) {
    super();
  }

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-afterRemove Ext JS source
   */
  public native function afterRemove():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-configureItem Ext JS source
   */
  public native function configureItem():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-initLayout Ext JS source
   */
  public native function initLayout():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-layout Ext JS source
   */
  public native function layout():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-moveItem Ext JS source
   */
  public native function moveItem():void;

  /**
   *
   *
   * @param c The Component to render
   * @param position The position within the target to render the item to
   * @param target The target Element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-renderItem Ext JS source
   */
  public native function renderItem(c:Component, position:ext.form.Number, target:Element):void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layout.html#method-Ext.layout.Layout-renderItems Ext JS source
   */
  public native function renderItems():void;

}
}
    