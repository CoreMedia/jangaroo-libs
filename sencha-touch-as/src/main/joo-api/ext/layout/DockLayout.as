package ext.layout {

import ext.Component;
import ext.Element;
import ext.form.Number;

/**
 * This ComponentLayout handles docking for Panels. It takes care of panels that are part of a ContainerLayout that sets this Panel's size and Panels that are part of an AutoContainerLayout in which this panel get his height based of the CSS or or its content.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#cls-Ext.layout.DockLayout Ext JS source
 */
[Native]
public class DockLayout extends ComponentLayout {

  /**
   *
   *
   */
  public function DockLayout() {
    super();
  }

  /**
   This class is automatically added to each docked item within this layout. We also use this as a prefix for the position class e.g. x-docked-bottom
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#prop-Ext.layout.DockLayout-itemCls Ext JS source
   */
  public native function get itemCls():String;

  /**
   * @private
   */
  public native function set itemCls(value:String):void;

  /**
   *
   *
   * @param box The box containing information about the width and height of this docked item
   * @param index The index position of this docked item
   * @return The adjusted box
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-adjustAutoBox Ext JS source
   */
  protected native function adjustAutoBox(box:Object, index:ext.form.Number):Object;

  /**
   *
   *
   * @param box The box containing information about the width and height of this docked item
   * @param index The index position of this docked item
   * @return The adjusted box
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-adjustSizedBox Ext JS source
   */
  protected native function adjustSizedBox(box:Object, index:ext.form.Number):Object;

  /**
   *
   *
   * @param items Array containing all the docked items we have to layout
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-calculateDockBoxes Ext JS source
   */
  protected native function calculateDockBoxes(items:Array):void;

  /**
   *
   *
   * @param item The item we are configuring
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-configureItem Ext JS source
   */
  public native function configureItemDockLayout(item:Component):void;

  /**
   *
   *
   * @param items Array containing all the docked items
   * @param autoBoxes Set this to true if the Panel is part of an AutoContainerLayout
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-dockItems Ext JS source
   */
  protected native function dockItems(items:Array, autoBoxes:Boolean):void;

  /**
   *
   *
   * @return An array containing all the docked items of the Panel
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-getLayoutItems Ext JS source
   */
  protected native function getLayoutItems():Array;

  /**
   *
   *
   * @param item The docked item we want to initialize the box for
   * @return The initial box containing width and height and other useful information
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-initBox Ext JS source
   */
  protected native function initBox(item:Component):Object;

  /**
   *
   *
   * @param owner The Panel that owns this DockLayout
   * @param target The target in which we are going to render the docked items
   * @param args The arguments passed to the ComponentLayout.layout method
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-onLayout Ext JS source
   */
  protected native function onLayout(owner:Component, target:Element, args:Array):void;

  /**
   *
   *
   * @param box An object containing new x, y, width and height values for the Panel's body
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DockLayout.html#method-Ext.layout.DockLayout-setBodyBox Ext JS source
   */
  protected native function setBodyBox(box:Object):void;

}
}
    