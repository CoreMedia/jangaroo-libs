package ext.dd {
import ext.EventObject;

import js.HTMLElement;

/**
 * Defines the interface and base operation of items that that can be
 * dragged or can be drop targets.  It was designed to be extended, overriding
 * the event handlers for startDrag, onDrag, onDragOver and onDragOut.
 * Up to three html elements can be associated with a DragDrop instance:
 * <ul>
 * <li>linked element: the element that is passed into the constructor.
 * This is the element which defines the boundaries for interaction with
 * other DragDrop objects.</li>
 * <li>handle element(s): The drag operation only occurs if the element that
 * was clicked matches a handle element.  By default this is the linked
 * element, but there are times that you will want only a portion of the
 * linked element to initiate the drag operation, and the setHandleElId()
 * method provides a way to define this.</li>
 * <li>drag element: this represents the element that would be moved along
 * with the cursor during a drag operation.  By default, this is the linked
 * element itself as in <b class='link'>Ext.dd.DD</b>.  setDragElId() lets you define
 * a separate element that would be moved, as in <b class='link'>Ext.dd.DDProxy</b>.
 * </li>
 * </ul>
 * This class should not be instantiated until the onload event to ensure that
 * the associated elements are available.
 * The following would define a DragDrop obj that would interact with any
 * other DragDrop obj in the "group1" group:
 * <pre>
 *  dd = new Ext.dd.DragDrop("div1", "group1");
 * </pre>
 * Since none of the event handlers have been implemented, nothing would
 * actually happen if you were to run the code above.  Normally you would
 * override this class or one of the default implementations, but you can
 * also override the methods you want on an instance of the class...
 * <pre>
 *  dd.onDragDrop = function(e, id) {
 *  &nbsp;&nbsp;alert("dd was dropped on " + id);
 *  }
 * </pre>
*/
public class DragDrop {
/**
 * @constructor
 * @param id of the element that is linked to this instance
 * @param sGroup the group of related DragDrop objects
 * @param config an object containing configurable attributes
 *                Valid properties for DragDrop:
 *                    padding, isTarget, maintainOffset, primaryButtonOnly
 */
public function DragDrop(id : String, sGroup : String, config : Object) {
  super(id, sGroup, config);
}
    /**
     * Set to false to enable a DragDrop object to fire drag events while dragging
     * over its own Element. Defaults to true - DragDrop objects do not by default
     * fire drag events to themselves.
     */
    public var ignoreSelf:Boolean=true;
    /**
     * The id of the element associated with this object.  This is what we
     * refer to as the "linked element" because the size and position of
     * this element is used to determine when the drag and drop objects have
     * interacted.
     */
    public var id : String;
    /**
     * Configuration attributes passed into the constructor
     */
    public var config : Object;
    /**
     * The id of the element that will be dragged.  By default this is same
     * as the linked element , but could be changed to another element. Ex:
     * Ext.dd.DDProxy
     */
    protected var dragElId : String;
    /**
     * The ID of the element that initiates the drag operation.  By default
     * this is the linked element, but could be changed to be a child of this
     * element.  This lets us do things like only starting the drag when the
     * header element within the linked html element is clicked.
     */
    protected var handleElId : String;
    /**
     * An object who's property names identify HTML tags to be considered invalid as drag handles.
     * A non-null property value identifies the tag as invalid. Defaults to the 
     * following value which prevents drag operations from being initiated by &lt;a> elements:<pre><code>
{
    A: "A"
}</code></pre>
     */
    public var invalidHandleTypes : Object;
    /**
     * An object who's property names identify the IDs of elements to be considered invalid as drag handles.
     * A non-null property value identifies the ID as invalid. For example, to prevent
     * dragging from being initiated on element ID "foo", use:<pre><code>
{
    foo: true
}</code></pre>
     */
    public var invalidHandleIds : Object;
    /**
     * An Array of CSS class names for elements to be considered in valid as drag handles.
     */
    public var invalidHandleClasses : Array;
    /**
     * The linked element's absolute X position at the time the drag was
     * started
     */
    protected var startPageX : int;
    /**
     * The linked element's absolute X position at the time the drag was
     * started
     */
    protected var startPageY : int;
    /**
     * The group defines a logical collection of DragDrop objects that are
     * related.  Instances only get events when interacting with other
     * DragDrop object in the same group.  This lets us define multiple
     * groups using a single DragDrop subclass if we want.
     */
    public var groups : Object;
    /**
     * Individual drag/drop instances can be locked.  This will prevent
     * onmousedown start drag.
     */
    protected var locked : Boolean;
    /**
     * Lock this instance
     */
    public native function lock() : void;
    /**
     * When set to true, other DD objects in cooperating DDGroups do not receive
     * notification events when this DD object is dragged over them. Defaults to false.
     */
    public var moveOnly:Boolean = false;
    /**
     * Unlock this instance.
     */
    public native function unlock() : void;
    /**
     * By default, all instances can be a drop target.  This can be disabled by
     * setting isTarget to false.
     */
    public var isTarget:Boolean = true;
    /**
     * The padding configured for this drag and drop object for calculating
     * the drop zone intersection with this object.
     * @type int[] An array containing the 4 padding values: [top, right, bottom, left]
     */
    public var padding:Array;
    /**
     * Cached reference to the linked element
     */
    protected var _domRef:HTMLElement;
    /**
     * Internal typeof flag
     */
    protected var __ygDragDrop:Boolean;
    /**
     * Set to true when horizontal contraints are applied
     */
    protected var constrainX:Boolean;
    /**
     * Set to true when vertical contraints are applied
     */
    protected var constrainY:Boolean;
    /**
     * The left constraint
     */
    protected var minX:Number;
    /**
     * The right constraint
     */
    protected var maxX:Number;
    /**
     * The up constraint
     */
    protected var minY:Number;
    /**
     * The down constraint
     */
    protected var maxY:Number;
    /**
     * Maintain offsets when we reset constraints.  Set to true when you want
     * the position of the element relative to its parent to stay the same
     * when the page changes
     */
    public var maintainOffset:Boolean;
    /**
     * Array of pixel locations the element will snap to if we specified a
     * horizontal graduation/interval.  This array is generated automatically
     * when you define a tick interval.
     */
    public var xTicks:Array;
    /**
     * Array of pixel locations the element will snap to if we specified a
     * vertical graduation/interval.  This array is generated automatically
     * when you define a tick interval.
     */
    public var yTicks:Array;
    /**
     * By default the drag and drop instance will only respond to the primary
     * button click (left button for a right-handed mouse).  Set to true to
     * allow drag and drop to start with any mouse click that is propogated
     * by the browser
     */
    public var primaryButtonOnly:Boolean;
    /**
     * The availabe property is false until the linked dom element is accessible.
     */
    public native function get available():Boolean;
    /**
     * By default, drags can only be initiated if the mousedown occurs in the
     * region the linked element is.  This is done in part to work around a
     * bug in some browsers that mis-report the mousedown if the previous
     * mouseup happened outside of the window.  This property is set to true
     * if outer handles are defined.
     */
    public var hasOuterHandles:Boolean = false;
    /**
     * Code that executes immediately before the startDrag event
     */
    protected native function b4StartDrag(x:Number, y:Number) : void;
    /**
     * Abstract method called after a drag/drop object is clicked
     * and the drag or mousedown time thresholds have beeen met.
     * @param x click location
     * @param y click location
     */
    public native function startDrag(x:Number, y:Number) : void;
    /**
     * Code that executes immediately before the onDrag event
     */
    protected native function b4Drag(e:EventObject) : void;
    /**
     * Abstract method called during the onMouseMove event while dragging an
     * object.
     * @param e the mousemove event
     */
    public native function onDrag(e:EventObject) : void;
    /**
     * Abstract method called when this element fist begins hovering over
     * another DragDrop obj
     * @param e the mousemove event
     * @param id In POINT mode, the element
     * id this is hovering over.  In INTERSECT mode, an array of one or more
     * dragdrop items being hovered over.
     */
    public native function onDragEnter(e:EventObject, id:Object) : void;
    /**
     * Code that executes immediately before the onDragOver event
     */
    protected native function b4DragOver(e:EventObject) : void;
    /**
     * Abstract method called when this element is hovering over another
     * DragDrop obj
     * @param e the mousemove event
     * @param id In POINT mode, the element
     * id this is hovering over.  In INTERSECT mode, an array of dd items
     * being hovered over.
     */
    public native function onDragOver(e:EventObject, id:Object) : void;
    /**
     * Code that executes immediately before the onDragOut event
     */
    protected native function b4DragOut(e:EventObject) : void;
    /**
     * Abstract method called when we are no longer hovering over an element
     * @param e the mousemove event
     * @param id In POINT mode, the element
     * id this was hovering over.  In INTERSECT mode, an array of dd items
     * that the mouse is no longer over.
     */
    public native function onDragOut(e:EventObject, id:Object) : void;
    /**
     * Code that executes immediately before the onDragDrop event
     */
    protected native function b4DragDrop(e:EventObject) : void;
    /**
     * Abstract method called when this item is dropped on another DragDrop
     * obj
     * @param e the mouseup event
     * @param id In POINT mode, the element
     * id this was dropped on.  In INTERSECT mode, an array of dd items this
     * was dropped on.
     */
    public native function onDragDrop(e:EventObject, id:Object) : void;
    /**
     * Abstract method called when this item is dropped on an area with no
     * drop target
     * @param e the mouseup event
     */
    public native function onInvalidDrop(e:EventObject) : void;
    /**
     * Code that executes immediately before the endDrag event
     */
    protected native function b4EndDrag(e:EventObject) : void;
    /**
     * Fired when we are done dragging the object
     * @param e the mouseup event
     */
    public native function endDrag(e:EventObject) : void;
    /**
     * Code executed immediately before the onMouseDown event
     * @param e the mousedown event
     */
    protected native function b4MouseDown(e:EventObject) : void;
    /**
     * Event handler that fires when a drag/drop obj gets a mousedown
     * @param e the mousedown event
     */
    public native function onMouseDown(e:EventObject) : void;
    /**
     * Event handler that fires when a drag/drop obj gets a mouseup
     * @param e the mouseup event
     */
    public native function onMouseUp(e:EventObject) : void;
    /**
     * Override the onAvailable method to do what is needed after the initial
     * position was determined.
     */
    public native function onAvailable() : void;
    /**
     * Provides default constraint padding to "constrainTo" elements (defaults to {left: 0, right:0, top:0, bottom:0}).
     */
    public var defaultPadding : Object = {left:0, right:0, top:0, bottom:0};
    /**
     * Initializes the drag drop object's constraints to restrict movement to a certain element.
 *
 * Usage:
 <pre><code>
 var dd = new ext.dd.DDProxy("dragDiv1", "proxytest",
                { dragElId: "existingProxyDiv" });
 dd.startDrag = function(){
     this.constrainTo("parent-id");
 };
 </code></pre>
 * Or you can initalize it using the <b class='link'>ext.Element</b> object:
 <pre><code>
 Ext.get("dragDiv1").initDDProxy("proxytest", {dragElId: "existingProxyDiv"}, {
     startDrag : function(){
         this.constrainTo("parent-id");
     }
 });
 </code></pre>
     * @param constrainTo The element to constrain to.
     * @param pad Pad provides a way to specify "padding" of the constraints,
     * and can be either a number for symmetrical padding (4 would be equal to {left:4, right:4, top:4, bottom:4}) or
     * an object containing the sides to pad. For example: {right:10, bottom:10}
     * @param inContent Constrain the draggable in the content box of the element (inside padding and borders)
     */
    public native function constrainTo(constrainTo:*, pad:*=undefined, inContent:Boolean = false):void;
    /**
     * Returns a reference to the linked element
     * @return HTMLElement the html element
     */
    public native function getEl():HTMLElement;
    /**
     * Returns a reference to the actual element to drag.  By default this is
     * the same as the html element, but it can be assigned to another
     * element. An example of this can be found in Ext.dd.DDProxy
     * @return HTMLElement the html element
     */
    public native function getDragEl():HTMLElement;
    /**
     * Sets up the DragDrop object.  Must be called in the constructor of any
     * Ext.dd.DragDrop subclass
     * @param id the id of the linked element
     * @param sGroup the group of related items
     * @param config configuration attributes
     */
    public native function init(id:String, sGroup:String = "default", config:Object=null):void;
    /**
     * Initializes Targeting functionality only... the object does not
     * get a mousedown handler.
     * @param id the id of the linked element
     * @param sGroup the group of related items
     * @param config configuration attributes
     */
    public native function initTarget(id:String, sGroup:String = "default", config:Object=null):void;
    /**
     * Applies the configuration parameters that were passed into the constructor.
     * This is supposed to happen at each level through the inheritance chain.  So
     * a DDProxy implentation will execute apply config on DDProxy, DD, and
     * DragDrop in order to get all of the parameters that are available in
     * each object.
     */
    public native function applyConfig():void;
    /**
     * Executed when the linked element is available
     */
    protected native function handleOnAvailable():void;
     /**
     * Configures the padding for the target zone in px.  Effectively expands
     * (or reduces) the virtual object size for targeting calculations.
     * Supports css-style shorthand; if only one parameter is passed, all sides
     * will have that padding, and if only two are passed, the top and bottom
     * will have the first param, the left and right the second.
     * @param iTop    Top pad
     * @param iRight  Right pad
     * @param iBot    Bot pad
     * @param iLeft   Left pad
     */
    public native function setPadding(iTop:int, iRight:int, iBot:int, iLeft:int):void;
    /**
     * Stores the initial placement of the linked element.
     * @param diffX   the X offset, default 0
     * @param diffY   the Y offset, default 0
     */
    public native function setInitPosition(diffX:Number = 0, diffY:Number = 0):void;
    /**
     * Sets the start position of the element.  This is set when the obj
     * is initialized, the reset when a drag is started.
     * @param pos current position (from previous lookup)
     */
    protected native function setStartPosition(pos:Array):void;
    /**
     * Add this instance to a group of related drag/drop objects.  All
     * instances belong to at least one group, and can belong to as many
     * groups as needed.
     * @param sGroup the name of the group
     */
    public native function addToGroup(sGroup:String):void;
    /**
     * Removes this instance from the supplied interaction group.
     * @param  sGroup  The group to drop
     */
    public native function removeFromGroup(sGroup:String):void;
    /**
     * Allows you to specify that an element other than the linked element
     * will be moved with the cursor during a drag
     * @param id the id of the element that will be used to initiate the drag
     */
    public native function setDragElId(id:String):void;
    /**
     * Allows you to specify a child of the linked element that should be
     * used to initiate the drag operation.  An example of this would be if
     * you have a content div with text and links.  Clicking anywhere in the
     * content area would normally start the drag operation.  Use this method
     * to specify that an element inside of the content div is the element
     * that starts the drag operation.
     * @param id the id of the element that will be used to
     * initiate the drag.
     */
    public native function setHandleElId(id:String):void;
    /**
     * Allows you to set an element outside of the linked element as a drag
     * handle
     * @param id the id of the element that will be used to initiate the drag
     */
    public native function setOuterHandleElId(id:String):void;
    /**
     * Remove all drag and drop hooks for this element
     */
    public native function unreg():void;
    /**
     * Returns true if this instance is locked, or the drag drop mgr is locked
     * (meaning that all drag/drop is disabled on the page.)
     * @return Boolean true if this obj or all drag/drop is locked, else
     * false
     */
    public native function isLocked():Boolean;
    /**
     * Fired when this object is clicked
     * @param e
     * @param oDD the clicked dd object (this dd obj)
     */
    protected native function handleMouseDown(e:EventObject, oDD:DragDrop):void;
    /**
     * Allows you to specify a tag name that should not start a drag operation
     * when clicked.  This is designed to facilitate embedding links within a
     * drag handle that do something other than start the drag.
     * @param tagName the type of element to exclude
     */
    public native function addInvalidHandleType(tagName:String):void;
    /**
     * Lets you to specify an element id for a child of a drag handle
     * that should not initiate a drag
     * @param id the element id of the element you wish to ignore
     */
    public native function addInvalidHandleId(id:String):void;
    /**
     * Lets you specify a css class of elements that will not initiate a drag
     * @param cssClass the class of the elements you wish to ignore
     */
    public native function addInvalidHandleClass(cssClass:String):void;
    /**
     * Unsets an excluded tag name set by addInvalidHandleType
     * @param tagName the type of element to unexclude
     */
    public native function removeInvalidHandleType(tagName:String):void;
    /**
     * Unsets an invalid handle id
     * @param id the id of the element to re-enable
     */
    public native function removeInvalidHandleId(id:String):void;
    /**
     * Unsets an invalid css class
     * @param cssClass the class of the element(s) you wish to
     * re-enable
     */
    public native function removeInvalidHandleClass(cssClass:String):void;
    /**
     * Checks the tag exclusion list to see if this click should be ignored
     * @param node the HTMLElement to evaluate
     * @return Boolean true if this is a valid tag type, false if not
     */
    public native function isValidHandleChild(node:HTMLElement):Boolean;
    /**
     * Create the array of horizontal tick marks if an interval was specified
     * in setXConstraint().
     */
    protected native function setXTicks(iStartX:*, iTickSize:int):Boolean;
    /**
     * Create the array of vertical tick marks if an interval was specified in
     * setYConstraint().
     */
    protected native function setYTicks(iStartY:*, iTickSize:int):Boolean;
    /**
     * By default, the element can be dragged any place on the screen.  Use
     * this method to limit the horizontal travel of the element.  Pass in
     * 0,0 for the parameters if you want to lock the drag to the y axis.
     * @param iLeft the number of pixels the element can move to the left
     * @param iRight the number of pixels the element can move to the
     * right
     * @param iTickSize optional parameter for specifying that the
     * element
     * should move iTickSize pixels at a time.
     */
    public native function setXConstraint(iLeft:Number, iRight:Number, iTickSize:Number=undefined):void;
    /**
     * Clears any constraints applied to this instance.  Also clears ticks
     * since they can't exist independent of a constraint at this time.
     */
    public native function clearConstraints():void;
    /**
     * Clears any tick interval defined for this instance
     */
    public native function clearTicks():void;
    /**
     * By default, the element can be dragged any place on the screen.  Set
     * this to limit the vertical travel of the element.  Pass in 0,0 for the
     * parameters if you want to lock the drag to the x axis.
     * @param iUp the number of pixels the element can move up
     * @param iDown the number of pixels the element can move down
     * @param iTickSize optional parameter for specifying that the
     * element should move iTickSize pixels at a time.
     */
    public native function setYConstraint(iUp:Number, iDown:Number, iTickSize:Number=undefined):void;
    /**
     * resetConstraints must be called if you manually reposition a dd element.
     */
    public native function resetConstraints():void;
    /**
     * Normally the drag element is moved pixel by pixel, but we can specify
     * that it move a number of pixels at a time.  This method resolves the
     * location when we have it set up like this.
     * @param val where we want to place the object
     * @param tickArray sorted array of valid points
     * @return the closest tick
     */
    protected native function getTick(val:int, tickArray:Array=null):int;
    /**
     * toString method
     * @return string representation of the dd obj
     */
    public native function toString():String;
}}
