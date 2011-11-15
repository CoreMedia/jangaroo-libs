package flashx.textLayout.edit {
import flash.events.ContextMenuEvent;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.IMEEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;

import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.elements.TextRange;
import flashx.textLayout.formats.ITextLayoutFormat;
import flashx.textLayout.operations.FlowOperation;

/**
 * The SelectionManager class manages text selection in a text flow.
 * <p>The selection manager keeps track of the selected text range, manages its formatting, and can handle events affecting the selection. To allow a user to make selections in a text flow, assign a SelectionManager object to the <code>interactionManager</code> property of the flow. (To allow editing, assign an instance of the EditManager class, which extends SelectionManager.)</p>
 * <p>The following table describes how the SelectionManager class handles keyboard shortcuts:</p>
 * <table>
 * <tr><th>TB,LTR</th><th>TB,RTL</th><th>TL,LTR</th><th>RL,RTL</th></tr>
 * <tr><th>none</th><th>ctrl</th><th>alt|ctrl+alt</th><th>none</th><th>ctrl</th><th>alt|ctrl+alt</th><th>none</th><th>ctrl</th><th>alt|ctrl+alt</th><th>none</th><th>ctrl</th><th>alt|ctrl+alt</th></tr>
 * <tr>
 * <td>leftarrow</td>
 * <td>previousCharacter</td>
 * <td>previousWord</td>
 * <td>previousWord</td>
 * <td>nextCharacter</td>
 * <td>nextWord</td>
 * <td>nextWord</td>
 * <td>nextLine</td>
 * <td>endOfDocument</td>
 * <td>endOfParagraph</td>
 * <td>nextLine</td>
 * <td>endOfDocument</td>
 * <td>endOfParagraph</td></tr>
 * <tr>
 * <td>uparrow</td>
 * <td>previousLine</td>
 * <td>startOfDocument</td>
 * <td>startOfParagraph</td>
 * <td>previousLine</td>
 * <td>startOfDocument</td>
 * <td>startOfParagraph</td>
 * <td>previousCharacter</td>
 * <td>previousWord</td>
 * <td>previousWord</td>
 * <td>nextCharacter</td>
 * <td>nextWord</td>
 * <td>nextWord</td></tr>
 * <tr>
 * <td>rightarrow</td>
 * <td>nextCharacter</td>
 * <td>nextWord</td>
 * <td>nextWord</td>
 * <td>previousCharacter</td>
 * <td>previousWord</td>
 * <td>previousWord</td>
 * <td>previousLine</td>
 * <td>startOfDocument</td>
 * <td>startOfParagraph</td>
 * <td>previousLine</td>
 * <td>startOfDocument</td>
 * <td>startOfParagraph</td></tr>
 * <tr>
 * <td>downarrow</td>
 * <td>nextLine</td>
 * <td>endOfDocument</td>
 * <td>endOfParagraph</td>
 * <td>nextLine</td>
 * <td>endOfDocument</td>
 * <td>endOfParagraph</td>
 * <td>nextCharacter</td>
 * <td>nextWord</td>
 * <td>nextWord</td>
 * <td>previousCharacter</td>
 * <td>previousWord</td>
 * <td>previousWord</td></tr>
 * <tr>
 * <td>home</td>
 * <td>startOfLine</td>
 * <td>startOfDocument</td>
 * <td>startOfLine</td>
 * <td>startOfLine</td>
 * <td>startOfDocument</td>
 * <td>startOfLine</td>
 * <td>startOfLine</td>
 * <td>startOfDocument</td>
 * <td>startOfLine</td>
 * <td>startOfLine</td>
 * <td>startOfDocument</td>
 * <td>startOfLine</td></tr>
 * <tr>
 * <td>end</td>
 * <td>endOfLine</td>
 * <td>endOfDocument</td>
 * <td>endOfLine</td>
 * <td>endOfLine</td>
 * <td>endOfDocument</td>
 * <td>endOfLine</td>
 * <td>endOfLine</td>
 * <td>endOfDocument</td>
 * <td>endOfLine</td>
 * <td>endOfLine</td>
 * <td>endOfDocument</td>
 * <td>endOfLine</td></tr>
 * <tr>
 * <td>pagedown</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td>
 * <td>nextPage</td></tr>
 * <tr>
 * <td>pageup</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td>
 * <td>previousPage</td></tr></table>
 * <p><b>Key:</b></p>
 * <ul>
 * <li>none = no modifier</li>
 * <li>ctrl, shift, alt = modifiers</li>
 * <li>alt-key and ctrl+alt-key are the same on all platforms (on some platforms alt-key does not get to TLF)</li>
 * <li>shift key modifes to extend the active end of the selection in the specified manner</li>
 * <li>TB (top-to-bottom),RL (right-to-left) are textFlow level <code>blockProgression</code> settings</li>
 * <li>LTR (left-to-right),RTL (right-to-left) are textFlow level <code>direction</code> settings</li>
 * <li>next and prev in logical order in the textFlow - the effect in RTL text is that the selection moves in the physical direction</li></ul>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionManager.html#includeExamplesSummary">View the examples</a></p>
 * @see EditManager
 *
 */
public class SelectionManager implements ISelectionManager {
  /**
   * The text position of the end of the selection, as an offset from the start of the text flow.
   * <p>The absolute end is the same as either the active or the anchor point of the selection, whichever comes last in the text flow.</p>
   */
  public function get absoluteEnd():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text position of the start of the selection, as an offset from the start of the text flow.
   * <p>The absolute start is the same as either the active or the anchor point of the selection, whichever comes first in the text flow.</p>
   */
  public function get absoluteStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The active point of the selection.
   * <p>The <i>active</i> point is the volatile end of the selection. The active point is changed when the selection is modified. The active point can be at either the beginning or the end of the selection.</p>
   */
  public function get activePosition():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The anchor point of the selection.
   * <p>An <i>anchor</i> point is the stable end of the selection. When the selection is extended, the anchor point does not change. The anchor point can be at either the beginning or the end of the selection.</p>
   */
  public function get anchorPosition():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current SelectionFormat object.
   * <p>The current SelectionFormat object is chosen from the SelectionFormat objects assigned to the <code>unfocusedSelectionFormat</code>, <code>inactiveSelectionFormat</code> and <code>focusedSelectionFormat</code> properties based on the current state of the <code>windowActive</code> and <code>focused</code> properties.</p>
   * @see SelectionFormat
   *
   */
  public function get currentSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The editing mode.
   * <p>The editing mode indicates whether the text flow supports selection, editing, or only reading. A text flow is made selectable by assigning a selection manager and editable by assigning an edit manager. Constants representing the editing modes are defined in the EditingMode class.</p>
   * @see EditingMode
   *
   */
  public function get editingMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether a container in the text flow has the focus.
   * <p>The <code>focused</code> property is <code>true</code> if any of the containers in the text flow has key focus.</p>
   */
  public function get focused():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The SelectionFormat object used to draw the selection in a focused container.
   * @see SelectionFormat
   *
   */
  public function get focusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set focusedSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The SelectionFormat object used to draw the selection when it is not in the active window.
   * @see SelectionFormat
   *
   */
  public function get inactiveSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set inactiveSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The format that will be applied to inserted text. TBD: pointFormat needs to be extended to remember user styles and "undefine" of formats from calls to IEditManager.undefineFormat with leafFormat values on a point selection.
   */
  protected function get pointFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextFlow object managed by this selection manager.
   * <p>A selection manager manages a single text flow. A selection manager can also be assigned to a text flow by setting the <code>interactionManager</code> property of the TextFlow object.</p>
   * @see flashx.textLayout.elements.TextFlow#interactionManager
   *
   */
  public function get textFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlow(value:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The SelectionFormat object used to draw the selection when it is not in a focused container, but is in the active window.
   * @see SelectionFormat
   *
   */
  public function get unfocusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set unfocusedSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the window associated with the text flow is active.
   * <p>The <code>windowActive</code> property is <code>true</code> if the window displaying with the text flow is the active window.</p>
   */
  public function get windowActive():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a SelectionManager object.
   * <p>Assign a SelectionManager object to the <code>interactionManager</code> property of a text flow to enable text selection.</p>
   */
  public function SelectionManager() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes an activate event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function activateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a deactivate event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function deactivateHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Perform a SelectionManager operation - these may never modify the flow but clients still are able to cancel them.
   * @param op <code>op:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/operations/FlowOperation.html">FlowOperation</a></code>
   *
   */
  public function doOperation(op:FlowOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes an edit event.
   * <p>Edit events are dispatched for cut, copy, paste, and selectAll commands.</p>
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  public function editHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   */
  public function flushPendingOperations():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a focusChange event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  public function focusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a focusIn event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  public function focusInHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a focusOut event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  public function focusOutHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the character format attributes that are common to all characters in the specified text range or current selection.
   * <p>Format attributes that do not have the same value for all characters in the specified element range or selection are set to <code>null</code> in the returned ITextLayoutFormat instance.</p>
   * @param range The optional range of text for which common attributes are requested. If null, the current selection is used.
   *
   * @return The common character style settings
   *
   * @example The following example illustrates how to get an ITextLayoutFormat object containing the character style settings common to all elements in the selection. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var common:ITextLayoutFormat = textFlow.interactionManager.getCommonCharacterFormat();
   * </listing>
   */
  public function getCommonCharacterFormat(range:TextRange = null):ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the container format attributes that are common to all containers in the specified text range or current selection.
   * <p>Format attributes that do not have the same value for all containers in the specified element range or selection are set to <code>null</code> in the returned ITextLayoutFormat instance.</p>
   * @param range The optional range of text for which common attributes are requested. If null, the current selection is used.
   *
   * @return The common container style settings
   *
   * @example The following example illustrates how to get an ITextLayoutFormat object containing the container style settings common to all elements in the selection. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var common:ITextLayoutFormat = textFlow.interactionManager.getCommonContainerFormat();
   * </listing>
   */
  public function getCommonContainerFormat(range:TextRange = null):ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the paragraph format attributes that are common to all paragraphs in the specified text range or current selection.
   * <p>Format attributes that do not have the same value for all paragraphs in the specified element range or selection are set to <code>null</code> in the returned ITextLayoutFormat instance.</p>
   * @param range The optional range of text for which common attributes are requested. If null, the current selection is used.
   *
   * @return The common paragraph style settings
   *
   * @example The following example illustrates how to get an ITextLayoutFormat object containing the paragraph style settings common to all elements in the selection. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var common:ITextLayoutFormat = textFlow.interactionManager.getCommonParagraphFormat();
   * </listing>
   */
  public function getCommonParagraphFormat(range:TextRange = null):ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gets the SelectionState object of the current selection.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionState.html">SelectionState</a></code>
   *
   * @see SelectionState
   *
   * @example The following example gets a SelectionState object for the current selection in a text flow. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var selection:SelectionState = textFlow.interactionManager.getSelectionState();
   * </listing>
   */
  public function getSelectionState():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether there is a selection.
   * <p>Returns <code>true</code> if there is either a range selection or a point selection. By default, when a selection manager is first set up, there is no selection (the start and end are -1).</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code>
   *
   * @example The following example illustrates how to determine whether there a text flow has a selection. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var selection:SelectionState = textFlow.interactionManager.hasSelection();
   * </listing>
   */
  public function hasSelection():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes an imeStartComposition event
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/IMEEvent.html">IMEEvent</a></code>
   *
   */
  public function imeStartCompositionHandler(event:IMEEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether the selection covers a range of text.
   * <p>Returns <code>true</code> if there is a selection that extends past a single position.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code>
   *
   * @example The following example illustrates how to determine whether the current selection in a text flow extends over a range of text. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  var selection:SelectionState = textFlow.interactionManager.isRangeSelection();
   * </listing>
   */
  public function isRangeSelection():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a keyDown event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/KeyboardEvent.html">KeyboardEvent</a></code>
   *
   */
  public function keyDownHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a keyFocusChange event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/FocusEvent.html">FocusEvent</a></code>
   *
   */
  public function keyFocusChangeHandler(event:FocusEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a keyUp event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/KeyboardEvent.html">KeyboardEvent</a></code>
   *
   */
  public function keyUpHandler(event:KeyboardEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a menuSelect event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/ContextMenuEvent.html">ContextMenuEvent</a></code>
   *
   */
  public function menuSelectHandler(event:ContextMenuEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseDoubleClick event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseDoubleClickHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseDown event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseDownHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseMove event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseMoveHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseOut event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseOutHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseOver event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseOverHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseUp event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseUpHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a mouseWheel event.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/MouseEvent.html">MouseEvent</a></code>
   *
   */
  public function mouseWheelHandler(event:MouseEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Updates the selection manager when text is inserted or deleted.
   * <p>Operations must call <code>notifyInsertOrDelete</code> when changing the text in the text flow. The selection manager adjusts index-based position indicators accordingly. If you create a new Operation class that changes text in a text flow directly (not using another operation) your operation must call this function to keep the selection up to date.</p>
   * @param absolutePosition The point in the text where the change was made.
   * @param length A positive or negative number indicating how many characters were inserted or deleted.
   *
   * @example The following example illustrates how a function in a custom Operation class would call the <code>notifyInsertOrDelete()</code> method.
   * <p>This function replaces a range of text in a SpanElement as part of some hypothetical operation.</p>
   * <listing>
   *  import flashx.textLayout.elements.SpanElement;
   *
   *
   * function doReplace( span:SpanElement, newText:String, relativeStart:int, relativeEnd:int ):void
   * {
   *     span.replaceText(  relativeStart, relativeEnd, newText );
   *     var parentFlow:TextFlow = span.getTextFlow();
   *     var lengthDifference:int = newText.length - (relativeEnd - relativeStart);
   *
   *     parentFlow.interactionManager.notifyInsertOrDelete(    span.getAbsoluteStart() + relativeStart, lengthDifference );
   * }
   * </listing>
   */
  public function notifyInsertOrDelete(absolutePosition:int, length:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Redisplays the selection shapes.
   * <p><b>Note:</b> You do not need to call this method directly. It is called automatically.</p>
   */
  public function refreshSelection():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @see flashx.textLayout.compose.IFlowComposer
   *
   */
  public function selectAll():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @param anchorPosition <code>anchorPosition:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   * @param activePosition <code>activePosition:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @see flashx.textLayout.compose.IFlowComposer
   *
   */
  public function selectRange(anchorPosition:int, activePosition:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Gives the focus to the first container in the selection.
   * @example The following example sets the focus to the first container in the current selection of a text flow. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  textFlow.interactionManager.setFocus();
   * </listing>
   */
  public function setFocus():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the SelectionState object of the current selection.
   * @param sel <code>sel:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionState.html">SelectionState</a></code>
   *
   * @see SelectionState
   *
   */
  public function setSelectionState(sel:SelectionState):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Processes a TextEvent.
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/TextEvent.html">flash.events:TextEvent</a></code>
   *
   */
  public function textInputHandler(event:TextEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
