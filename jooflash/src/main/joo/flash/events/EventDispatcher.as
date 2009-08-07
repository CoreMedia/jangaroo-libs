package flash.events {

import flash.events.IEventDispatcher;
import flash.events.Event;

/**
 * Dispatched when Flash Player gains operating system focus and becomes active.
 * <p>Defines the value of the type property of an activate event object.
 * <p>Note: This event does not go through a "capture phase" and is dispatched directly to the target, whether the
 * target is on the display list or not.
 * <p>This event has the following properties:
 * <ul>
 * <li>bubbles	false
 * <li>cancelable	false; there is no default behavior to cancel.
 * <li>currentTarget	The object that is actively processing the Event object with an event listener.
 * <li>target	Any DisplayObject instance with a listener registered for the activate event.
 * </ul>
 */
[Event(name="activate",type="flash.events.Event")]

/**
 * Dispatched when Flash Player loses operating system focus and is becoming inactive.
 * <p>Defines the value of the type property of a deactivate event object.
 * <p>Note: This event does not go through a "capture phase" and is dispatched directly to the target, whether the
 * target is on the display list or not.
 * <p>This event has the following properties:
 * <ul>
 * <li>bubbles	false
 * <li>cancelable	false; there is no default behavior to cancel.
 * <li>currentTarget	The object that is actively processing the Event object with an event listener.
 * <li>target	Any DisplayObject instance with a listener registered for the deactivate event.
 * </ul>
 */
[Event(name="deactivate",type="flash.events.Event")]

/**
 * The EventDispatcher class implements the IEventDispatcher interface and is the base class for the DisplayObject
 * class. The EventDispatcher class allows any object on the display list to be an event target and as such, to use the
 * methods of the IEventDispatcher interface.
 * <p>Event targets are an important part of the Flash® Player event model. The event target serves as the focal point
 * for how events flow through the display list hierarchy. When an event such as a mouse click or a keypress occurs,
 * Flash Player dispatches an event object into the event flow from the root of the display list. The event object then
 * makes its way through the display list until it reaches the event target, at which point it begins its return trip
 * through the display list. This round-trip journey to the event target is conceptually divided into three phases:
 * the capture phase comprises the journey from the root to the last node before the event target's node, the target
 * phase comprises only the event target node, and the bubbling phase comprises any subsequent nodes encountered on the
 * return trip to the root of the display list.
 * <p>In general, the easiest way for a user-defined class to gain event dispatching capabilities is to extend
 * EventDispatcher. If this is impossible (that is, if the class is already extending another class), you can instead
 * implement the IEventDispatcher interface, create an EventDispatcher member, and write simple hooks to route calls
 * into the aggregated EventDispatcher.
 */
public class EventDispatcher extends Object implements IEventDispatcher {

  /**
   * Aggregates an instance of the EventDispatcher class.
   * <p>The EventDispatcher class is generally used as a base class, which means that most developers do not need to
   * use this constructor function. However, advanced developers who are implementing the IEventDispatcher interface
   * need to use this constructor. If you are unable to extend the EventDispatcher class and must instead implement the
   * IEventDispatcher interface, use this constructor to aggregate an instance of the EventDispatcher class.
   * @param target (default = null) The target object for events dispatched to the EventDispatcher object.
   *   This parameter is used when the EventDispatcher instance is aggregated by a class that implements
   *   IEventDispatcher; it is necessary so that the containing object can be the target for events. Do not use this
   *   parameter in simple cases in which a class extends EventDispatcher.
   */
  public function EventDispatcher(target : IEventDispatcher = null) {
    this.target = target;
    this.captureListeners = {};
    this.listeners = {};
  }

  public function dispatchEvent(event : flash.events.Event) : Boolean {
    event.target = this.target || this;
    var listeners : Array = this.listeners[event.type];
    if (listeners) {
      for (var i : int = 0; i<listeners.length; ++i) {
        if (listeners[i](event)===false) {
          event.stopPropagation();
          event.preventDefault();
        }
        if (event.isImmediatePropagationStopped()) {
          return false;
        }
      }
    }
    return event.isDefaultPrevented();
  }

  public function willTrigger(type : String) : Boolean {
    return this.hasEventListener(type);
  }

  public function addEventListener(type : String, listener : Function, useCapture : Boolean = false, priority : int = 0, useWeakReference : Boolean = false) : void {
    var listenersByType : Object = useCapture ? this.captureListeners : this.listeners;
    if (!(type in listenersByType)) {
      listenersByType[type] = [ listener ];
    } else {
      listenersByType[type].push(listener);
    }
  }

  public function removeEventListener(type : String, listener : Function, useCapture : Boolean = false) : void {
    var listenersByType : Object = useCapture ? this.captureListeners : this.listeners;
    var listeners : Array = listenersByType[type];
    if (listeners) {
      for (var i : int = 0; i<listeners.length; ++i) {
        if (listeners[i]==listener) {
          if (listeners.length==1) {
            delete listenersByType[type];
          } else {
            listeners.splice(i,1);
          }
          return;
        }
      }
    }
  }

  public function hasEventListener(type : String) : Boolean {
    return this.listeners[type] || this.captureListeners[type];
  }

  public function toString() : String {
    return ["EventDispatcher[target=",this.target,"]"].join("");
  }

  private var captureListeners : Object/*<String,Array>*/;
  private var listeners : Object/*<String,Array>*/;
  private var target : IEventDispatcher;
}
}