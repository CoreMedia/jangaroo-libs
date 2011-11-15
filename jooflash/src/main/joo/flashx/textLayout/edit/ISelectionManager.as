package flashx.textLayout.edit {
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.elements.TextRange;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The ISelectionManager interface defines the interface for handling text selection.
 * <p>A SelectionManager keeps track of the selected text range and handles events for a TextFlow.</p>
 * <p>A selection can be either a point selection or a range selection. A point selection is the insertion point and is indicated visually by drawing a cursor. A range selection includes the text between an anchor point and an active point.</p>
 * @see SelectionManager
 * @see TextScrap
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public interface ISelectionManager extends IInteractionEventHandler {
  /**
   * The text position of the end of the selection, as an offset from the start of the text flow.
   * <p>The absolute end is the same as either the active or the anchor point of the selection, whichever comes last in the text flow.</p>
   */
  function get absoluteEnd():int;

  /**
   * The text position of the start of the selection, as an offset from the start of the text flow.
   * <p>The absolute start is the same as either the active or the anchor point of the selection, whichever comes first in the text flow.</p>
   */
  function get absoluteStart():int;

  /**
   * The active point of the selection.
   * <p>The <i>active</i> point is the volatile end of the selection. The active point is changed when the selection is modified. The active point can be at either the beginning or the end of the selection.</p>
   */
  function get activePosition():int;

  /**
   * The anchor point of the selection.
   * <p>An <i>anchor</i> point is the stable end of the selection. When the selection is extended, the anchor point does not change. The anchor point can be at either the beginning or the end of the selection.</p>
   */
  function get anchorPosition():int;

  /**
   * The current SelectionFormat object.
   * <p>The current SelectionFormat object is chosen from the SelectionFormat objects assigned to the <code>unfocusedSelectionFormat</code>, <code>inactiveSelectionFormat</code> and <code>focusedSelectionFormat</code> properties based on the current state of the <code>windowActive</code> and <code>focused</code> properties.</p>
   */
  function get currentSelectionFormat():SelectionFormat;

  /**
   * The editing mode.
   * <p>The editing mode indicates whether the text flow supports selection, editing, or only reading. A text flow is made selectable by assigning a selection manager and editable by assigning an edit manager. Constants representing the editing modes are defined in the EditingMode class.</p>
   *
   */
  function get editingMode():String;

  /**
   * Indicates whether a container in the text flow has the focus.
   * <p>The <code>focused</code> property is <code>true</code> if any of the containers in the text flow has key focus.</p>
   */
  function get focused():Boolean;

  /**
   * The SelectionFormat object used to draw the selection in a focused container.
   */
  function get focusedSelectionFormat():SelectionFormat;

  /**
   * @private
   */
  function set focusedSelectionFormat(value:SelectionFormat):void;

  /**
   * The SelectionFormat object used to draw the selection when it is not in the active window.
   */
  function get inactiveSelectionFormat():SelectionFormat;

  /**
   * @private
   */
  function set inactiveSelectionFormat(value:SelectionFormat):void;

  /**
   * The TextFlow object managed by this selection manager.
   * <p>A selection manager manages a single text flow. A selection manager can also be assigned to a text flow by setting the <code>interactionManager</code> property of the TextFlow object.</p>
   * @see flashx.textLayout.elements.TextFlow#interactionManager
   *
   */
  function get textFlow():TextFlow;

  /**
   * @private
   */
  function set textFlow(value:TextFlow):void;

  /**
   * The SelectionFormat object used to draw the selection when it is not in a focused container, but is in the active window.
   */
  function get unfocusedSelectionFormat():SelectionFormat;

  /**
   * @private
   */
  function set unfocusedSelectionFormat(value:SelectionFormat):void;

  /**
   * Indicates whether the window associated with the text flow is active.
   * <p>The <code>windowActive</code> property is <code>true</code> if the window displaying with the text flow is the active window.</p>
   */
  function get windowActive():Boolean;

  /**
   * Executes any pending FlowOperations.
   * <p>The execution of some editing operations, such as text insertion, is delayed until the next enterFrame event. Calling <code>flushPendingOperations()</code> causes any deferred operations to be executed immediately.</p>
   */
  function flushPendingOperations():void;

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
  function getCommonCharacterFormat(range:TextRange = null):ITextLayoutFormat;

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
  function getCommonContainerFormat(range:TextRange = null):ITextLayoutFormat;

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
  function getCommonParagraphFormat(range:TextRange = null):ITextLayoutFormat;

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
  function getSelectionState():SelectionState;

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
  function hasSelection():Boolean;

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
  function isRangeSelection():Boolean;

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
  function notifyInsertOrDelete(absolutePosition:int, length:int):void;

  /**
   * Redisplays the selection shapes.
   * <p><b>Note:</b> You do not need to call this method directly. It is called automatically.</p>
   */
  function refreshSelection():void;

  /**
   * Selects the entire flow
   */
  function selectAll():void;

  /**
   * Selects a range of text.
   * <p>If a negative number is passed as either of the parameters, then any existing selection is removed.</p>
   * @param anchorPosition The anchor point for the new selection, as an absolute position in the TextFlow
   * @param activePosition The active end of the new selection, as an absolute position in the TextFlow
   *
   * @example The following example creates a text flow and makes a selection:
   * <listing>
   *  var textFlow:TextFlow = TextConverter.importToFlow( "Let me not to the marriage of true minds", TextConverter.PLAIN_TEXT_FORMAT );
   *  textFlow.interactionManager = new SelectionManager();
   *
   *  textFlow.interactionManager.selectRange( 18, 26 ); // Selects the word 'marriage'
   * </listing>
   */
  function selectRange(anchorPosition:int, activePosition:int):void;

  /**
   * Gives the focus to the first container in the selection.
   * @example The following example sets the focus to the first container in the current selection of a text flow. (The textFlow variable in the example is a TextFlow object.)
   * <listing>
   *  textFlow.interactionManager.setFocus();
   * </listing>
   */
  function setFocus():void;

  /**
   * Sets the SelectionState object of the current selection.
   * @param state <code>state:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/SelectionState.html">SelectionState</a></code>
   *
   * @see SelectionState
   *
   */
  function setSelectionState(state:SelectionState):void;
}
}
