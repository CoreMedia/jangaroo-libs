package js {

/**
 * Documentation copied from http://msdn.microsoft.com/en-us/library/ms535872%28VS.85%29.aspx
 *
 * <p>There is no public standard that applies to this interface.
 */
public interface TextRange {


  /**
   *  Retrieves the height of the rectangle that bounds the TextRange object.
   */
  function get boundingHeight():int;

  /**
   * Retrieves the distance between the left edge of the rectangle that bounds the TextRange object and the left side
   * of the object that contains the TextRange.
   */
  function get boundingLeft():int;

  /**
   * Retrieves the distance between the top edge of the rectangle that bounds the TextRange object and the top side
   * of the object that contains the TextRange.
   */
  function get boundingTop():int;

  /**
   * Retrieves the width of the rectangle that bounds the TextRange object.
   */
  function get boundingWidth():int;

  /**
   * Retrieves the HTML source as a valid HTML fragment.
   */
  function get htmlText():String;

  /**
   * Retrieves the calculated left position of the object relative to the layout or coordinate parent, as specified by
   * the offsetParent property.
   */
  function get offsetLeft():int;

  /**
   * Retrieves the calculated top position of the object relative to the layout or coordinate parent, as specified by
   * the offsetParent property.
   */
  function get offsetTop():int;

  /**
   * Sets or retrieves the text contained within the range.
   */
  function get text():String;

  /**
   * Moves the insertion point to the beginning or end of the current range.
   *
   * @param start specifies one of the following values:
   *  true (default): moves the insertion point to the beginning of the text range,
   *  false: moves the insertion point to the end of the text range.
   */
  function collapse(start:Boolean = true):void;

  /**
   * Compares an end point of a TextRange object with an end point of another range.
   * <p> A text range has two end points. One end point is located at the beginning of the text range, and the other is
   * located at the end of the text range. An end point also can be characterized as the position between two characters
   * in an HTML document.
   * <p>As of Microsoft Internet Explorer 4.0, an end point is relative to text only, not HTML tags.
   * <p>There are four possible end points in the following HTML:
   * <pre>
   * &lt;BODY>&lt;P>&lt;B>abc
   * </pre>
   * The possible end points are:
   * <ul>
   * <li>Before the letter a.
   * <li>Between the letters a and b.
   * <li>Between the letters b and c.
   * <li>After the letter c.
   * </ul>
   * An end point cannot be established between the body and the p. Such an end point is considered to be located before
   * the letter a.
   *
   * @param type specifies one of the following values:
   * <ul>
   * <li><code>StartToEnd</code> - Compare the start of the TextRange object with the end of the oRange parameter.
   * <li><code>StartToStart</code> - Compare the start of the TextRange object with the start of the oRange parameter.
   * <li><code>EndToStart</code> - Compare the end of the TextRange object with the start of the oRange parameter.
   * <li><code>EndToEnd</code> - Compare the end of the TextRange object with the end of the oRange parameter.
   * </ul>
   * @param range TextRange object that specifies the range to compare with the object.
   * @return {int} one of the following possible values:
   * <ul>
   * <li><code>-1</code> - The end point of the object is further to the left than the end point of oRange.
   * <li><code>0</code> - The end point of the object is at the same location as the end point of oRange.
   * <li><code>1</code> - The end point of the object is further to the right than the end point of oRange.
   * </ul>
   * @see #setEndPoint
   */
  function compareEndPoints(type:String, range:TextRange):int;

  /**
   * Returns a duplicate of the TextRange.
   */
  function duplicate():TextRange;

  /**
   * Executes a command on the current document, current selection, or the given range.
   * <p>Do not invoke the execCommand method until after the page loads.
   * <p>The <code>userInterface</code> and <code>value</code> parameters might be required depending on the command
   * being executed.
   * <p>The following example shows how to use the CreateLink  constant as the sCommand of the execCommand method to
   * allow the user to create a hyperlink from selected text. The scriptMicrosoft JScript then retrieves the specified
   * URL and uses it to replace the selected text.
   * @example
   * <pre>
   * function addLink() {
   *     //identify selected text
   *     var sText = document.selection.createRange();
   *     if (sText.text != "") {
   *       //create link
   *       document.execCommand("CreateLink");
   *       //change the color to indicate success
   *       if (sText.parentElement().tagName == "A") {
   *         sText.execCommand("ForeColor",false,"#FF0033");
   *       }
   *     } else {
   *         alert("Please select some text!");
   *     }
   * }
   * </pre>
   *
   * @param command specifies the command to execute. This command can be any of the command identifiers that can be
   *   executed in script.
   * @param userInterface specifies one of the following values.
   * <ul>
   * <li><code>false</code> - Default. Do not display a user interface. Must be combined with vValue, if the command
   *   requires a value.
   * <li><code>true</code> - Display a user interface if the command supports one.
   * </ul>
   * @param value Variant that specifies the string, number, or other value to assign. Possible values depend on the
   *   command.
   * @return {Boolean} Returns true if the command is successful.
   */
  function execCommand(command:String, userInterface:Boolean = false, value:* = undefined):Boolean;

  /**
   * Expands the range so that partial units are completely contained.
   * @example
   * This example creates a range from the current selection and uses the expand  method to ensure that any word
   * partially enclosed in the range becomes entirely enclosed in the range.
   * <pre>
   * var rng = document.selection.createRange();
   * rng.expand("word");
   * </pre>
   *
   * @param unit specifies the units to move in the range, using one one of the following values:
   * <ul>
   * <li><code>character</code> - Expands a character.
   * <li><code>word</code> - Expands a word. A word is a collection of characters terminated by a space or another
   *   white-space character, such as a tab.
   * <li><code>sentence</code> - Expands a sentence. A sentence is a collection of words terminated by an ending
   *   punctuation character, such as a period.
   * <li><code>textedit</code> - Expands to enclose the entire range.
   * </ul>
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>false</code> - The range was successfully expanded.
   * <li><code>true</code> - The range was not expanded.
   * </ul>
   */
  function expand(unit:String):void;

  /**
   * Searches for text in the document and positions the start and end points of the range to encompass the search
   * string.
   * <p>A range has two distinct states: degenerate and nondegenerate.
   * <p>A degenerate range is like a text editor caret (insertion point) —it does not actually select any characters.
   * Instead, it specifies a point between two characters. The end points of a degenerate range are adjacent.
   * <p>A nondegenerate range is like a text editor selection, in that it selects a certain amount of text. The end
   * points of a nondegenerate range are not adjacent.
   * <p>The value passed for the iSearchScope parameter controls the part of the document, relative to the range, that
   * is searched. The behavior of the findText method depends on whether the state is degenerate or nondegenerate:
   * <ul>
   * <li>If the range is degenerate, passing a large positive number causes the text to the right of the range to be
   *   searched. Passing a large negative number causes the text to the left of the range to be searched.
   * <li>If the range is nondegenerate, passing a large positive number causes the text to the right of the start of
   *   the range to be searched. Passing a large negative number causes the text to the left of the end of the range
   *   to be searched. Passing 0 causes only the text selected by the range to be searched.
   * </ul>
   * A text range is not modified if the text specified for the findText method is not found.
   *
   * @param text specifies the text to find.
   * @param searchScope specifies the number of characters to search from the starting point of the range.
   *   A positive integer indicates a forward search; a negative integer indicates a backward search.
   * @param flags specifies one or more of the following flags to indicate the type of search:
   * <ul>
   * <li>0 - Default. Match partial words.
   * <li>1 - Match in reverse.
   * <li>2 - Match whole words only.
   * <li>4 - Match case.
   * <li>0x20000 - Match bytes.
   * <li>0x20000000 - Match diacritical marks.
   * <li>0x40000000 - Match Kashida character.
   * <li>0x80000000 - Match AlefHamza character.
   * </ul>
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The search text was found.
   * <li><code>false</code> - The search text was not found.
   * </ul>
   */
  function findText(text:String, searchScope:int = undefined, flags:int = undefined):void;

  /**
   * Retrieves a bookmark (opaque string) that can be used with moveToBookmark to return to the same range.
   *
   * @return {String} the bookmark if successfully retrieved, or null otherwise.
   */
  function getBookmark():String;

  /**
   * Retrieves an object that specifies the bounds of a collection of TextRectangle objects.
   * <p>This method retrieves an object that exposes the left, top, right, and bottom coordinates of the union of
   * rectangles relative to the client's upper-left corner. In Microsoft Internet Explorer 5, the window's upper-left
   * is at 2,2 (pixels) with respect to the true client.
   *
   * @return {Object} Returns a TextRectangle object. Each rectangle has four integer properties (top, left, right, and bottom)
   *   that represent a coordinate of the rectangle, in pixels.
   */
  function getBoundingClientRect():Object;

  /**
   * Retrieves a collection of rectangles that describes the layout of the contents of an object or range within
   * the client. Each rectangle describes a single line.
   * @return Returns the TextRectangle  collection. Each rectangle has four integer properties (top, left, right, and
   *   bottom) that each represent a coordinate of the rectangle, in pixels.
   */
  function getClientRects():Object;

  /**
   * Returns a value indicating whether one range is contained within another.
   *
   * @param range TextRange object that might be contained.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - range is contained within or is equal to the TextRange object on which the method is called.
   * <li><code>false</code> - range is not contained within the TextRange object on which the method is called.
   * </ul>
   */
  function inRange(range:TextRange):Boolean;

  /**
   * Returns a value indicating whether the specified range is equal to the current range.
   *
   * @param compareRange TextRange object to compare with the current TextRange object.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - compareRange is equal to the parent object.
   * <li><code>false</code> - compareRange is not equal to the parent object.
   * </ul>
   */
  function isEqual(compareRange:TextRange):Boolean;

  /**
   * Collapses the given text range and moves the empty range by the given number of units.
   *
   * @param unit specifies the units to move, using one of the following values:
   * <ul>
   * <li><code>character</code> - Moves one or more characters.
   * <li><code>word</code> - Moves one or more words. A word is a collection of characters terminated by a space or
   *   some other white-space character, such as a tab.
   * <li><code>sentence</code> - Moves one or more sentences. A sentence is a collection of words terminated by a
   *   punctuation character, such as a period.
   * <li><code>textedit</code> - Moves to the start or end of the original range.
   * </ul>
   * @param count specifies the number of units to move. This can be positive or negative. The default is 1.
   * @return {int} Integer that returns the number of units moved.
   */
  function move(unit:String, count:int = undefined):void;

  /**
   * Changes the end position of the range.
   *
   *     sUnit    Required. String that specifies the units to move, using one of the following values:
   * @param unit specifies the units to move, using one of the following values:
   * <ul>
   * <li><code>character</code> - Moves one or more characters.
   * <li><code>word</code> - Moves one or more words. A word is a collection of characters terminated by a space or
   *   some other white-space character, such as a tab.
   * <li><code>sentence</code> - Moves one or more sentences. A sentence is a collection of words terminated by a
   *   punctuation character, such as a period.
   * <li><code>textedit</code> - Moves to the start or end of the original range.
   * </ul>
   * @param count specifies the number of units to move. This can be positive or negative. The default is 1.
   * @return {int} Integer that returns the number of units moved.
   */
  function moveEnd(unit:String, count:int = undefined):void;

  /**
   * Changes the start position of the range.
   *
   *     sUnit    Required. String that specifies the units to move, using one of the following values:
   * @param unit specifies the units to move, using one of the following values:
   * <ul>
   * <li><code>character</code> - Moves one or more characters.
   * <li><code>word</code> - Moves one or more words. A word is a collection of characters terminated by a space or
   *   some other white-space character, such as a tab.
   * <li><code>sentence</code> - Moves one or more sentences. A sentence is a collection of words terminated by a
   *   punctuation character, such as a period.
   * <li><code>textedit</code> - Moves to the start or end of the original range.
   * </ul>
   * @param count specifies the number of units to move. This can be positive or negative. The default is 1.
   * @return {int} Integer that returns the number of units moved.
   */
  function moveStart(unit:String, count:int = undefined):void;

  /**
   * Moves to a bookmark.
   * <p>Bookmarks are opaque strings created with the getBookmark method.
   *
   * @param bookmark specifies the bookmark to move to.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - Successfully moved to the bookmark.
   * <li><code>false</code> - Move to the bookmark failed.
   * </ul>
   */
  function moveToBookmark(bookmark:String):void;

  /**
   * Moves the text range so that the start and end positions of the range encompass the text in the given element.
   *
   * @param element specifies the element object to move to.
   */
  function moveToElementText(element:Element):void;

  /**
   * Moves the start and end positions of the text range to the given point.
   *
   * <p>The coordinates of the point must be in pixels and be relative to the upper-left corner of the window.
   * The resulting text range is empty, but you can expand and move the range using methods such as expand and moveEnd.
   *
   * @param x specifies the horizontal offset relative to the upper-left corner of the window, in pixels.
   * @param y specifies the vertical offset relative to the upper-left corner of the window, in pixels.
   */
  function moveToPoint(x:int, y:int):void;

  /**
   * Retrieves the parent element for the given text range.
   * <p>The parent element is the element that completely encloses the text in the range.
   * <p>If the text range spans text in more than one element, this method returns the smallest element that encloses
   * all the elements. When you insert text into a range that spans multiple elements, the text is placed in the parent
   * element rather than in any of the contained elements.
   * <p>This feature might not be available on non-Microsoft Win32 platforms.
   *
   * @return the parent element object if successful, or null  otherwise.
   */
  function parentElement():Element;

  /**
   * Pastes HTML text into the given text range, replacing any previous text and HTML elements in the range.
   * <p>This method might alter the HTML text to make it fit the given text range. For example, pasting a table cell
   * into a text range that does not contain a table might cause the method to insert a table element. For predictable
   * results, paste only well-formed HTML text that fits within the given text range.
   * <p>This method fails only when used inappropriately to paste HTML into a TEXTAREA element in Microsoft Internet
   * Explorer 5 and later.
   * <p>This method is accessible at run time. If elements are removed at run time, before the closing tag is parsed,
   * areas of the document might not render.
   *
   * @param htmlText specifies the HTML text to paste. The string can contain text and any combination of the HTML tags
   *   described in HTML Elements.
   */
  function pasteHTML(htmlText:String):void;

  /**
   * Returns a Boolean value that indicates whether a specified command can be successfully executed using execCommand,
   * given the current state of the document.
   * <p>Using queryCommandEnabled ("delete") on a TextRange object returns true, while queryCommandEnabled ("delete")
   * on a document object returns false. However, execCommand ("delete") can still be used to delete the selected text.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The command is enabled.
   * <li><code>false</code> - The command is disabled.
   * </ul>
   */
  function queryCommandEnabled(cmdID:String):Boolean;

  /**
   * Returns a Boolean value that indicates whether the specified command is in the indeterminate state.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The command is in the indeterminate state.
   * <li><code>false</code> - The command is not in the indeterminate state.
   * </ul>
   */
  function queryCommandIndeterm(cmdID:String):Boolean;

  /**
   * Returns a Boolean value that indicates the current state of the command.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The given command has been executed on the object.
   * <li><code>false</code> - The given command has not been executed on the object.
   * </ul>
   */
  function queryCommandState(cmdID:String):Boolean;

  /**
   * Returns a Boolean value that indicates whether the current command is supported on the current range.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The command is supported.
   * <li><code>false</code> - The command is not supported.
   * </ul>
   */
  function queryCommandSupported(cmdID:String):Boolean;

  /**
   * Retrieves the string associated with a command.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {String} the text associated with the command.
   * </ul>
   */
  function queryCommandText(cmdID:String):String;

  /**
   * Returns the current value of the document, range, or current selection for the given command.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return the command value for the document, range, or current selection, if supported. Possible values depend on
   *   <code>cmdID</code>. If not supported, this method returns <code>false</code>.
   */
  function queryCommandValue(cmdID:String):*;

  /**
   * Causes the object to scroll into view, aligning it either at the top or bottom of the window.
   * <p>The scrollIntoView method is useful for immediately showing the user the result of some action without
   * requiring the user to manually scroll through the document to find the result.
   * <p>Depending on the size of the given object and the current window, this method might not be able to put the item
   * at the very top or very bottom, but will position the object as close to the requested position as possible.
   *
   * @param alignToTop specifies one of the following values:
   * <ul>
   * <li><code>true</code> - Default. Scrolls the object so that top of the object is visible at the top of the window.
   * <li><code>false</code> - Scrolls the object so that the bottom of the object is visible at the bottom of the window.
   * </ul>
   */
  function scrollIntoView(alignToTop:Boolean = true):void;

  /**
   * Makes the selection equal to the current object.
   * <p>When applied to a TextRange  object, the select method causes the current object to be highlighted.
   * The following function uses the findText  method to set the current object to the text in the TextRange object.
   * The function assumes an element that contains the text string "text here".
   * <pre>
   * function TextRangeSelect() {
   *   var r = document.body.createTextRange();
   *   r.findText("text here");
   *   r.select();
   * }
   * </pre>
   * When applied to a controlRange collection, the select method produces a shaded rectangle around the elements in
   * the controlRange. The following function uses the add method to set the current object to an element in the
   * controlRange collection. The function assumes an element with an id of "aaa".
   * <pre>
   * function ControlRangeSelect() {
   *   var r = document.body.createControlRange();
   *   r.add(document.all.aaa);
   *   r.select();
   * }
   */
  function select():void;

  /**
   * Sets the endpoint of one range based on the endpoint of another range.
   * <p> A text range has two end points. One end point is located at the beginning of the text range, and the other is
   * located at the end of the text range. An end point also can be characterized as the position between two characters
   * in an HTML document.
   * <p>As of Microsoft Internet Explorer 4.0, an end point is relative to text only, not HTML tags.
   * <p>There are four possible end points in the following HTML:
   * <pre>
   * &lt;BODY>&lt;P>&lt;B>abc
   * </pre>
   * The possible end points are:
   * <ul>
   * <li>Before the letter a.
   * <li>Between the letters a and b.
   * <li>Between the letters b and c.
   * <li>After the letter c.
   * </ul>
   * An end point cannot be established between the body and the p. Such an end point is considered to be located before
   * the letter a.
   *
   * @param type specifies the endpoint to transfer using one of the following values.
   * <ul>
   * <li><code>StartToEnd</code> - Compare the start of the TextRange object with the end of the oRange parameter.
   * <li><code>StartToStart</code> - Compare the start of the TextRange object with the start of the oRange parameter.
   * <li><code>EndToStart</code> - Compare the end of the TextRange object with the start of the oRange parameter.
   * <li><code>EndToEnd</code> - Compare the end of the TextRange object with the end of the oRange parameter.
   * </ul>
   * @param textRange TextRange object from which the source endpoint is to be taken.
   */
  function setEndPoint(type:String, textRange:TextRange):void;

}
}