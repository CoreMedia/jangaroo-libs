package ext.dd.dragdropmgr {

import js.HTMLElement;

/**
 *
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#cls-Ext.dd.DragDropMgr.ElementWrapper Ext JS source
 */
public class ElementWrapper {

  /**
   *
   *
   */
  public function ElementWrapper() {
    super();
  }

  /**
   Internal counter
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr.ElementWrapper-_timeoutCount Ext JS source
   */
  public static native function get _timeoutCount():Object;

  /**
   * @private
   */
  public static native function set _timeoutCount(value:Object):void;

  /**
   A reference to the style property
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr.ElementWrapper-css Ext JS source
   */
  public native function get css():Object;

  /**
   * @private
   */
  public native function set css(value:Object):void;

  /**
   The element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr.ElementWrapper-el Ext JS source
   */
  public native function get el():Object;

  /**
   * @private
   */
  public native function set el(value:Object):void;

  /**
   The element id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr.ElementWrapper-id Ext JS source
   */
  public native function get id():Object;

  /**
   * @private
   */
  public native function set id(value:Object):void;

  /**
   * Trying to make the load order less important. Without this we get an error if this file is loaded before the Event Utility.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-_addListeners Ext JS source
   */
  public static native function _addListeners():void;

  /**
   * Returns the X position of an html element
   *
   * @param el element for which to get the position
   * @return the X coordinate
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getPosX Ext JS source
   */
  public static native function getPosX(el:*):int;

  /**
   * Returns the Y position of an html element
   *
   * @param el element for which to get the position
   * @return the Y coordinate
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getPosY Ext JS source
   */
  public static native function getPosY(el:*):int;

  /**
   * Returns the current scroll position
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getScroll Ext JS source
   */
  public static native function getScroll():void;

  /**
   * Gets the scrollLeft
   *
   * @return the document's scrollTop
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getScrollLeft Ext JS source
   */
  public static native function getScrollLeft():int;

  /**
   * Gets the scrollTop
   *
   * @return the document's scrollTop
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getScrollTop Ext JS source
   */
  public static native function getScrollTop():int;

  /**
   * Returns the specified element style property
   *
   * @param el the element
   * @param styleProp the style property
   * @return The value of the style property
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-getStyle Ext JS source
   */
  public static native function getStyle(el:HTMLElement, styleProp:String):String;

  /**
   * Recursively searches the immediate parent and all child nodes for the handle element in order to determine whether or not it was clicked.
   *
   * @param node html element to inspect
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-handleWasClicked Ext JS source
   */
  public static native function handleWasClicked(node:*):void;

  /**
   * Sets the x/y position of an element to the location of the target element.
   *
   * @param moveEl The element to move
   * @param targetEl The position reference element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-moveToEl Ext JS source
   */
  public static native function moveToEl(moveEl:HTMLElement, targetEl:HTMLElement):void;

  /**
   * Numeric array sort function
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-numericSort Ext JS source
   */
  public static native function numericSort():void;

  /**
   * Swap two nodes. In IE, we use the native method, for others we emulate the IE behavior
   *
   * @param n1 first node to swap
   * @param n2 other node to swap
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr.ElementWrapper-swapNode Ext JS source
   */
  public static native function swapNode(n1:*, n2:*):void;

}
}
    