package ext.dd {
import ext.EventObject;

import js.HTMLElement;

/**
 * A DragDrop implementation where the linked element follows the
 * mouse cursor during a drag.
*/
public class DD extends DragDrop {
/**
 * @constructor
 * @param id the id of the linked element
 * @param sGroup the group of related DragDrop items
 * @param config an object containing configurable attributes
 *                Valid properties for DD:
 *                    scroll
 */
public function DD(id : String, sGroup : String, config : Object) {
  super(id, sGroup, config);
}
    /**
     * When set to true, the utility automatically tries to scroll the browser
     * window when a drag and drop element is dragged near the viewport boundary.
     * Defaults to true.
     * @property scroll
     */
    public var scroll : Boolean;
    /**
     * Sets the pointer offset to the distance between the linked element's top
     * left corner and the location the element was clicked
     * @method autoOffset
     * @param iPageX the X coordinate of the click
     * @param iPageY the Y coordinate of the click
     */
    public native function autoOffset(iPageX : int, iPageY : int) : void;
    /**
     * Sets the pointer offset.  You can call this directly to force the
     * offset to be in a particular location (e.g., pass in 0,0 to set it
     * to the center of the object)
     * @method setDelta
     * @param iDeltaX the distance from the left
     * @param iDeltaY the distance from the top
     */
    public native function setDelta(iDeltaX : int, iDeltaY : int) : void;
    /**
     * Sets the drag element to the location of the mousedown or click event,
     * maintaining the cursor location relative to the location on the element
     * that was clicked.  Override this if you want to place the element in a
     * location other than where the cursor is.
     * @method setDragElPos
     * @param iPageX the X coordinate of the mousedown or drag event
     * @param iPageY the Y coordinate of the mousedown or drag event
     */
    public native function setDragElPos(iPageX : int, iPageY : int) : void;
    /**
     * Sets the element to the location of the mousedown or click event,
     * maintaining the cursor location relative to the location on the element
     * that was clicked.  Override this if you want to place the element in a
     * location other than where the cursor is.
     * @method alignElWithMouse
     * @param el the element to move
     * @param iPageX the X coordinate of the mousedown or drag event
     * @param iPageY the Y coordinate of the mousedown or drag event
     */
    public native function alignElWithMouse(el : HTMLElement, iPageX : int, iPageY : int) : void;
    /**
     * Saves the most recent position so that we can reset the constraints and
     * tick marks on-demand.  We need to know this so that we can calculate the
     * number of pixels the element is offset from its original position.
     * @method cachePosition
     * @param iPageX the current x position (optional, this just makes it so we
     * don't have to look it up again)
     * @param iPageY the current y position (optional, this just makes it so we
     * don't have to look it up again)
     */
    public native function cachePosition(iPageX, iPageY) : void;
    /**
     * Auto-scroll the window if the dragged object has been moved beyond the
     * visible window boundary.
     * @method autoScroll
     * @param x the drag element's x position
     * @param y the drag element's y position
     * @param h the height of the drag element
     * @param w the width of the drag element
     * @private
     */
    public native function autoScroll(x : int, y : int, h : int, w : int) : void;
    /**
     * Finds the location the element should be placed if we want to move
     * it to where the mouse location less the click offset would place us.
     * @method getTargetCoord
     * @param iPageX the X coordinate of the click
     * @param iPageY the Y coordinate of the click
     * @return object that contains the coordinates (Object.x and Object.y)
     * @private
     */
    public native function getTargetCoord(iPageX : int, iPageY : int) : Object;
    /**
     * Sets up config options specific to this class. Overrides
     * Ext.dd.DragDrop, but all versions of this method through the
     * inheritance chain are called
     */
    override public native function applyConfig() : void;
    /**
     * Event that fires prior to the onMouseDown event.  Overrides
     * Ext.dd.DragDrop.
     */
    override protected native function b4MouseDown(e:EventObject) : void;
    /**
     * Event that fires prior to the onDrag event.  Overrides
     * Ext.dd.DragDrop.
     */
    override protected native function b4Drag(e:EventObject) : void;
    override public native function toString() : String;
    override public native function startDrag(x : Number, y : Number) : void;
    override public native function onDrag(e:EventObject) : void;
    override public native function onDragEnter(e:EventObject, id:Object) : void;
    override public native function onDragOver(e:EventObject, id:Object) : void;
    override public native function onDragOut(e:EventObject, id:Object) : void;
    override public native function onDragDrop(e:EventObject, id:Object) : void;
    override public native function endDrag(e:EventObject) : void;
/**
*/
}}
