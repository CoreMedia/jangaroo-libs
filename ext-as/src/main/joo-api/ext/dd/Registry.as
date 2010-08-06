package ext.dd {
import ext.EventObjectClass;

/**
 * Provides easy access to all drag drop components that are registered on a page.  Items can be retrieved either
 * directly by DOM node id, or by passing in the drag drop event that occurred and looking up the event target.
*/
public class Registry {
/**
 * @singleton
 */
    /**
     * Register a drag drop element
     * @param element The id (String) or DOM node (HTMLElement) to register
     * @param data An custom data object that will be passed between the elements that are involved
     * in drag drop operations.  You can populate this object with any arbitrary properties that your own code
     * knows how to interpret, plus there are some specific properties known to the Registry that should be
     * populated in the data object (if applicable):
     * <pre>
Value      Description<br />
---------  ------------------------------------------<br />
handles    Array of DOM nodes that trigger dragging<br />
           for the element being registered<br />
isHandle   True if the element passed in triggers<br />
           dragging itself, else false
</pre>
     */
        public static native function register(element : Object = undefined, data = undefined) : void;
    /**
     * Unregister a drag drop element
     * @param element The id (String) or DOM node (HTMLElement) to unregister
     */
        public static native function unregister(element : Object) : void;
    /**
     * Returns the handle registered for a DOM Node by id
     * @param id The DOM node or id to look up
     * @return handle The custom handle data
     */
        public static native function getHandle(id : *) : Object;
    /**
     * Returns the handle that is registered for the DOM node that is the target of the event
     * @param e The event
     * @return handle The custom handle data
     */
        public static native function getHandleFromEvent(e : EventObjectClass) : Object;
    /**
     * Returns a custom data object that is registered for a DOM node by id
     * @param id The DOM node or id to look up
     * @return data The custom data
     */
        public static native function getTarget(id : *) : Object;
    /**
     * Returns a custom data object that is registered for the DOM node that is the target of the event
     * @param e The event
     * @return data The custom data
     */
        public static native function getTargetFromEvent(e : EventObjectClass) : Object;
}}
