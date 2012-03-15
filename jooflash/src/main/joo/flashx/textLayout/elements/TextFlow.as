package flashx.textLayout.elements {
import flash.events.Event;
import flash.events.IEventDispatcher;

import flashx.textLayout.compose.IFlowComposer;
import flashx.textLayout.edit.ISelectionManager;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * Defines the value of the <code>type</code>
 * @eventType flashx.textLayout.events.FlowOperationEvent.FLOW_OPERATION_BEGIN
 */
[Event(name="flowOperationBegin", type="flashx.textLayout.events.FlowOperationEvent")]
/**
 * Defines the value of the <code>type</code>
 * @eventType flashx.textLayout.events.FlowOperationEvent.FLOW_OPERATION_COMPLETE
 */
[Event(name="flowOperationComplete", type="flashx.textLayout.events.FlowOperationEvent")]
/**
 * Defines the value of the <code>type</code>
 * @eventType flashx.textLayout.events.FlowOperationEvent.FLOW_OPERATION_END
 */
[Event(name="flowOperationEnd", type="flashx.textLayout.events.FlowOperationEvent")]

/**
 * The TextFlow class is responsible for managing all the text content of a story. In TextLayout, text is stored in a hierarchical tree of elements. TextFlow is the root object of the element tree. All elements on the tree derive from the base class, FlowElement.
 * <p>A TextFlow object can have ParagraphElement and DivElement objects as children. A div (DivElement object) represents a group of paragraphs (ParagraphElement objects). A paragraph can have SpanElement, InlineGraphicElement, LinkElement, and TCYElement objects as children.</p>
 * <p>A span (SpanElement) is a range of text in a paragraph that has the same attributes. An image (InlineGraphicElement) represents an arbitrary graphic that appears as a single character in a line of text. A LinkElement represents a hyperlink, or HTML <code>a</code> tag, and it can contain multiple spans. A TCYElement object is used in Japanese text when there is a small run of text that appears perpendicular to the line, as in a horizontal run within a vertical line. A TCYElement also can contain multiple spans.</p>
 * <p>TextFlow also derives from the ContainerFormattedElement class, which is the root class for all container-level block elements.</p>
 * <p>The following illustration shows the relationship of other elements, such as spans and paragraphs, to the TextFlow object.</p>
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/textLayout_textFlowHierarchy.gif" /></p>
 * <p>Each TextFlow object has a corresponding Configuration object that allows you to specify initial character and paragraph formats and the initial container format. It also allows you to specify attributes for selection, links, focus, and scrolling. When you supply a Configuration object as parameter to the <code>TextFlow()</code> constructor, it creates a read-only snapshot that you can access through the <code>TextFlow.configuration</code> property. After creation, you can't change the TextFlow's configuration. If you do not specify a Configuration, you can access the default configuration through the <code>TextFlow.defaultConfiguration</code> property.</p>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html#includeExamplesSummary">View the examples</a></p>
 * @see #configuration
 * @see IConfiguration
 * @see DivElement
 * @see FlowElement
 * @see FlowGroupElement
 * @see FlowLeafElement
 * @see flashx.textLayout.compose.IFlowComposer
 * @see ParagraphElement
 * @see SpanElement
 *
 */
public class TextFlow extends ContainerFormattedElement implements IEventDispatcher {
  /**
   * The Configuration object for this TextFlow object. The Configuration object specifies the initial character and paragraph formats, the initial container format, and attributes for selection highlighting, links, focus, and scrolling.
   * <p>If you do not specify a Configuration object, Text Layout Framework uses a default Configuration object, which is referenced by the <code>defaultConfiguration</code> property.</p>
   * @see Configuration
   * @see #defaultConfiguration
   *
   */
  public function get configuration():IConfiguration {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Default configuration for all new TextFlow objects if the configuration is not specified.
   * @see Configuration
   *
   */
  public static var defaultConfiguration:Configuration;

  /**
   * Manages the containers for this element.
   * <p>The TextLines that are created from the element appear as children of the container. The flowComposer manages the containers, and as the text is edited it adds lines to and removes lines from the containers. The flowComposer also keeps track of some critical attributes, such as the width and height to compose to, whether scrolling is on, and so on.</p>
   * <p>The container and <code>flowComposer</code> are closely related. If you reset <code>flowComposer</code>, the container is reset to the new flowComposer's container. Likewise if the container is reset, <code>flowComposer</code> is reset to the container's new flowComposer.</p>
   * @see flashx.textLayout.compose.IFlowComposer
   *
   */
  public function get flowComposer():IFlowComposer {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set flowComposer(value:IFlowComposer):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A callback function for resolving element styles. You can use this to provide styling using CSS or named styles, for example.
   * @see IFormatResolver
   *
   */
  public function get formatResolver():IFormatResolver {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set formatResolver(value:IFormatResolver):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The generation number for this TextFlow object. The undo and redo operations use the generation number to validate that it's legal to undo or redo an operation. The generation numbers must match.
   * <p>Each model change increments <code>generation</code> so if the generation number changes, you know the TextFlow model has changed.</p>
   */
  public function get generation():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextLayoutFormat object for this TextFlow object. This enables several optimizations for reusing host formats. For example;
   * <listing>
   *         textFlowA.hostFormat = textFlowB.hostFormat
   *        </listing>You must set format values before assigning the TextLayoutFormat object to <code>hostFormat</code>. For example, the following lines do <i>not</i> set the font size to 24 because the font size is set <i>after</i> the TextLayoutFormat object has been assigned to <code>hostFormat</code>.
   * <listing>
   *         format = new TextLayoutFormat()
   *         textFlow.hostFormat = format
   *         format.fontSize = 24;
   *        </listing>
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  public function get hostFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set hostFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The InteractionManager associated with this TextFlow object.
   * <p>Controls all selection and editing on the text. If the TextFlow is not selectable, the interactionManager is null. To make the TextFlow editable, assign a interactionManager that is both an ISelectionManager and an IEditManager. To make a TextFlow that is read-only and allows selection, assign a interactionManager that is an ISelectionManager only.</p>
   * @see flashx.textLayout.edit.ISelectionManager
   * @see flashx.textLayout.edit.IEditManager
   *
   */
  public function get interactionManager():ISelectionManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set interactionManager(value:ISelectionManager):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - creates a new TextFlow instance.
   * <p>If you provide a <code>config</code> parameter, the contents of the Configuration object are copied and you cannot make changes. You can access configuration settings, however, through the <code>configuration</code> property. If the <code>config</code> parameter is null, you can access the default configuration settings through the <code>defaultConfiguration</code> property.</p>
   * <p>The Configuration object provides a mechanism for setting configurable default attributes on a TextFlow. While you can't make changes to the Configuration object, you can override default attributes, if necessary, by setting the attributes of TextFlow and its children.</p>
   * @param config Specifies the configuration to use for this TextFlow object. If it's null, use <code>TextFlow.defaultConfiguration</code> to access configuration values.
   *
   * @see Configuration
   * @see #configuration
   * @see #defaultConfiguration
   *
   */
  public function TextFlow(config:IConfiguration = null) {
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
   * @param event The event object dispatched into the event flow.
   *
   * @return A value of <code>true</code> unless <code>preventDefault()</code> is called on the event, in which case it returns <code>false</code>.
   *
   */
  public function dispatchEvent(event:Event):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns an element whose <code>id</code> property matches the <code>idName</code> parameter. Provides the ability to apply a style based on the <code>id</code>.
   * <p>For example, the following line sets the style "color" to 0xFF0000 (red), for the element having the <code>id</code> span1.</p>
   * <listing>
   *          textFlow.getElementByID("span1").setStyle("color", 0xFF0000);
   *         </listing>
   * <p><b>Note:</b> In the following code, <code>p.addChild(s)</code> <i>removes</i> <code>s</code> from its original parent and adds it to <code>p</code>, the new parent.</p>
   * <listing>
   *          var s:SpanElement = new SpanElement();
   *          var p:ParagraphElement = new ParagraphElement();
   *          ...
   *          s = textFlow.getElementByID("span3") as SpanElement;
   *          p.addChild(s);
   *          textFlow.addChild(p);
   *         </listing>
   * @param idName The <code>id</code> value of the element to find.
   *
   * @return The element whose id matches <code>idName</code>.
   *
   * @see FlowElement#id
   *
   * @example This example imports xml markup into a TextFlow object and calls <code>getElementByID()</code> to access the span with the id <code>span3</code> and set its color to red.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class TextFlow_getElementByIDExample extends Sprite
   *     {
   *         public function TextFlow_getElementByIDExample()
   *         {
   *             // create the TextFlow object
   *             var textFlow:TextFlow = new TextFlow();
   *
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "&lt;?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *             "&lt;flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                 "&lt;flow:p>"+
   *                     "&lt;flow:span id='span1'>In the first paragraph of the &lt;/flow:span>"+
   *                     "&lt;flow:span id='span2' fontStyle=\"italic\">cheap &lt;/flow:span>"+
   *                     "&lt;flow:span id='span3'>Western novel, a cowboy meets a saloon girl.&lt;/flow:span>"+
   *                 "&lt;/flow:p>"+
   *             "&lt;/flow:TextFlow>";
   *             var s:SpanElement = new SpanElement();
   *             var s2:SpanElement = new SpanElement();
   *             var p:ParagraphElement = new ParagraphElement();
   *             // import the xml markup into a TextFlow object and display it on the stage
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // get element with ID of span3, make a copy of it
   *             textFlow.getElementByID("span3").setStyle("color", 0xFF0000);
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 800));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getElementByID(idName:String):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns all elements that have <code>styleName</code> set to <code>styleNameValue</code>.
   * @param styleNameValue The name of the style for which to find elements that have it set.
   *
   * @return An array of the elements whose <code>styleName</code> value matches <code>styleNameValue</code>. For example, all elements that have the style name "color".
   *
   * @see FlowElement#styleName
   *
   */
  public function getElementsByStyleName(styleNameValue:String):Array {
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
   * Invalidates all formatting information for the TextFlow, forcing it to be recomputed. Call this method when styles have changed.
   * @see IFormatResolver#invalidateAll()
   *
   */
  public function invalidateAllFormats():void {
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

  /**
   * Dispatched when any link is clicked.
   */
  /**
   * Dispatched after every recompose.
   */
  /**
   * Dispatched by a TextFlow object each time it is damaged You can use this event to find out that the TextFlow has changed, but do not access the TextFlow itself when this event is sent out. This event is sent when TextFlow changes are partially complete, so it can be in an inconsistent state: some changes have been mad already, and other changes are still pending. Get the information you need from the event, and make required changes after control returns to your application.
   */
  /**
   * Dispatched when a InlineGraphicElement is resized due to having width or height as auto or percent and the graphic has finished loading.
   */
  /**
   * Dispatched when the mouse is pressed down over any link.
   */
  /**
   * Dispatched when the mouse passes over any link.
   */
  /**
   * Dispatched when the mouse is released over any link.
   */
  /**
   * Dispatched when the mouse goes out of any link.
   */
  /**
   * Dispatched when the mouse first enters any link.
   */
  /**
   * Dispatched by a TextFlow object after text is scrolled within a controller container.
   */
  /**
   * Dispatched whenever the selection is changed. Primarily used to update selection-dependent user interface. It can also be used to alter the selection, but cannot be used to alter the TextFlow itself.
   */
  /**
   * Dispatched by a TextFlow object each time a container has had new DisplayObjects added or updated as a result of composition.
   */
}
}
