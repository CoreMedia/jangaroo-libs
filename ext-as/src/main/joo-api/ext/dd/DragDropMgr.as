/**
 * The drag and drop utility provides a framework for building drag and drop
 * applications.  In addition to enabling drag and drop for specific elements,
 * the drag and drop elements are tracked by the manager class, and the
 * interactions between the various elements are tracked during the drag and
 * the implementing code is notified about these important moments.
 */
package ext.dd {
import ext.lib.Region;

/**
 * DragDropMgr is a singleton that tracks the element interaction for
 * all DragDrop items in the window.  Generally, you will not call
 * this class directly, but it does have helper methods that could
 * be useful in your DragDrop implementations.
*/
public class DragDropMgr {
/**
 * @singleton
 */
        /**
         * Two dimensional Array of registered DragDrop objects.  The first
         * dimension is the DragDrop item group, the second the DragDrop
         * object.
         * @property ids
         * @private
         * @static
         */
        public static var ids : String;
        /**
         * Array of element ids defined as drag handles.  Used to determine
         * if the element that generated the mousedown event is actually the
         * handle and not the html element itself.
         * @property handleIds
         * @private
         * @static
         */
        public static var handleIds : String;
        /**
         * the DragDrop object that is currently being dragged
         * @property dragCurrent
         * @private
         * @static
         **/
        public static var dragCurrent : DragDrop;
        /**
         * the DragDrop object(s) that are being hovered over
         * @property dragOvers
         * @private
         * @static
         */
        public static var dragOvers : Array;
        /**
         * the X distance between the cursor and the object being dragged
         * @property deltaX
         * @private
         * @static
         */
        public static var deltaX : int;
        /**
         * the Y distance between the cursor and the object being dragged
         * @property deltaY
         * @private
         * @static
         */
        public static var deltaY : int;
        /**
         * Flag to determine if we should prevent the default behavior of the
         * events we define. By default this is true, but this can be set to
         * false if you need the default behavior (not recommended)
         * @property preventDefault
         * @static
         */
        public static var preventDefault : Boolean;
        /**
         * Flag to determine if we should stop the propagation of the events
         * we generate. This is true by default but you may want to set it to
         * false if the html element contains other features that require the
         * mouse click.
         * @property stopPropagation
         * @static
         */
        public static var stopPropagation : Boolean;
        /**
         * Internal flag that is set to true when drag and drop has been
         * intialized
         * @property initialized
         * @private
         * @static
         */
        public static var initialized;
        /**
         * All drag and drop can be disabled.
         * @property locked
         * @private
         * @static
         */
        public static var locked;
        /**
         * Called the first time an element is registered.
         * @method init
         * @private
         * @static
         */
        public static native function init() : void;
        /**
         * In point mode, drag and drop interaction is defined by the
         * location of the cursor during the drag/drop
         * @property POINT
         * @static
         */
        public static var POINT : int;
        /**
         * In intersect mode, drag and drop interaction is defined by the
         * overlap of two or more drag and drop objects.
         * @property INTERSECT
         * @static
         */
        public static var INTERSECT : int;
        /**
         * The current drag and drop mode.  Default: POINT
         * @property mode
         * @static
         */
        public static var mode : int;
        /**
         * Runs method on all drag and drop objects
         * @method _execOnAll
         * @private
         * @static
         */
        protected static native function execOnAll(sMethod, args) : void;
        /**
         * Drag and drop initialization.  Sets up the global event handlers
         * @method _onLoad
         * @private
         * @static
         */
        protected static native function onLoad() : void;
        /**
         * Reset constraints on all drag and drop objs
         * @method _onResize
         * @private
         * @static
         */
        protected static native function onResize(e) : void;
        /**
         * Lock all drag and drop functionality
         * @method lock
         * @static
         */
        public static native function lock() : void;
        /**
         * Unlock all drag and drop functionality
         * @method unlock
         * @static
         */
        /**
         * Is drag and drop locked?
         * @method isLocked
         * @return True if drag and drop is locked, false otherwise.
         * @static
         */
        /**
         * Location cache that is set for all drag drop objects when a drag is
         * initiated, cleared when the drag is finished.
         * @property locationCache
         * @private
         * @static
         */
        /**
         * Set useCache to false if you want to force object the lookup of each
         * drag and drop linked element constantly during a drag.
         * @property useCache
         * @static
         */
        /**
         * The number of pixels that the mouse needs to move after the
         * mousedown before the drag is initiated.  Default=3;
         * @property clickPixelThresh
         * @static
         */
        /**
         * The number of milliseconds after the mousedown event to initiate the
         * drag if we don't get a mouseup event. Default=1000
         * @property clickTimeThresh
         * @static
         */
        /**
         * Flag that indicates that either the drag pixel threshold or the
         * mousdown time threshold has been met
         * @property dragThreshMet
         * @private
         * @static
         */
        /**
         * Timeout used for the click time threshold
         * @property clickTimeout
         * @private
         * @static
         */
        /**
         * The X position of the mousedown event stored for later use when a
         * drag threshold is met.
         * @property startX
         * @private
         * @static
         */
        /**
         * The Y position of the mousedown event stored for later use when a
         * drag threshold is met.
         * @property startY
         * @private
         * @static
         */
        /**
         * Each DragDrop instance must be registered with the DragDropMgr.
         * This is executed in DragDrop.init()
         * @method regDragDrop
         * @param oDD the DragDrop object to register
         * @param sGroup the name of the group this element belongs to
         * @static
         */
        /**
         * Removes the supplied dd instance from the supplied group. Executed
         * by DragDrop.removeFromGroup, so don't call this function directly.
         * @method removeDDFromGroup
         * @private
         * @static
         */
        /**
         * Unregisters a drag and drop item.  This is executed in
         * DragDrop.unreg, use that method instead of calling this directly.
         * @method _remove
         * @private
         * @static
         */
        /**
         * Each DragDrop handle element must be registered.  This is done
         * automatically when executing DragDrop.setHandleElId()
         * @method regHandle
         * @param sDDId the DragDrop id this element is a handle for
         * @param sHandleId the id of the element that is the drag
         * handle
         * @static
         */
        /**
         * Utility function to determine if a given element has been
         * registered as a drag drop item.
         * @method isDragDrop
         * @param id the element id to check
         * @return true if this element is a DragDrop item,
         * false otherwise
         * @static
         */
        /**
         * Returns the drag and drop instances that are in all groups the
         * passed in instance belongs to.
         * @method getRelated
         * @param p_oDD the obj to get related data for
         * @param bTargetsOnly if true, only return targetable objs
         * @return ]} the related instances
         * @static
         */
        /**
         * Returns true if the specified dd target is a legal target for
         * the specifice drag obj
         * @method isLegalTarget
         * @param the drag obj
         * @param the target
         * @return true if the target is a legal target for the
         * dd obj
         * @static
         */
        /**
         * My goal is to be able to transparently determine if an object is
         * typeof DragDrop, and the exact subclass of DragDrop.  typeof
         * returns "object", oDD.constructor.toString() always returns
         * "DragDrop" and not the name of the subclass.  So for now it just
         * evaluates a well-known variable in DragDrop.
         * @method isTypeOfDD
         * @param the object to evaluate
         * @return true if typeof oDD = DragDrop
         * @static
         */
        /**
         * Utility function to determine if a given element has been
         * registered as a drag drop handle for the given Drag Drop object.
         * @method isHandle
         * @param id the element id to check
         * @return true if this element is a DragDrop handle, false
         * otherwise
         * @static
         */
        /**
         * Returns the DragDrop instance for a given id
         * @method getDDById
         * @param id the id of the DragDrop object
         * @return the drag drop object, null if it is not found
         * @static
         */
        /**
         * Fired after a registered DragDrop object gets the mousedown event.
         * Sets up the events required to track the object being dragged
         * @method handleMouseDown
         * @param e the event
         * @param oDD the DragDrop object being dragged
         * @private
         * @static
         */
        /**
         * Fired when either the drag pixel threshol or the mousedown hold
         * time threshold has been met.
         * @method startDrag
         * @param x {int} the X position of the original mousedown
         * @param y {int} the Y position of the original mousedown
         * @static
         */
        /**
         * Internal function to handle the mouseup event.  Will be invoked
         * from the context of the document.
         * @method handleMouseUp
         * @param e the event
         * @private
         * @static
         */
        /**
         * Utility to stop event propagation and event default, if these
         * features are turned on.
         * @method stopEvent
         * @param e the event as returned by this.getEvent()
         * @static
         */
        /**
         * Internal function to clean up event handlers after the drag
         * operation is complete
         * @method stopDrag
         * @param e the event
         * @private
         * @static
         */
        /**
         * Internal function to handle the mousemove event.  Will be invoked
         * from the context of the html element.
         *
         * TODO: figure out what we can do about mouse events lost when the
         * user drags objects beyond the window boundary.  Currently we can
         * detect this in internet explorer by verifying that the mouse is
         * down during the mousemove event.  Firefox doesn't give us the
         * button state on the mousemove event.
         * @method handleMouseMove
         * @param e the event
         * @private
         * @static
         */
        /**
         * Iterates over all of the DragDrop elements to find ones we are
         * hovering over or dropping on
         * @method fireEvents
         * @param e the event
         * @param isDrop is this a drop op or a mouseover op?
         * @private
         * @static
         */
        /**
         * Helper function for getting the best match from the list of drag
         * and drop objects returned by the drag and drop events when we are
         * in INTERSECT mode.  It returns either the first object that the
         * cursor is over, or the object that has the greatest overlap with
         * the dragged element.
         * @method getBestMatch
         * @param  {DragDrop[]} dds The array of drag and drop objects
         * targeted
         * @return       The best single match
         * @static
         */
        /**
         * Refreshes the cache of the top-left and bottom-right points of the
         * drag and drop objects in the specified group(s).  This is in the
         * format that is stored in the drag and drop instance, so typical
         * usage is:
         * <code>
         * Ext.dd.DragDropMgr.refreshCache(ddinstance.groups);
         * </code>
         * Alternatively:
         * <code>
         * Ext.dd.DragDropMgr.refreshCache({group1:true, group2:true});
         * </code>
         * TODO: this really should be an indexed array.  Alternatively this
         * method could accept both.
         * @method refreshCache
         * @param groups an associative array of groups to refresh
         * @static
         */
        /**
         * This checks to make sure an element exists and is in the DOM.  The
         * main purpose is to handle cases where innerHTML is used to remove
         * drag and drop objects from the DOM.  IE provides an 'unspecified
         * error' when trying to access the offsetParent of such an element
         * @method verifyEl
         * @param el the element to check
         * @return true if the element looks usable
         * @static
         */
        /**
         * Returns a Region object containing the drag and drop element's position
         * and size, including the padding configured for it
         * @method getLocation
         * @param oDD the drag and drop object to get the
         *                       location for
         * @return a Region object representing the total area
         *                             the element occupies, including any padding
         *                             the instance is configured for.
         * @static
         */
         public static native function getLocation():Region;
        /**
         * Checks the cursor location to see if it over the target
         * @method isOverTarget
         * @param pt The point to evaluate
         * @param oTarget the DragDrop object we are inspecting
         * @return true if the mouse is over the target
         * @private
         * @static
         */
        /**
         * unload event handler
         * @method _onUnload
         * @private
         * @static
         */
        /**
         * Cleans up the drag and drop events and objects.
         * @method unregAll
         * @private
         * @static
         */
        /**
         * A cache of DOM elements
         * @property elementCache
         * @private
         * @static
         */
        /**
         * Get the wrapper for the DOM element specified
         * @method getElWrapper
         * @param id the id of the element to get
         * @return the wrapped element
         * @private
         * @deprecated This wrapper isn't that useful
         * @static
         */
        /**
         * Returns the actual DOM element
         * @method getElement
         * @param id the id of the elment to get
         * @return The element
         * @deprecated use Ext.lib.Ext.getDom instead
         * @static
         */
        /**
         * Returns the style property for the DOM element (i.e.,
         * document.getElById(id).style)
         * @method getCss
         * @param id the id of the elment to get
         * @return The style property of the element
         * @deprecated use Ext.lib.Dom instead
         * @static
         */
        /**
         * Inner class for cached elements
*/
}}
