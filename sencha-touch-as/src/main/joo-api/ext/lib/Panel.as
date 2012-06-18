package ext.lib {

import ext.Component;
import ext.Container;
import ext.form.Number;

/**
 * Fires after the Panel has been resized.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>p:ext.Panel</code>
 the Panel which has been resized.
 *       </li>

 *       <li>
 *           <code>width:ext.form.Number</code>
 The Panel body's new width.
 *       </li>

 *       <li>
 *           <code>height:ext.form.Number</code>
 The Panel body's new height.
 *       </li>

 * </ul>
 */
[Event(name="bodyresize")]


/**
 * Shared Panel class
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.panel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#cls-Ext.lib.Panel Ext JS source
 */
[Native]
public class Panel extends ext.Container {

  /**
   *
   *
   * @see ext.config.panel
   */
  public function Panel() {
    super(null);
  }

  /**
   A shortcut for setting a border style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing borders. Defaults to <tt>undefined</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyBorder():*;

  /**
   A shortcut for setting a margin style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing margins. Defaults to <tt>undefined</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyMargin():*;

  /**
   A shortcut for setting a padding style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing padding. Defaults to <tt>undefined</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bodyPadding():*;

  /**
   * Adds docked item(s) to the panel.
   *
   * @param component The Component or array of components to add. The components must include a 'dock' paramater on each component to indicate where it should be docked ('top', 'right', 'bottom', 'left').
   * @param pos The index at which the Component will be added
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-addDocked Ext JS source
   */
  public native function addDocked(component:*, pos:ext.form.Number = null):void;

  /**
   * Attempts a default component lookup (see <a href="output/Ext.Container.html#Ext.Container-getComponent">Ext.Container.getComponent</a>). If the component is not found in the normal items, the dockedItems are searched and the matched component (if any) returned (see {&#64;loink #getDockedComponent}).
   *
   * @param comp This parameter may be any of the following: <div><ul class="mdetail-params"><li>a <b><code>String</code></b> : representing the <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> of the child component</li><li>a <b><code>Number</code></b> : representing the position of the child component within the <code><a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a></code> <b>property</b></li></ul></div><p>For additional information see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.</p>
   * @return The docked component, if found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-getComponent Ext JS source
   */
  override public native function getComponent(comp:*):ext.Component;

  /**
   * Finds a docked component by id, itemId or position
   *
   * @param comp The id, itemId or position of the child component (see <a href="output/Ext.lib.Panel.html#Ext.lib.Panel-getComponent">getComponent</a> for details)
   * @return The component (if found)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-getDockedComponent Ext JS source
   */
  public native function getDockedComponent(comp:*):ext.Component;

  /**
   * Retrieve an array of all currently docked components.
   *
   * @return An array of components.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-getDockedItems Ext JS source
   */
  public native function getDockedItems():Array;

  /**
   * Function description
   *
   * @return A CSS style string with style, padding, margin and border.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-initBodyStyles Ext JS source
   */
  public native function initBodyStyles():String;

  /**
   * Initialized the renderData to be used when rendering the renderTpl.
   *
   * @return Object with keys and values that are going to be applied to the renderTpl
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-initRenderData Ext JS source
   */
  override public native function initRenderData():Object;

  /**
   * Inserts docked item(s) to the panel at the indicated position.
   *
   * @param pos The index at which the Component will be inserted
   * @param component The Component or array of components to add. The components must include a 'dock' paramater on each component to indicate where it should be docked ('top', 'right', 'bottom', 'left').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-insertDocked Ext JS source
   */
  public native function insertDocked(pos:ext.form.Number, component:*):void;

  /**
   * Removes the docked item from the panel.
   *
   * @param item The Component to remove.
   * @param autoDestroy Destroy the component after removal.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Panel.html#method-Ext.lib.Panel-removeDocked Ext JS source
   */
  public native function removeDocked(item:ext.Component, autoDestroy:Boolean = false):void;

}
}
    