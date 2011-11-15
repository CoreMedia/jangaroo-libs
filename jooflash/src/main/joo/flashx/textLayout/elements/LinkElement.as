package flashx.textLayout.elements {
import flash.events.Event;
import flash.events.IEventDispatcher;

/**
 * Dispatched when the link is clicked. Clients may override how the link handles the event by handling it themselves, and calling preventDefault().
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.CLICK
 */
[Event(name="click", type="flashx.textLayout.events.FlowElementMouseEvent")]
/**
 * Dispatched when the mouse is pressed down over a link.
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.MOUSE_DOWN
 */
[Event(name="mouseDown", type="flashx.textLayout.events.FlowElementMouseEvent")]
/**
 * Dispatched when the mouse passes over the link.
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.MOUSE_MOVE
 */
[Event(name="mouseMove", type="flashx.textLayout.events.FlowElementMouseEvent")]
/**
 * Dispatched when the mouse is released over a link.
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.MOUSE_UP
 */
[Event(name="mouseUp", type="flashx.textLayout.events.FlowElementMouseEvent")]
/**
 * Dispatched when the mouse goes out of the link.
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.ROLL_OUT
 */
[Event(name="rollOut", type="flashx.textLayout.events.FlowElementMouseEvent")]
/**
 * Dispatched when the mouse first enters the link.
 * @eventType flashx.textLayout.events.FlowElementMouseEvent.ROLL_OVER
 */
[Event(name="rollOver", type="flashx.textLayout.events.FlowElementMouseEvent")]

/**
 * The LinkElement class defines a link to a URI (Universal Resource Identifier), which is executed when the user clicks it. The LinkElement class is a subclass of the SubParagraphGroupElement class and it can contain one or more FlowElement objects, such as a SpanElement object that stores the link text. An empty LinkElement, which does not contain a FlowElement object, is ignored.
 * <p>If you specify a target, it must be one of the following values:</p>
 * <table>
 * <tr><th>Target value</th><th>description</th></tr>
 * <tr>
 * <td>_self</td>
 * <td>Replaces the current HTML page. If it is in a frame or frameset, it will load within that frame. If it is the full browser, it opens to replace the page from which it came.</td></tr>
 * <tr>
 * <td>_blank</td>
 * <td>Opens a new browser name with no name.</td></tr>
 * <tr>
 * <td>_parent</td>
 * <td>Replaces the HTML page from which it came.</td></tr>
 * <tr>
 * <td>_top</td>
 * <td>Loads in the current browser, replacing anything within it, such as a frameset.</td></tr></table>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/LinkElement.html#includeExamplesSummary">View the examples</a></p>
 * @see LinkState
 * @see FlowElement#linkActiveFormat
 * @see FlowElement#linkHoverFormat
 * @see FlowElement#linkNormalFormat
 * @see TextFlow
 *
 */
public final class LinkElement extends SubParagraphGroupElement implements IEventDispatcher {
  /**
   * The Uniform Resource Identifier (URI) associated with the LinkElement object. The URI can be any URI supported by the <code>flash.net.navigateToURL()</code> method. This property maps to the <code>request</code> parameter for that method.
   * @see flash.net.package#navigateToURL()
   *
   */
  public function get href():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set href(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current state of the link.
   * @see LinkState
   *
   */
  public function get linkState():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The Target value associated with the LinkElement. Possible values are "_self", "_blank", "_parent", and "_top". This value maps to the <code>window</code> parameter of the <code>flash.net.navigateToURL()</code> method.
   * @see flash.net.package#navigateToURL()
   *
   */
  public function get target():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set target(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - creates a new LinkElement instance.
   */
  public function LinkElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Registers an event listener object with an EventDispatcher object so that the listener receives notification of an event. You can register event listeners on all nodes in the display list for a specific type of event, phase, and priority.
   * <p>After you successfully register an event listener, you cannot change its priority through additional calls to <code>addEventListener()</code>. To change a listener's priority, you must first call <code>removeEventListener()</code>. Then you can register the listener again with the new priority level.</p>
   * <p>After the listener is registered, subsequent calls to <code>addEventListener()</code> with a different value for either <code>type</code> or <code>useCapture</code> result in the creation of a separate listener registration. For example, if you first register a listener with <code>useCapture</code> set to <code>true</code>, it listens only during the capture phase. If you call <code>addEventListener()</code> again using the same listener object, but with <code>useCapture</code> set to <code>false</code>, you have two separate listeners: one that listens during the capture phase, and another that listens during the target and bubbling phases.</p>
   * <p>You cannot register an event listener for only the target phase or the bubbling phase. Those phases are coupled during registration because bubbling applies only to the ancestors of the target node.</p>
   * <p>When you no longer need an event listener, remove it by calling <code>EventDispatcher.removeEventListener()</code>; otherwise, memory problems might result. Objects with registered event listeners are not automatically removed from memory because the garbage collector does not remove objects that still have references.</p>
   * <p>Copying an EventDispatcher instance does not copy the event listeners attached to it. (If your newly created node needs an event listener, you must attach the listener after creating the node.) However, if you move an EventDispatcher instance, the event listeners attached to it move along with it.</p>
   * <p>If the event listener is being registered on a node while an event is also being processed on this node, the event listener is not triggered during the current phase but may be triggered during a later phase in the event flow, such as the bubbling phase.</p>
   * <p>If an event listener is removed from a node while an event is being processed on the node, it is still triggered by the current actions. After it is removed, the event listener is never invoked again (unless it is registered again for future processing).</p>
   * @param type The type of event.
   * @param listener The listener function that processes the event. This function must accept an event object as its only parameter and must return nothing, as this example shows:
   * <p><code>function(evt:Event):void</code></p>The function can have any name.
   * @param useCapture Determines whether the listener works in the capture phase or the target and bubbling phases. If <code>useCapture</code> is set to <code>true</code>, the listener processes the event only during the capture phase and not in the target or bubbling phase. If <code>useCapture</code> is <code>false</code>, the listener processes the event only during the target or bubbling phase. To listen for the event in all three phases, call <code>addEventListener()</code> twice, once with <code>useCapture</code> set to <code>true</code>, then again with <code>useCapture</code> set to <code>false</code>.
   * @param priority The priority level of the event listener. Priorities are designated by a 32-bit integer. The higher the number, the higher the priority. All listeners with priority <i>n</i> are processed before listeners of priority <i>n-1</i>. If two or more listeners share the same priority, they are processed in the order in which they were added. The default priority is 0.
   * @param useWeakReference Determines whether the reference to the listener is strong or weak. A strong reference (the default) prevents your listener from being garbage-collected. A weak reference does not.
   * <p>Class-level member functions are not subject to garbage collection, so you can set <code>useWeakReference</code> to <code>true</code> for class-level member functions without subjecting them to garbage collection. If you set <code>useWeakReference</code> to <code>true</code> for a listener that is a nested inner function, the function will be garbge-collected and no longer persistent. If you create references to the inner function (save it in another variable) then it is not garbage-collected and stays persistent.</p>
   *
   */
  public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Dispatches an event into the event flow. The event target is the EventDispatcher object upon which <code>dispatchEvent()</code> is called.
   * @param evt The event object dispatched into the event flow.
   *
   * @return A value of <code>true</code> unless <code>preventDefault()</code> is called on the event, in which case it returns <code>false</code>.
   *
   */
  public function dispatchEvent(evt:Event):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Checks whether the EventDispatcher object has any listeners registered for a specific type of event. This allows you to determine where an EventDispatcher object has altered handling of an event type in the event flow hierarchy. To determine whether a specific event type will actually trigger an event listener, use <code>IEventDispatcher.willTrigger()</code>.
   * <p>The difference between <code>hasEventListener()</code> and <code>willTrigger()</code> is that <code>hasEventListener()</code> examines only the object to which it belongs, whereas <code>willTrigger()</code> examines the entire event flow for the event specified by the <code>type</code> parameter.</p>
   * @param type The type of event.
   *
   * @return A value of <code>true</code> if a listener of the specified type is registered; <code>false</code> otherwise.
   *
   */
  public function hasEventListener(type:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes a listener from the EventDispatcher object. If there is no matching listener registered with the EventDispatcher object, a call to this method has no effect.
   * @param type The type of event.
   * @param listener The listener object to remove.
   * @param useCapture Specifies whether the listener was registered for the capture phase or the target and bubbling phases. If the listener was registered for both the capture phase and the target and bubbling phases, two calls to <code>removeEventListener()</code> are required to remove both: one call with <code>useCapture</code> set to <code>true</code>, and another call with <code>useCapture</code> set to <code>false</code>.
   *
   */
  public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Checks whether an event listener is registered with this EventDispatcher object or any of its ancestors for the specified event type. This method returns <code>true</code> if an event listener is triggered during any phase of the event flow when an event of the specified type is dispatched to this EventDispatcher object or any of its descendants.
   * <p>The difference between <code>hasEventListener()</code> and <code>willTrigger()</code> is that <code>hasEventListener()</code> examines only the object to which it belongs, whereas <code>willTrigger()</code> examines the entire event flow for the event specified by the <code>type</code> parameter.</p>
   * @param type The type of event.
   *
   * @return A value of <code>true</code> if a listener of the specified type will be triggered; <code>false</code> otherwise.
   *
   */
  public function willTrigger(type:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
