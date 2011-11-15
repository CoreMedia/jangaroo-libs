package flash.text.ime {
import flash.geom.Rectangle;

/**
 * Dispatched when the user begins to use an IME (input method editor).
 * @eventType flash.events.IMEEvent.IME_START_COMPOSITION
 */
[Event(name="imeStartComposition", type="flash.events.IMEEvent")]
/**
 * Dispatched when the user enters text. For IME (input method editor) clients, the receiver should insert the string contained in the event object's <code>text</code> property at the current insertion point.
 * @eventType flash.events.TextEvent.TEXT_INPUT
 */
[Event(name="textInput", type="flash.events.TextEvent")]

/**
 * Interface for IME (input method editor) clients. Components based on the flash.text.engine package must implement this interface to support editing text inline using an IME. This interface is not used with TextField objects. TextLayoutFramework (TLF) uses this interface to support inline IME, so clients using TLF do not need to implement this interface.
 * <p>To support inline IME, set the <code>imeClient</code> property of an <code>ImeEvent.IME_START_COMPOSITION</code> event to an object which implements this interface.</p>
 * <p>The following terms are often used in the IME related API:</p>
 * <ul>
 * <li>A <i>conversation</i> is the interchange between the IME and the application. During a conversation, a composition is updated one or more times and then confirmed by the user.</li>
 * <li>A <i>composition</i> identifies the text entered by the user through the IME; including associated input state information such as the selected range and the extent of any clauses.</li>
 * <li>A <i>clause</i> is a range of the composition possibly sharing semantic information, such as indicating whether the input is in a selected or converted state. A composition contains zero or more clauses.</li></ul>
 * @see CompositionAttributeRange
 * @see flash.events.IMEEvent#imeClient
 *
 */
public interface IIMEClient {
  /**
   * The zero-based character index value of the end of the current edit session text (such as all text in the inline session that is not confirmed to the document).
   */
  function get compositionEndIndex():int;

  /**
   * The zero-based character index value of the start of the current edit session text (such as all text in the inline session that is not confirmed to the document).
   */
  function get compositionStartIndex():int;

  /**
   * The zero-based character index value of the last character in the current selection.
   */
  function get selectionActiveIndex():int;

  /**
   * The zero-based character index value of the first character in the current selection.
   */
  function get selectionAnchorIndex():int;

  /**
   * Indicates whether the text in the component is vertical or not. This property directs the positioning of the candidate window (such as beside vertical text or below horizontal text).
   */
  function get verticalTextLayout():Boolean;

  /**
   * Use this callback to end the inline editing session and confirm the text.
   * @param text the final state of the text in the inline session (the confirmed text).
   * @param preserveSelection when true, you should not reset the current selection to the end of the confirmed text.
   *
   */
  function confirmComposition(text:String = null, preserveSelection:Boolean = false):void;

  /**
   * The IME uses this method to query the bounding box of the text currently edited with the IME client. Use this method to place the candidate window and set the mouse cursor in the IME client when the mouse is over the text field or other component that supports IME.
   * @param startIndex An integer that specifies the starting location of the range of text from the bounding box you are measuring.
   * @param endIndex Optional; an integer that specifies the ending location of the range of text from the bounding box you are measuring.
   *
   * @return The bounding box of the specified range of text, or <code>null</code> if one or both of the indexes are invalid. This method returns the same value if <code>startIndex</code> is greater or less than <code>endIndex</code>. The same value should be returned whether or not <code>startIndex</code> is greater or less than <code>endIndex</code>.
   *
   */
  function getTextBounds(startIndex:int, endIndex:int):Rectangle;

  /**
   * Gets the specified range of text from the component. This method is called during IME reconversion.
   * @param startIndex an integer that specifies the starting location of the range of text to be retrieved.
   * @param endIndex an integer that specifies the ending location of the range of text to be retrieved.
   *
   * @return The requested text, or <code>null</code> if no text is available in the requested range or if either or both of the indexes are invalid. The same value should be returned independant of whether <code>startIndex</code> is greater or less than <code>endIndex</code>.
   *
   */
  function getTextInRange(startIndex:int, endIndex:int):String;

  /**
   * Sets the range of selected text in the component. If either of the arguments is out of bounds the selection should not be changed.
   * @param anchorIndex The zero-based index value of the character at the anchor end of the selection
   * @param activeIndex The zero-based index value of the character at the active end of the selection.
   *
   */
  function selectRange(anchorIndex:int, activeIndex:int):void;

  /**
   * Callback for updating the contents of the inline editing session. This method is called whenever the text being edited with the IME has changed and its contents are used by the client to redraw the entire inline editing session.
   * @param text Contains the text of the inline edit session from the IME.
   * @param attributes Contains an array of composition clauses with adornment info.
   * @param compositionStartIndex Start of the inline session relative to the start of the text object.
   * @param compositionEndIndex End of the inline session relative to the start of the text object.
   *
   */
  function updateComposition(text:String, attributes:Vector.<CompositionAttributeRange>, compositionStartIndex:int, compositionEndIndex:int):void;
}
}
