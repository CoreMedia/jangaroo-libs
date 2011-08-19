package ext.dd {
import ext.IEventObject;

/**
 * Provides easy access to all drag drop components that are registered on a page. Items can be retrieved either directly by DOM node id, or by passing in the drag drop event that occurred and looking up the event target.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Registry.</p>
 * @see ext.dd.#Registry ext.dd.Registry
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#cls-Ext.dd.Registry Ext JS source
 */
public interface IRegistry {

  /**
   * Returns the handle registered for a DOM Node by id
   *
   * @param id The DOM node or id to look up
   * @return handle The custom handle data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-getHandle Ext JS source
   */
  function getHandle(id:*):Object;

  /**
   * Returns the handle that is registered for the DOM node that is the target of the event
   *
   * @param e The event
   * @return handle The custom handle data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-getHandleFromEvent Ext JS source
   */
  function getHandleFromEvent(e:IEventObject):Object;

  /**
   * Returns a custom data object that is registered for a DOM node by id
   *
   * @param id The DOM node or id to look up
   * @return data The custom data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-getTarget Ext JS source
   */
  function getTarget(id:*):Object;

  /**
   * Returns a custom data object that is registered for the DOM node that is the target of the event
   *
   * @param e The event
   * @return data The custom data
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-getTargetFromEvent Ext JS source
   */
  function getTargetFromEvent(e:IEventObject):Object;

  /**
   * Register a drag drop element.
   *
   * @param element The id or DOM node to register
   * @param data An custom data object that will be passed between the elements that are involved in drag drop operations. You can populate this object with any arbitrary properties that your own code knows how to interpret, plus there are some specific properties known to the Registry that should be populated in the data object (if applicable): <pre>Value      Description<br/>---------  ------------------------------------------<br/>handles    Array of DOM nodes that trigger dragging<br/>           for the element being registered<br/>isHandle   True if the element passed in triggers<br/>           dragging itself, else false
   </pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-register Ext JS source
   */
  function register(element:*, data:Object = null):void;

  /**
   * Unregister a drag drop element
   *
   * @param element The id or DOM node to unregister
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Registry.html#method-Ext.dd.Registry-unregister Ext JS source
   */
  function unregister(element:*):void;

}
}
    