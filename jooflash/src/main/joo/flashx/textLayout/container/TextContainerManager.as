package flashx.textLayout.container {
import flash.display.Sprite;
import flash.events.ContextMenuEvent;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.FocusEvent;
import flash.events.IMEEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.geom.Rectangle;
import flash.text.engine.TextLine;
import flash.ui.ContextMenu;

import flashx.textLayout.compose.ISWFContext;
import flashx.textLayout.edit.IEditManager;
import flashx.textLayout.edit.IInteractionEventHandler;
import flashx.textLayout.edit.ISelectionManager;
import flashx.textLayout.edit.SelectionFormat;
import flashx.textLayout.elements.IConfiguration;
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.formats.ITextLayoutFormat;
import flashx.undo.IUndoManager;

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
 * Manages text in a container. Assumes that it manages all children of the container. Consider using TextContainerManager for better performance in cases where there is a one container per TextFlow, and the TextFlow is not the main focus, is static text, or is infrequently selected. Good for text in form fields, for example.
 * @see ContainerController
 *
 */
public class TextContainerManager extends EventDispatcher implements ISWFContext, IInteractionEventHandler, ISandboxSupport {
  /**
   * Returns the vertical extent allowed for text inside the container. The value is specified in pixels.
   * <p>After setting this property, the text in the container is damaged and requires composing.</p>
   */
  public function get compositionHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set compositionHeight(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the horizontal extent allowed for text inside the container. The value is specified in pixels.
   * <p>After setting this property, the text in the container is damaged and requires composing.</p>
   */
  public function get compositionWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set compositionWidth(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The Configuration object for this TextContainerManager.
   *
   */
  public function get configuration():IConfiguration {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the container (DisplayObjectContainer) that holds the text that this TextContainerManager manages.
   * @see ContainerController#container
   *
   */
  public function get container():Sprite {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The default configuration for this TextContainerManager. Column and padding attributes are set to <code>FormatValue.INHERIT</code>.
   * @see flashx.textLayout.elements.IConfiguration
   * @see flashx.textLayout.formats.FormatValue#INHERIT
   *
   */
  public static function get defaultConfiguration():IConfiguration {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Editing mode of this TextContainerManager. Modes are reading only, reading and selection permitted, and editing (reading, selection, and writing) permitted. Use the constant values of the EditingMode class to set this property.
   * <p>Default value is READ_WRITE.</p>
   * @see flashx.textLayout.edit.EditingMode
   *
   */
  public function get editingMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set editingMode(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Controls whether the factory generates all text lines or stops when the container bounds are filled.Specifies the horizontal scrolling policy, which you can set by assigning one of the constants of the ScrollPolicy class: ON, OFF, or AUTO.
   */
  public function get horizontalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set horizontalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the current horizontal scroll location on the stage. The value specifies the number of pixels from the left.
   */
  public function get horizontalScrollPosition():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set horizontalScrollPosition(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the format when display just a string. If displaying a TextFlow this has no immediate effect. The supplied ITextLayoutFormat is not copied. Modifying it without calling this setter has indeterminate effects.
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
   * The total number of lines in the flow.
   */
  public function get numLines():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Optional ISWFContext instance used to make FTE calls as needed in the proper swf context.
   * @see flashx.textLayout.compose.ISWFContext
   *
   */
  public function get swfContext():ISWFContext {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set swfContext(value:ISWFContext):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Controls whether the factory generates all text lines or stops when the container bounds are filled.Specifies the vertical scrolling policy, which you can set by assigning one of the constants of the ScrollPolicy class: ON, OFF, or, AUTO.
   */
  public function get verticalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the current vertical scroll location on the stage. The value specifies the number of pixels from the top.
   */
  public function get verticalScrollPosition():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalScrollPosition(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor function - creates a TextContainerManager instance. For best results:<ol>
   * <li>Start with TextContainerManager.defaultConfiguration and modify it</li>
   * <li>Share the same Configuration among many InputManagers</li></ol>
   * @param container The DisplayObjectContainer in which to manage the text lines.
   * @param configuration - The IConfiguration instance to use with this TextContainerManager instance.
   *
   */
  public function TextContainerManager(container:Sprite, configuration:IConfiguration = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Event.ACTIVATE</code> event when the client manages events.
   * @param event The Event object.
   *
   * @see flash.events.Event#ACTIVATE
   *
   */
  public function activateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the current ISelectionManager instance. Converts to TextFlow instance and creates one if necessary.
   * @return the interaction manager for this TextContainerManager instance.
   *
   * @see flashx.textLayout.edit.ISelectionManager
   *
   */
  public function beginInteraction():ISelectionManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called to request clients to begin the forwarding of mouseup and mousemove events from outside a security sandbox.
   */
  public function beginMouseCapture():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Composes the container text; calls either the factory or <code>updateAllControllers()</code>.
   */
  public function compose():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a ContextMenu for the TextContainerManager. Use the methods of the ContextMenu class to add items to the menu.
   * <p>You can override this method to define a custom context menu.</p>
   * @return the created context menu.
   *
   * @see flash.ui.ContextMenu
   *
   */
  protected function createContextMenu():ContextMenu {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Create an edit manager to use for editing. Override this method if you have a custom EditManager that you want to use in place of the default.
   * @param undoManager IUndoManager instance for the EditManager being created.
   *
   * @return the editing manager for this TextContainerManager instance.
   *
   */
  protected function createEditManager(undoManager:IUndoManager):IEditManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Create a selection manager to use for selection. Override this method if you have a custom SelectionManager that you want to use in place of the default.
   * @return a new SelectionManager instance.
   *
   */
  protected function createSelectionManager():ISelectionManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Event.DEACTIVATE</code> event when the client manages events.
   * @param event The Event object.
   *
   * @see flash.events.Event#DEACTIVATE
   *
   */
  public function deactivateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns <code>true</code> if it has filled in the container's scrollRect property. This method enables you to test whether <code>scrollRect</code> is set without actually accessing the <code>scrollRect</code> property which can possibly create a performance issue.
   * <p>Override this method to draw a background or a border. Overriding this method can be tricky as the scrollRect <b>must</b> be set as specified.</p>
   * @param scrollX The starting horizontal position of the scroll rectangle.
   * @param scrollY The starting vertical position of the scroll rectangle.
   *
   * @return <code>true</code> if it has created the <code>scrollRect</code> object.
   *
   */
  public function drawBackgroundAndSetScrollRect(scrollX:Number, scrollY:Number):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes an edit event (CUT, COPY, PASTE, SELECT_ALL) when the client manages events.
   * @param event Event object.
   *
   * @see flash.events.Event
   *
   */
  public function editHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Terminates interaction.
   * @see flashx.textLayout.edit.ISelectionManager
   *
   */
  public function endInteraction():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Called to inform clients that the the forwarding of mouseup and mousemove events from outside a security sandbox is no longer needed.
   */
  public function endMouseCapture():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.KEY_FOCUS_CHANGE</code> and <code>FocusEvent.MOUSE_FOCUS_CHANGE</code> events when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#KEY_FOCUS_CHANGE
   * @see flash.events.FocusEvent#MOUSE_FOCUS_CHANGE
   *
   */
  public function focusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Process a focusIn event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  public function focusInHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.FOCUS_OUT</code> event when the client manages events.
   * @param event The FocusEvent object.
   *
   * @see flash.events.FocusEvent#FOCUS_OUT
   *
   */
  public function focusOutHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a rectangle that shows where the last call to either the <code>compose()</code> method or the <code>updateContainer()</code> method placed the text.
   * @return the bounds of the content
   *
   * @see #compose()
   * @see #updateContainer()
   *
   */
  public function getContentBounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the focusedSelectionFormat - by default get it from the configuration. This can be overridden in the subclass to supply a different SelectionFormat
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionFormat.html">SelectionFormat</a></code>
   *
   */
  protected function getFocusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the inactiveSelectionFormat - by default get it from the configuration This can be overridden in the subclass to supply a different SelectionFormat
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionFormat.html">SelectionFormat</a></code>
   *
   */
  protected function getInactiveSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Return the TextLine at the index from array of composed lines.
   * @param index Finds the line at this index position in the text.
   *
   * @return the TextLine that occurs at the specified index.
   *
   */
  public function getLineAt(index:int):TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Figure out the scroll distance required to scroll up or down by the specified number of lines. Negative numbers scroll upward, bringing more of the top of the TextFlow into view. Positive numbers scroll downward, bringing the next line from the bottom into full view.
   * <p>When scrolling up, for example, the method makes the next line fully visible. If the next line is partially obscured and the number of lines specified is 1, the partially obscured line becomes fully visible.</p>
   * @param numLines The number of lines to scroll.
   *
   * @return the delta amount of space to scroll
   *
   */
  public function getScrollDelta(numLines:int):Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the current text using a separator between paragraphs. The separator can be specified with the <code>separator</code> argument. The default value of the <code>separator</code> argument is the Unicode character <code>'PARAGRAPH SEPARATOR' (U+2029)</code>.
   * <p>Calling the setter discards any attached TextFlow. Any selection is lost.</p>
   * @param separator String to set between paragraphs.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   */
  public function getText(separator:String = ""):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current TextFlow. Converts this to a full TextFlow representation if it isn't already one.
   * @return the current TextFlow object
   *
   */
  public function getTextFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the undo manager to use. By default, creates a unique undo manager. You can override this method in the subclass if you want to customize the undo manager (for example, to use a shared undo manager for multiple TextContainerManager instances).
   * @return new IUndoManager instance.
   *
   */
  protected function getUndoManager():IUndoManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the unfocusedSelectionFormat - by default get it from the configuration You can override this method in the subclass to supply a different SelectionFormat.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionFormat.html">SelectionFormat</a></code>
   *
   */
  protected function getUnfocusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>IME_START_COMPOSITION</code> event when the client manages events.
   * @param event The IMEEvent object.
   *
   * @see flash.events.IMEEvent#IME_START_COMPOSITION
   *
   */
  public function imeStartCompositionHandler(event:IMEEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Call this if you change the selection formats (SelectionFormat) and want the interactionManager to update.
   */
  public function invalidateSelectionFormats():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Call this if you are editing, and want to reset the undo manager used for editing.
   */
  public function invalidateUndoManager():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns <code>true</code> if the content needs composing.
   * @return <code>true</code> if the content needs composing; <code>false</code> otherwise.
   *
   */
  public function isDamaged():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>KeyboardEvent.KEY_DOWN</code> event when the client manages events.
   * @param event KeyboardEvent object.
   *
   * @see flash.events.KeyboardEvent#KEY_DOWN
   *
   */
  public function keyDownHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>FocusEvent.KEY_FOCUS_CHANGE</code> event when the client manages events.
   * @param event The FocusEvent object.
   *
   */
  public function keyFocusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>Keyboard.KEY_UP</code> event when the client manages events.
   * @param event The KeyboardEvent object.
   *
   * @see flash.events.KeyboardEvent#KEY_UP
   *
   */
  public function keyUpHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>ContextMenuEvent.MENU_SELECT</code> event when the client manages events.
   * @param event ContextMenuEvent object.
   *
   * @see flash.events.ContextMenuEvent#MENU_SELECT
   *
   */
  public function menuSelectHandler(event:ContextMenuEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.DOUBLE_CLICK</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#DOUBLE_CLICK
   *
   */
  public function mouseDoubleClickHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_DOWN</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_DOWN
   *
   */
  public function mouseDownHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_MOVE</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_MOVE
   *
   */
  public function mouseMoveHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Client call to forward a mouseMove event from outside a security sandbox. Coordinates of the mouse move are not needed.
   * @param e <code>e:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function mouseMoveSomewhere(e:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_OUT</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_OUT
   *
   */
  public function mouseOutHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Process a mouseOver event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   * @see flash.events.MouseEvent#MOUSE_OVER
   *
   */
  public function mouseOverHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_UP</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_UP
   *
   */
  public function mouseUpHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Client call to forward a mouseUp event from outside a security sandbox. Coordinates of the mouse up are not needed.
   * @param e <code>e:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function mouseUpSomewhere(e:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>MouseEvent.MOUSE_WHEEL</code> event when the client manages events.
   * @param event The MouseEvent object.
   *
   * @see flash.events.MouseEvent#MOUSE_WHEEL
   *
   */
  public function mouseWheelHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Scrolls so that the text range is visible in the container.
   * @param activePosition The end of the selection that is changed when you extend the selection. It can be either the start or the end of the selection, expressed as an offset from the start of the text flow.
   * @param anchorPosition The stable end of the selection when you extend the selection. It can be either the start or the end of the selection.
   *
   */
  public function scrollToRange(activePosition:int, anchorPosition:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the <code>text</code> property to the specified String. Discards any attached TextFlow. Any selection is lost.
   * @param text the String to set
   *
   */
  public function setText(text:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets a TextFlow into this TextContainerManager replacing any existing TextFlow and discarding the current text.
   * @param textFlow <code>textFlow:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   *
   */
  public function setTextFlow(textFlow:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes the <code>TextEvent.TEXT_INPUT</code> event when the client manages events.
   * @param event The TextEvent object.
   *
   * @see flash.events.TextEvent#TEXT_INPUT
   *
   */
  public function textInputHandler(event:TextEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Updates the display; calls either the factory or updateAllControllers().
   */
  public function updateContainer():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Dispatched when any link is clicked.
   */
  /**
   * Dispatched after every recompose.
   */
  /**
   * Dispatched by a TextFlow object each time it is damaged
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
   * Dispatched whenever the selection is changed. Primarily used to update selection-dependent user interface.
   */
  /**
   * Dispatched by a TextFlow object each time a container has had new DisplayObjects added or updated as a result of composition.
   */


  public function callInContext(fn:Function, thisArg:Object, argArray:Array, returns:Boolean = true):* {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
