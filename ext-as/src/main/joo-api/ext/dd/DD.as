package ext.dd {
import ext.IEventObject;

import js.HTMLElement;

/**
 * A DragDrop implementation where the linked element follows the mouse cursor during a drag.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD Sencha Docs Ext JS 3.4
 */
public class DD extends DragDrop {

  /**
   *
   *
   * @param id the id of the linked element
   * @param sGroup the group of related DragDrop items
   * @param config an object containing configurable attributes Valid properties for DD: scroll
   */
  public function DD(id:String, sGroup:String, config:Object) {
    super(null, null, null);
  }

  /**
   When set to true, the utility automatically tries to scroll the browser window when a drag and drop element is dragged near the viewport boundary. Defaults to true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-property-scroll Sencha Docs Ext JS 3.4
   */
  public native function get scroll():Boolean;

  /**
   * @private
   */
  public native function set scroll(value:Boolean):void;

  /**
   * Sets the element to the location of the mousedown or click event, maintaining the cursor location relative to the location on the element that was clicked. Override this if you want to place the element in a location other than where the cursor is.
   *
   * @param el the element to move
   * @param iPageX the X coordinate of the mousedown or drag event
   * @param iPageY the Y coordinate of the mousedown or drag event
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-alignElWithMouse Sencha Docs Ext JS 3.4
   */
  public native function alignElWithMouse(el:HTMLElement, iPageX:int, iPageY:int):void;

  /**
   * Sets up config options specific to this class. Overrides Ext.dd.DragDrop, but all versions of this method through the inheritance chain are called
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-applyConfig Sencha Docs Ext JS 3.4
   */
  override public native function applyConfig():void;

  /**
   * Sets the pointer offset to the distance between the linked element's top left corner and the location the element was clicked
   *
   * @param iPageX the X coordinate of the click
   * @param iPageY the Y coordinate of the click
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-autoOffset Sencha Docs Ext JS 3.4
   */
  public native function autoOffset(iPageX:int, iPageY:int):void;

  /**
   * Auto-scroll the window if the dragged object has been moved beyond the visible window boundary.
   *
   * @param x the drag element's x position
   * @param y the drag element's y position
   * @param h the height of the drag element
   * @param w the width of the drag element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-autoScroll Sencha Docs Ext JS 3.4
   */
  public native function autoScroll(x:int, y:int, h:int, w:int):void;

  /**
   * Event that fires prior to the onDrag event. Overrides Ext.dd.DragDrop.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-b4Drag Sencha Docs Ext JS 3.4
   */
  override public native function b4Drag():void;

  /**
   * Event that fires prior to the onMouseDown event. Overrides Ext.dd.DragDrop.
   *
   * @param e the mousedown event
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-b4MouseDown Sencha Docs Ext JS 3.4
   */
  override public native function b4MouseDown(e:IEventObject):void;

  /**
   * Saves the most recent position so that we can reset the constraints and tick marks on-demand. We need to know this so that we can calculate the number of pixels the element is offset from its original position.
   *
   * @param iPageX current x position (optional, this just makes it so we don't have to look it up again)
   * @param iPageY current y position (optional, this just makes it so we don't have to look it up again)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-cachePosition Sencha Docs Ext JS 3.4
   */
  public native function cachePosition(iPageX:*, iPageY:*):void;

  /**
   * Finds the location the element should be placed if we want to move it to where the mouse location less the click offset would place us.
   *
   * @param iPageX the X coordinate of the click
   * @param iPageY the Y coordinate of the click
   * @return an object that contains the coordinates (Object.x and Object.y)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-getTargetCoord Sencha Docs Ext JS 3.4
   */
  public native function getTargetCoord(iPageX:int, iPageY:int):Object;

  /**
   * Sets the pointer offset. You can call this directly to force the offset to be in a particular location (e.g., pass in 0,0 to set it to the center of the object)
   *
   * @param iDeltaX the distance from the left
   * @param iDeltaY the distance from the top
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-setDelta Sencha Docs Ext JS 3.4
   */
  public native function setDelta(iDeltaX:int, iDeltaY:int):void;

  /**
   * Sets the drag element to the location of the mousedown or click event, maintaining the cursor location relative to the location on the element that was clicked. Override this if you want to place the element in a location other than where the cursor is.
   *
   * @param iPageX the X coordinate of the mousedown or drag event
   * @param iPageY the Y coordinate of the mousedown or drag event
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.DD-method-setDragElPos Sencha Docs Ext JS 3.4
   */
  public native function setDragElPos(iPageX:int, iPageY:int):void;

}
}
    