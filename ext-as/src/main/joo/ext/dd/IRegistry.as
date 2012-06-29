package ext.dd {
import ext.IEventObject;

/**
 * Provides easy access to all drag drop components that are registered on a page. Items can be retrieved either directly by DOM node id, or by passing in the drag drop event that occurred and looking up the event target.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Registry.</p>
 * @see ext.dd.#Registry ext.dd.Registry
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry Sencha Docs Ext JS 3.4
 */
public interface IRegistry {

  /**
   * Returns the handle registered for a DOM Node by id
   *
   * @param id The DOM node or id to look up
   * @return handle The custom handle data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-getHandle Sencha Docs Ext JS 3.4
   */
  function getHandle(id:*):Object;

  /**
   * Returns the handle that is registered for the DOM node that is the target of the event
   *
   * @param e The event
   * @return handle The custom handle data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-getHandleFromEvent Sencha Docs Ext JS 3.4
   */
  function getHandleFromEvent(e:IEventObject):Object;

  /**
   * Returns a custom data object that is registered for a DOM node by id
   *
   * @param id The DOM node or id to look up
   * @return data The custom data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-getTarget Sencha Docs Ext JS 3.4
   */
  function getTarget(id:*):Object;

  /**
   * Returns a custom data object that is registered for the DOM node that is the target of the event
   *
   * @param e The event
   * @return data The custom data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-getTargetFromEvent Sencha Docs Ext JS 3.4
   */
  function getTargetFromEvent(e:IEventObject):Object;

  /**
   * Register a drag drop element.
   *
   * @param element The id or DOM node to register
   * @param data An custom data object that will be passed between the elements that are involved in drag drop operations. You can populate this object with any arbitrary properties that your own code knows how to interpret, plus there are some specific properties known to the Registry that should be populated in the data object (if applicable): <pre>Value      Description<br/>---------  ------------------------------------------<br/>handles    Array of DOM nodes that trigger dragging<br/>           for the element being registered<br/>isHandle   True if the element passed in triggers<br/>           dragging itself, else false
   </pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-register Sencha Docs Ext JS 3.4
   */
  function register(element:*, data:Object = null):void;

  /**
   * Unregister a drag drop element
   *
   * @param element The id or DOM node to unregister
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.Registry-method-unregister Sencha Docs Ext JS 3.4
   */
  function unregister(element:*):void;

}
}
    