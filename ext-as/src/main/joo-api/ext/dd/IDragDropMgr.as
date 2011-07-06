package ext.dd {

import ext.IEventObject;
import ext.dd.dragdropmgr.ElementWrapper;
import ext.lib.Point;
import ext.lib.Region;

import js.HTMLElement;

/**
 * DragDropMgr is a singleton that tracks the element interaction for all DragDrop items in the window. Generally, you will not call this class directly, but it does have helper methods that could be useful in your DragDrop implementations.
 * <p>This interface defines the type of the singleton DragDropMgr.</p>
 * @see ext.dd.#DragDropMgr ext.dd.DragDropMgr
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#cls-Ext.dd.DragDropMgr Ext JS source
 */
public interface IDragDropMgr {

  /**
   In intersect mode, drag and drop interaction is defined by the overlap of two or more drag and drop objects.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-INTERSECT Ext JS source
   */
  function get INTERSECT():int;

  /**
   In point mode, drag and drop interaction is defined by the location of the cursor during the drag/drop
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-POINT Ext JS source
   */
  function get POINT():int;

  /**
   The number of pixels that the mouse needs to move after the mousedown before the drag is initiated. Default=3;
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-clickPixelThresh Ext JS source
   */
  function get clickPixelThresh():int;

  /**
   * @private
   */
  function set clickPixelThresh(value:int):void;

  /**
   The number of milliseconds after the mousedown event to initiate the drag if we don't get a mouseup event. Default=350
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-clickTimeThresh Ext JS source
   */
  function get clickTimeThresh():int;

  /**
   * @private
   */
  function set clickTimeThresh(value:int):void;

  /**
   Timeout used for the click time threshold
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-clickTimeout Ext JS source
   */
  function get clickTimeout():Object;

  /**
   * @private
   */
  function set clickTimeout(value:Object):void;

  /**
   the X distance between the cursor and the object being dragged
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-deltaX Ext JS source
   */
  function get deltaX():int;

  /**
   * @private
   */
  function set deltaX(value:int):void;

  /**
   the Y distance between the cursor and the object being dragged
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-deltaY Ext JS source
   */
  function get deltaY():int;

  /**
   * @private
   */
  function set deltaY(value:int):void;

  /**
   the DragDrop object that is currently being dragged
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-dragCurrent Ext JS source
   */
  function get dragCurrent():DragDrop;

  /**
   * @private
   */
  function set dragCurrent(value:DragDrop):void;

  /**
   the DragDrop object(s) that are being hovered over
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-dragOvers Ext JS source
   */
  function get dragOvers():Array;

  /**
   * @private
   */
  function set dragOvers(value:Array):void;

  /**
   Flag that indicates that either the drag pixel threshold or the mousdown time threshold has been met
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-dragThreshMet Ext JS source
   */
  function get dragThreshMet():Boolean;

  /**
   * @private
   */
  function set dragThreshMet(value:Boolean):void;

  /**
   A cache of DOM elements
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-elementCache Ext JS source
   */
  function get elementCache():Object;

  /**
   * @private
   */
  function set elementCache(value:Object):void;

  /**
   Array of element ids defined as drag handles. Used to determine if the element that generated the mousedown event is actually the handle and not the html element itself.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-handleIds Ext JS source
   */
  function get handleIds():Array;

  /**
   * @private
   */
  function set handleIds(value:Array):void;

  /**
   Two dimensional Array of registered DragDrop objects. The first dimension is the DragDrop item group, the second the DragDrop object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-ids Ext JS source
   */
  function get ids():Array;

  /**
   * @private
   */
  function set ids(value:Array):void;

  /**
   Internal flag that is set to true when drag and drop has been intialized
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-initialized Ext JS source
   */
  function get initialized():Object;

  /**
   * @private
   */
  function set initialized(value:Object):void;

  /**
   Location cache that is set for all drag drop objects when a drag is initiated, cleared when the drag is finished.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-locationCache Ext JS source
   */
  function get locationCache():Object;

  /**
   * @private
   */
  function set locationCache(value:Object):void;

  /**
   All drag and drop can be disabled.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-locked Ext JS source
   */
  function get locked():Object;

  /**
   * @private
   */
  function set locked(value:Object):void;

  /**
   The current drag and drop mode. Default: POINT
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-mode Ext JS source
   */
  function get mode():int;

  /**
   * @private
   */
  function set mode(value:int):void;

  /**
   Flag to determine if we should prevent the default behavior of the events we define. By default this is true, but this can be set to false if you need the default behavior (not recommended)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-preventDefault Ext JS source
   */
  function get preventDefault():Boolean;

  /**
   * @private
   */
  function set preventDefault(value:Boolean):void;

  /**
   The X position of the mousedown event stored for later use when a drag threshold is met.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-startX Ext JS source
   */
  function get startX():int;

  /**
   * @private
   */
  function set startX(value:int):void;

  /**
   The Y position of the mousedown event stored for later use when a drag threshold is met.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-startY Ext JS source
   */
  function get startY():int;

  /**
   * @private
   */
  function set startY(value:int):void;

  /**
   Flag to determine if we should stop the propagation of the events we generate. This is true by default but you may want to set it to false if the html element contains other features that require the mouse click.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-stopPropagation Ext JS source
   */
  function get stopPropagation():Boolean;

  /**
   * @private
   */
  function set stopPropagation(value:Boolean):void;

  /**
   Set useCache to false if you want to force object the lookup of each drag and drop linked element constantly during a drag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDropMgr-useCache Ext JS source
   */
  function get useCache():Boolean;

  /**
   * @private
   */
  function set useCache(value:Boolean):void;

  /**
   * Runs method on all drag and drop objects
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-_execOnAll Ext JS source
   */
  function _execOnAll():void;

  /**
   * Drag and drop initialization. Sets up the global event handlers
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-_onLoad Ext JS source
   */
  function _onLoad():void;

  /**
   * Reset constraints on all drag and drop objs
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-_onResize Ext JS source
   */
  function _onResize():void;

  /**
   * unload event handler
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-_onUnload Ext JS source
   */
  function _onUnload():void;

  /**
   * Unregisters a drag and drop item. This is executed in DragDrop.unreg, use that method instead of calling this directly.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-_remove Ext JS source
   */
  function _remove():void;

  /**
   * Iterates over all of the DragDrop elements to find ones we are hovering over or dropping on
   *
   * @param e the event
   * @param isDrop is this a drop op or a mouseover op?
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-fireEvents Ext JS source
   */
  function fireEvents(e:IEventObject, isDrop:Boolean):void;

  /**
   * Helper function for getting the best match from the list of drag and drop objects returned by the drag and drop events when we are in INTERSECT mode. It returns either the first object that the cursor is over, or the object that has the greatest overlap with the dragged element.
   *
   * @param dds The array of drag and drop objects targeted
   * @return The best single match
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getBestMatch Ext JS source
   */
  function getBestMatch(dds:Array):DragDrop;

  /**
   * Returns the style property for the DOM element (i.e., document.getElById(id).style)
   *
   * @param id the id of the element to get
   * @return The style property of the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getCss Ext JS source
   */
  function getCss(id:String):Object;

  /**
   * Returns the DragDrop instance for a given id
   *
   * @param id the id of the DragDrop object
   * @return the drag drop object, null if it is not found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getDDById Ext JS source
   */
  function getDDById(id:String):DragDrop;

  /**
   * Get the wrapper for the DOM element specified
   *
   * @param id the id of the element to get
   * @return the wrapped element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getElWrapper Ext JS source
   */
  function getElWrapper(id:String):ElementWrapper;

  /**
   * Returns the actual DOM element
   *
   * @param id the id of the element to get
   * @return The element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getElement Ext JS source
   */
  function getElement(id:String):Object;

  /**
   * Returns a Region object containing the drag and drop element's position and size, including the padding configured for it
   *
   * @param oDD the drag and drop object to get the location for
   * @return a Region object representing the total area the element occupies, including any padding the instance is configured for.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getLocation Ext JS source
   */
  function getLocation(oDD:DragDrop):Region;

  /**
   * Returns the drag and drop instances that are in all groups the passed in instance belongs to.
   *
   * @param p_oDD the obj to get related data for
   * @param bTargetsOnly if true, only return targetable objs
   * @return the related instances
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-getRelated Ext JS source
   */
  function getRelated(p_oDD:DragDrop, bTargetsOnly:Boolean):Array;

  /**
   * Fired after a registered DragDrop object gets the mousedown event. Sets up the events required to track the object being dragged
   *
   * @param e the event
   * @param oDD DragDrop object being dragged
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-handleMouseDown Ext JS source
   */
  function handleMouseDown(e:IEventObject, oDD:*):void;

  /**
   * Internal function to handle the mousemove event. Will be invoked from the context of the html element.
   *
   * @param e the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-handleMouseMove Ext JS source
   */
  function handleMouseMove(e:IEventObject):void;

  /**
   * Internal function to handle the mouseup event. Will be invoked from the context of the document.
   *
   * @param e the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-handleMouseUp Ext JS source
   */
  function handleMouseUp(e:IEventObject):void;

  /**
   * Called the first time an element is registered.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-init Ext JS source
   */
  function init():void;

  /**
   * Utility function to determine if a given element has been registered as a drag drop item.
   *
   * @param id the element id to check
   * @return true if this element is a DragDrop item, false otherwise
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isDragDrop Ext JS source
   */
  function isDragDrop(id:String):Boolean;

  /**
   * Utility function to determine if a given element has been registered as a drag drop handle for the given Drag Drop object.
   *
   * @param id the element id to check
   * @return true if this element is a DragDrop handle, false otherwise
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isHandle Ext JS source
   */
  function isHandle(id:String):Boolean;

  /**
   * Returns true if the specified dd target is a legal target for the specific drag obj
   *
   * @param oDD the drag obj
   * @param oTargetDD the target
   * @return true if the target is a legal target for the dd obj
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isLegalTarget Ext JS source
   */
  function isLegalTarget(oDD:DragDrop, oTargetDD:DragDrop):Boolean;

  /**
   * Is drag and drop locked?
   *
   * @return True if drag and drop is locked, false otherwise.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isLocked Ext JS source
   */
  function isLocked():Boolean;

  /**
   * Checks the cursor location to see if it over the target
   *
   * @param pt The point to evaluate
   * @param oTarget the DragDrop object we are inspecting
   * @return true if the mouse is over the target
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isOverTarget Ext JS source
   */
  function isOverTarget(pt:Point, oTarget:DragDrop):Boolean;

  /**
   * My goal is to be able to transparently determine if an object is typeof DragDrop, and the exact subclass of DragDrop. typeof returns "object", oDD.constructor.toString() always returns "DragDrop" and not the name of the subclass. So for now it just evaluates a well-known variable in DragDrop.
   *
   * @param the object to evaluate
   * @return true if typeof oDD = DragDrop
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-isTypeOfDD Ext JS source
   */
  function isTypeOfDD(the:Object):Boolean;

  /**
   * Lock all drag and drop functionality
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-lock Ext JS source
   */
  function lock():void;

  /**
   * Refreshes the cache of the top-left and bottom-right points of the drag and drop objects in the specified group(s). This is in the format that is stored in the drag and drop instance, so typical usage is: <code>Ext.dd.DragDropMgr.refreshCache(ddinstance.groups);</code> Alternatively: <code>Ext.dd.DragDropMgr.refreshCache({group1:true, group2:true});</code>
   *
   * @param groups an associative array of groups to refresh
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-refreshCache Ext JS source
   */
  function refreshCache(groups:Object):void;

  /**
   * Each DragDrop instance must be registered with the DragDropMgr. This is executed in DragDrop.init()
   *
   * @param oDD the DragDrop object to register
   * @param sGroup the name of the group this element belongs to
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-regDragDrop Ext JS source
   */
  function regDragDrop(oDD:DragDrop, sGroup:String):void;

  /**
   * Each DragDrop handle element must be registered. This is done automatically when executing DragDrop.setHandleElId()
   *
   * @param sDDId the DragDrop id this element is a handle for
   * @param sHandleId the id of the element that is the drag handle
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-regHandle Ext JS source
   */
  function regHandle(sDDId:String, sHandleId:String):void;

  /**
   * Removes the supplied dd instance from the supplied group. Executed by DragDrop.removeFromGroup, so don't call this function directly.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-removeDDFromGroup Ext JS source
   */
  function removeDDFromGroup():void;

  /**
   * Fired when either the drag pixel threshold or the mousedown hold time threshold has been met.
   *
   * @param x the X position of the original mousedown
   * @param y the Y position of the original mousedown
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-startDrag Ext JS source
   */
  function startDrag(x:int, y:int):void;

  /**
   * Internal function to clean up event handlers after the drag operation is complete
   *
   * @param e the event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-stopDrag Ext JS source
   */
  function stopDrag(e:IEventObject):void;

  /**
   * Utility to stop event propagation and event default, if these features are turned on.
   *
   * @param e the event as returned by this.getEvent()
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-stopEvent Ext JS source
   */
  function stopEvent(e:IEventObject):void;

  /**
   * Unlock all drag and drop functionality
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-unlock Ext JS source
   */
  function unlock():void;

  /**
   * Cleans up the drag and drop events and objects.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-unregAll Ext JS source
   */
  function unregAll():void;

  /**
   * This checks to make sure an element exists and is in the DOM. The main purpose is to handle cases where innerHTML is used to remove drag and drop objects from the DOM. IE provides an 'unspecified error' when trying to access the offsetParent of such an element
   *
   * @param el the element to check
   * @return true if the element looks usable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDropMgr-verifyEl Ext JS source
   */
  function verifyEl(el:HTMLElement):Boolean;

}
}
    