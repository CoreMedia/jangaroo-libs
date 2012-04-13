package ext.dd.dragdropmgr {
import js.HTMLElement;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-property-_timeoutCount Sencha Docs Ext JS 3.4
   */
  public static native function get _timeoutCount():Object;

  /**
   * @private
   */
  public static native function set _timeoutCount(value:Object):void;

  /**
   A reference to the style property
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-property-css Sencha Docs Ext JS 3.4
   */
  public native function get css():Object;

  /**
   * @private
   */
  public native function set css(value:Object):void;

  /**
   The element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-property-el Sencha Docs Ext JS 3.4
   */
  public native function get el():Object;

  /**
   * @private
   */
  public native function set el(value:Object):void;

  /**
   The element id
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-property-id Sencha Docs Ext JS 3.4
   */
  public native function get id():Object;

  /**
   * @private
   */
  public native function set id(value:Object):void;

  /**
   * Trying to make the load order less important. Without this we get an error if this file is loaded before the Event Utility.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-_addListeners Sencha Docs Ext JS 3.4
   */
  public static native function _addListeners():void;

  /**
   * Returns the X position of an html element
   *
   * @param el element for which to get the position
   * @return the X coordinate
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getPosX Sencha Docs Ext JS 3.4
   */
  public static native function getPosX(el:*):int;

  /**
   * Returns the Y position of an html element
   *
   * @param el element for which to get the position
   * @return the Y coordinate
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getPosY Sencha Docs Ext JS 3.4
   */
  public static native function getPosY(el:*):int;

  /**
   * Returns the current scroll position
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getScroll Sencha Docs Ext JS 3.4
   */
  public static native function getScroll():void;

  /**
   * Gets the scrollLeft
   *
   * @return the document's scrollTop
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getScrollLeft Sencha Docs Ext JS 3.4
   */
  public static native function getScrollLeft():int;

  /**
   * Gets the scrollTop
   *
   * @return the document's scrollTop
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getScrollTop Sencha Docs Ext JS 3.4
   */
  public static native function getScrollTop():int;

  /**
   * Returns the specified element style property
   *
   * @param el the element
   * @param styleProp the style property
   * @return The value of the style property
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-getStyle Sencha Docs Ext JS 3.4
   */
  public static native function getStyle(el:HTMLElement, styleProp:String):String;

  /**
   * Recursively searches the immediate parent and all child nodes for the handle element in order to determine whether or not it was clicked.
   *
   * @param node html element to inspect
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-handleWasClicked Sencha Docs Ext JS 3.4
   */
  public static native function handleWasClicked(node:*):void;

  /**
   * Sets the x/y position of an element to the location of the target element.
   *
   * @param moveEl The element to move
   * @param targetEl The position reference element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-moveToEl Sencha Docs Ext JS 3.4
   */
  public static native function moveToEl(moveEl:HTMLElement, targetEl:HTMLElement):void;

  /**
   * Numeric array sort function
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-numericSort Sencha Docs Ext JS 3.4
   */
  public static native function numericSort():void;

  /**
   * Swap two nodes. In IE, we use the native method, for others we emulate the IE behavior
   *
   * @param n1 first node to swap
   * @param n2 other node to swap
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DragDropMgr.ElementWrapper-method-swapNode Sencha Docs Ext JS 3.4
   */
  public static native function swapNode(n1:*, n2:*):void;

}
}
    