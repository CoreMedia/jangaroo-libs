package js {

[Native(global="ControlRangeCollection")]
public interface ControlRangeCollection {

  /**
   * Executes a command on the current document, current selection, or the given range.
   * <p>Do not invoke the execCommand method until after the page loads.</p>
   * <p>The <code>userInterface</code> and <code>value</code> parameters might be required depending on the command
   * being executed.</p>
   * <p>The following example shows how to use the CreateLink  constant as the sCommand of the execCommand method to
   * allow the user to create a hyperlink from selected text. The scriptMicrosoft JScript then retrieves the specified
   * URL and uses it to replace the selected text.</p>
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
   *   requires a value.</li>
   * <li><code>true</code> - Display a user interface if the command supports one.</li>
   * </ul>
   * @param value Variant that specifies the string, number, or other value to assign. Possible values depend on the
   *   command.
   * @return {Boolean} Returns true if the command is successful.
   */
  function execCommand(command:String, userInterface:Boolean = false, value:* = null):Boolean;

  /**
   * Adds an element to the areas, controlRange, or options  collection.
   * <p>New for Internet Explorer 8 Internet Explorer 8. In IE8 mode, oBefore  also accepts an Object that specifies
   * the object before which to insert the element. For more information, see Defining Document Compatibility.</p>
   * <p>Before you can add an element to a collection, you must create it first by using the createElement method.</p>
   * @param element
   * @param before specifies the index position in the collection where the element is placed. If no value is given,
   *   the method places the element at the end of the collection.
   */
  function add(element:Element, before:int = undefined):void;

  /**
   * Adds an element to the controlRange collection.
   * @param element the element to add to the collection
   */
  function addElement(element:Element):void;

  /**
   * Removes an element from the collection.
   * @param index zero-based index of the element to remove from the collection
   */
  function remove(index:int):void;

  /**
   * Retrieves an object from a controlRange collection.
   * @param index zero-based index of the object to get
   * @return an element object if successful, otherwise null.
   */
  function item(index:int):HTMLElement;

  /**
   * Returns a Boolean value that indicates whether a specified command can be successfully executed using execCommand,
   * given the current state of the document.
   * <p>Using queryCommandEnabled ("delete") on a TextRange object returns true, while queryCommandEnabled ("delete")
   * on a document object returns false. However, execCommand ("delete") can still be used to delete the selected text.</p>
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {Boolean} specifies one of the following values.
   * <ul>
   * <li><code>true</code> - The command is enabled.</li>
   * <li><code>false</code> - The command is disabled.</li>
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
   * <li><code>true</code> - The command is in the indeterminate state.</li>
   * <li><code>false</code> - The command is not in the indeterminate state.</li>
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
   * <li><code>true</code> - The given command has been executed on the object.</li>
   * <li><code>false</code> - The given command has not been executed on the object.</li>
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
   * <li><code>true</code> - The command is supported.</li>
   * <li><code>false</code> - The command is not supported.</li>
   * </ul>
   */
  function queryCommandSupported(cmdID:String):Boolean;

  /**
   * Retrieves the string associated with a command.
   *
   * @param cmdID specifies a command identifier. This can be any command identifier given in the list of
   *   <a href="http://msdn.microsoft.com/en-us/library/ms533049%28v=VS.85%29.aspx">Command Identifiers</a>.
   * @return {String} the text associated with the command.
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
   * requiring the user to manually scroll through the document to find the result.</p>
   * <p>Depending on the size of the given object and the current window, this method might not be able to put the item
   * at the very top or very bottom, but will position the object as close to the requested position as possible.</p>
   *
   * @param alignToTop specifies one of the following values:
   * <ul>
   * <li><code>true</code> - Default. Scrolls the object so that top of the object is visible at the top of the window.</li>
   * <li><code>false</code> - Scrolls the object so that the bottom of the object is visible at the bottom of the window.</li>
   * </ul>
   */
  function scrollIntoView(alignToTop:Boolean = true):void;

  /**
   * Makes the selection equal to the current object.
   * <p>When applied to a TextRange  object, the select method causes the current object to be highlighted.
   * The following function uses the findText  method to set the current object to the text in the TextRange object.
   * The function assumes an element that contains the text string "text here".</p>
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
   * </pre>
   */
  function select():void;
}
}