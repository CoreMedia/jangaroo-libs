package flashx.textLayout.edit {
import flash.events.Event;

import flashx.textLayout.elements.FlowElement;
import flashx.textLayout.formats.ITextLayoutFormat;
import flashx.textLayout.operations.FlowOperation;
import flashx.undo.IUndoManager;

/**
 * The EditManager class manages editing changes to a TextFlow.
 * <p>To enable text flow editing, assign an EditManager object to the <code>interactionManager</code> property of the TextFlow object. The edit manager handles changes to the text (such as insertions, deletions, and format changes). Changes are reversible if the edit manager has an undo manager. The edit manager triggers the recomposition and display of the text flow, as necessary.</p>
 * <p>The EditManager class supports the following keyboard shortcuts:</p>
 * <table>
 * <tr><th>Keys</th><th>Result</th></tr>
 * <tr>
 * <td>ctrl-z</td>
 * <td>undo</td></tr>
 * <tr>
 * <td>ctrl-y</td>
 * <td>redo</td></tr>
 * <tr>
 * <td>ctrl-backspace</td>
 * <td>deletePreviousWord</td></tr>
 * <tr>
 * <td>ctrl-delete</td>
 * <td>deleteNextWord</td></tr>
 * <tr>
 * <td>alt+delete</td>
 * <td>deleteNextWord</td></tr>
 * <tr>
 * <td>ctrl+alt-delete</td>
 * <td>deleteNextWord</td></tr>
 * <tr>
 * <td>ctrl-shift-hyphen</td>
 * <td>insert discretionary hyphen</td></tr>
 * <tr>
 * <td>ctrl+backspace</td>
 * <td>deletePreviousWord</td></tr>
 * <tr>
 * <td>alt+backspace</td>
 * <td>deletePreviousWord</td></tr>
 * <tr>
 * <td>ctrl+alt-backspace</td>
 * <td>deletePreviousWord</td></tr>
 * <tr>
 * <td>INSERT</td>
 * <td>toggles overWriteMode</td></tr>
 * <tr>
 * <td>backspace</td>
 * <td>deletePreviousCharacter</td></tr>
 * <tr>
 * <td>ENTER</td>
 * <td>if textFlow.configuration.manageEnterKey splitParagraph</td></tr>
 * <tr>
 * <td>TAB</td>
 * <td>if textFlow.configuration.manageTabKey insert a TAB or overwrite next character with a TAB</td></tr></table>
 * <p><b>Note:</b> The following keys do not work on Windows: alt-backspace, alt-delete, ctrl+alt-backspace, and ctrl+alt-delete. These keys do not generate an event for the runtime.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/EditManager.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.TextFlow
 * @see flashx.undo.UndoManager
 *
 */
public class EditManager extends SelectionManager implements IEditManager {
  /**
   * Indicates whether overwrite mode is on or off.
   * <p>If <code>true</code>, then a keystroke overwrites the character following the cursor. If <code>false</code>, then a keystroke is inserted at the cursor location.</p>
   */
  public static var overwriteMode:Boolean = false;

  /**
   * The IUndoManager assigned to this edit manager.
   * <p>To allow edits to be undone (and redone), pass an IUndoManager instance to the EditManager constructor. The undo manager maintains a stack of operations that have been executed, and it can undo or redo individual operations.</p>
   * <p><b>Note:</b> If the TextFlow is modified directly (not via calls to the EditManager, but directly via calls to the managed FlowElement objects), then the EditManager clears the undo stack to prevent the stack from getting out of sync with the current state.</p>
   */
  public function get undoManager():IUndoManager {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an EditManager object.
   * <p>Assign an EditManager object to the <code>interactionManager</code> property of a text flow to enable editing of that text flow.</p>
   * <p>To enable support for undoing and redoing changes, pass an IUndoManager instance to the EditManager constructor. You can use the <code>flashx.undo.UndoManager</code> class or create a custom IUndoManager instance. Use a custom IUndoManager instance to integrate Text Layout Framework changes with an existing undo manager that is not an instance of the UndoManager class. To create a custom IUndoManager instance, ensure that the class you use to define the undo manager implements the IUndoManager interface.</p>
   * @param undoManager The UndoManager for the application
   *
   * @see flashx.textLayout.elements.TextFlow#interactionManager
   * @see flashx.undo.IUndoManager
   *
   * @example The following example creates an EditManager object for a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_constructor
   *     {
   *         // Create a new TextFlow that is editable and undoable.
   *         static public function createEditableTextFlow():TextFlow
   *         {
   *              var textFlow:TextFlow = new TextFlow();
   *              textFlow.interactionManager = new EditManager( new UndoManager() );
   *              return textFlow;
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function EditManager(undoManager:IUndoManager = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Applies container styles to any containers in the selection.
   * <p>Any style properties in the format object that are <code>null</code> are left unchanged.</p>
   * @param containerFormat the format to apply to the containers in the range
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example changes the format of the containers holding a selection to display two columns:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.formats.TextLayoutFormat;
   *
   *     public class EditManager_applyContainerFormat
   *     {
   *         public function EditManager_applyContainerFormat( selection:SelectionState ):void
   *          {
   *              var textFlow:TextFlow = selection.textFlow;
   *              var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              var containerStyle:TextLayoutFormat = new TextLayoutFormat();
   *              containerStyle.columnCount = 2;
   *
   *              editManager.applyContainerFormat( containerStyle );
   *          }
   *     }
   * }
   * </listing>
   */
  public function applyContainerFormat(containerFormat:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Changes the formats of the specified (or current) selection.
   * <p>Executes an undoable operation that applies the new formats. Only style attributes set for the TextLayoutFormat objects are applied. Undefined attributes in the format objects are not changed.</p>
   * @param leafFormat the format to apply to leaf elements such as spans and inline graphics
   * @param paragraphFormat format to apply to paragraph elements
   * @param containerFormat format to apply to the containers
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example applies a container, paragraph, and a character format to a selection.
   * <listing>
   *
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.formats.TextAlign;
   *     import flashx.textLayout.formats.TextLayoutFormat;
   *
   *     public class EditManager_applyFormat
   *     {
   *         public function EditManager_applyFormat( selection:SelectionState ):void
   *         {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *             var containerStyle:TextLayoutFormat = new TextLayoutFormat();
   *             containerStyle.columnCount = 2;
   *
   *             var paraStyle:TextLayoutFormat = new TextLayoutFormat();
   *             paraStyle.textAlign = TextAlign.JUSTIFY;
   *
   *             var charStyle:TextLayoutFormat = new TextLayoutFormat();
   *             charStyle.color = 0xff0000;
   *
   *             editManager.applyFormat( charStyle, paraStyle, containerStyle );
   *         }
   *     }
   * }
   * </listing>
   */
  public function applyFormat(leafFormat:ITextLayoutFormat, paragraphFormat:ITextLayoutFormat, containerFormat:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Applies styles to the specified element.
   * <p>Any style properties in the format object that are <code>null</code> are left unchanged. Only styles that are relevant to the specified element are applied.</p>
   * @param targetElement the element to which the styles are applied.
   * @param format the format containing the styles to apply
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   */
  public function applyFormatToElement(targetElement:FlowElement, format:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Changes the format applied to the leaf elements in the specified (or current) selection.
   * <p>Executes an undoable operation that applies the new format to leaf elements such as SpanElement and InlineGraphicElement objects. Only style attributes set for the TextLayoutFormat objects are applied. Undefined attributes in the format object are changed.</p>
   * @param characterFormat the format to apply.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example changes the color of text in a selection to red.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.formats.TextLayoutFormat;
   *
   *     public class EditManager_applyLeafFormat
   *     {
   *         public function EditManager_applyLeafFormat(selection:SelectionState)
   *         {
   *              var textFlow:TextFlow = selection.textFlow;
   *              var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              var charStyle:TextLayoutFormat = new TextLayoutFormat();
   *              charStyle.color = 0xff0000;
   *
   *              editManager.applyLeafFormat( charStyle );
   *         }
   *     }
   * }
   * </listing>
   */
  public function applyLeafFormat(characterFormat:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Transforms a selection into a link, or a link into normal text.
   * <p>Executes an undoable operation that creates or removes the link.</p>
   * <p>If a <code>target</code> parameter is specified, it must be one of the following values:</p>
   * <ul>
   * <li>"_self"</li>
   * <li>"_blank"</li>
   * <li>"_parent"</li>
   * <li>"_top"</li></ul>
   * <p>In browser-hosted runtimes, a target of "_self" replaces the current html page. So, if the SWF content containing the link is in a page within a frame or frameset, the linked content loads within that frame. If the page is at the top level, the linked content opens to replace the original page. A target of "_blank" opens a new browser window with no name. A target of "_parent" replaces the parent of the html page containing the SWF content. A target of "_top" replaces the top-level page in the current browser window.</p>
   * <p>In other runtimes, such as Adobe AIR, the link opens in the user's default browser and the <code>target</code> parameter is ignored.</p>
   * <p>The <code>extendToLinkBoundary</code> parameter determines how the edit manager treats a selection that intersects with one or more existing links. If the parameter is <code>true</code>, then the operation is applied as a unit to the selection and the whole text of the existing links. Thus, a single link is created that spans from the beginning of the first link intersected to the end of the last link intersected. In contrast, if <code>extendToLinkBoundary</code> were <code>false</code> in this situation, the existing partially selected links would be split into two links.</p>
   * @param href The uri referenced by the link.
   * @param targetString The target browser window of the link.
   * @param extendToLinkBoundary Specifies whether to consolidate selection with any overlapping existing links, and then apply the change.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example defines two functions. The first transforms a selection into a link. The second removes the URL from a link.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_applyLink
   *     {
   *
   *         static public function makeLink( selection:SelectionState ):void
   *          {
   *              var textFlow:TextFlow = selection.textFlow;
   *              var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              editManager.applyLink( "http://www.adobe.com" );
   *          }
   *
   *         static public function removeLink( selection:SelectionState ):void
   *          {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *             editManager.applyLink( null, null, true );
   *          }
   *     }
   * }
   * </listing>
   */
  public function applyLink(href:String, targetString:String = null, extendToLinkBoundary:Boolean = false, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Applies paragraph styles to any paragraphs in the selection.
   * <p>Any style properties in the format object that are <code>null</code> are left unchanged.</p>
   * @param paragraphFormat the format to apply to the selected paragraphs.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example defines a function to change the format of any paragraphs included in a current selection to justify the text.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.formats.TextAlign;
   *     import flashx.textLayout.formats.TextLayoutFormat;
   *
   *     public class EditManager_applyParagraphFormat
   *     {
   *         static public function justifyParagraph( selection:SelectionState ):void
   *          {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              var paraStyle:TextLayoutFormat = new TextLayoutFormat();
   *              paraStyle.textAlign = TextAlign.JUSTIFY;
   *
   *              editManager.applyParagraphFormat( paraStyle );
   *          }
   *     }
   * }
   * </listing>
   */
  public function applyParagraphFormat(paragraphFormat:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Transforms text into a TCY run, or a TCY run into non-TCY text.
   * <p>TCY, or tate-chu-yoko, causes text to draw horizontally within a vertical line, and is used to make small blocks of non-Japanese text or numbers, such as dates, more readable in vertical text.</p>
   * @param tcyOn specify <code>true</code> to apply TCY to a text range, <code>false</code> to remove TCY.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example defines two functions. The first applies TCY formatting to the current selection. The second removes TCY formatting.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_applyTCY
   *     {
   *         static public function tcyOn( selection:SelectionState ):void
   *          {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              editManager.applyTCY( true );
   *          }
   *
   *         static public function tcyOff( selection:SelectionState ):void
   *          {
   *
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *
   *              editManager.applyTCY( false );
   *          }
   *     }
   * }
   * </listing>
   */
  public function applyTCY(tcyOn:Boolean, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Begins a new group of operations.
   * <p>All operations executed after the call to <code>beginCompositeOperation()</code>, and before the matching call to <code>endCompositeOperation()</code> are executed and grouped together as a single operation that can be undone as a unit.</p>
   * <p>A <code>beginCompositeOperation</code>/<code>endCompositeOperation</code> block can be nested inside another <code>beginCompositeOperation</code>/<code>endCompositeOperation</code> block.</p>
   * @example The following example defines a function that inserts a graphic object in its own paragraph. If the <code>beginCompositeOperation()</code> and <code>endCompositeOperation()</code> functions were not used, then each of the suboperations would have to be undone separately rather than as a group.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_beginCompositeOperation
   *     {
   *         static public function insertGraphic( source:Object, width:Object, height:Object, float:String, selection:SelectionState ):void
   *         {
   *             var editManager:IEditManager = selection.textFlow.interactionManager as IEditManager;
   *
   *             editManager.beginCompositeOperation();
   *
   *             editManager.deleteText( selection );
   *             var changedSelection:SelectionState =
   *                 new SelectionState( selection.textFlow, selection.anchorPosition, selection.anchorPosition );
   *             editManager.splitParagraph( changedSelection );
   *             changedSelection =
   *                 new SelectionState( changedSelection.textFlow, changedSelection.anchorPosition + 1, changedSelection.anchorPosition + 1);
   *             editManager.insertInlineGraphic( source, width, height, float, changedSelection );
   *             changedSelection =
   *                 new SelectionState( changedSelection.textFlow, changedSelection.anchorPosition + 1, changedSelection.anchorPosition + 1);
   *             editManager.splitParagraph( changedSelection );
   *
   *             editManager.endCompositeOperation();
   *         }
   *     }
   * }
   * </listing>
   */
  public function beginCompositeOperation():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Changes the ID of an element.
   * <p>If the <code>relativeStart</code> or <code>relativeEnd</code> parameters are set (to anything other than the default values), then the element is split. The parts of the element outside this range retain the original ID. Setting both the <code>relativeStart</code> and <code>relativeEnd</code> parameters creates elements with duplicate IDs.</p>
   * @param newID the new ID value
   * @param targetElement the element to modify
   * @param relativeStart an offset from the beginning of the element at which to split the element when assigning the new ID
   * @param relativeEnd an offset from the end of the element at which to split the element when assigning the new ID
   * @param operationState specifies the selection to restore when undoing this operation; if <code>null</code>, the operation saves the current selection.
   *
   * @example The following example defines a function that changes the ID of the first paragraph in a selection:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.ElementRange;
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_changeElementID
   *     {
   *         static public function changeParagraphID( id:String, selection:SelectionState ):void
   *          {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *             var selectedRange:ElementRange = ElementRange.createElementRange( selection.textFlow, selection.absoluteStart, selection.absoluteEnd );
   *
   *             editManager.changeElementID( id, selectedRange.firstParagraph, 0, -1, selection );
   *          }
   *     }
   * }
   *
   *
   * </listing>
   */
  public function changeElementID(newID:String, targetElement:FlowElement, relativeStart:int = 0, relativeEnd:int = -1, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Changes the styleName of an element or part of an element.
   * <p>If the <code>relativeStart</code> or <code>relativeEnd</code> parameters are set (to anything other than the default values), then the element is split. The parts of the element outside this range retain the original style.</p>
   * @param newName the name of the new style.
   * @param targetElement specifies the element to change.
   * @param relativeStart an offset from the beginning of the element at which to split the element when assigning the new style
   * @param relativeEnd an offset from the end of the element at which to split the element when assigning the new style
   * @param operationState specifies the selection to restore when undoing this operation; if <code>null</code>, the operation saves the current selection.
   *
   * @example The following example defines a functions that changes the style name of the first paragraph in a selection:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.ElementRange;
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_changeStyleName
   *     {
   *         static public function changeParagraphStyle( styleName:String, selection:SelectionState ):void
   *         {
   *             var textFlow:TextFlow = selection.textFlow;
   *             var editManager:IEditManager = textFlow.interactionManager as IEditManager;
   *             var selectedRange:ElementRange = ElementRange.createElementRange( selection.textFlow, selection.absoluteStart, selection.absoluteEnd );
   *
   *             editManager.changeElementID( styleName, selectedRange.firstParagraph, 0, -1, selection );
   *         }
   *     }
   * }
   * </listing>
   */
  public function changeStyleName(newName:String, targetElement:FlowElement, relativeStart:int = 0, relativeEnd:int = -1, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Undefines formats of the specified (or current) selection.
   * <p>Executes an undoable operation that undefines the specified formats. Only style attributes set for the TextLayoutFormat objects are applied. Undefined attributes in the format objects are not changed.</p>
   * @param leafFormat The format whose set values indicate properties to undefine to LeafFlowElement objects in the selected range.
   * @param paragraphFormat The format whose set values indicate properties to undefine to ParagraphElement objects in the selected range.
   * @param containerFormat The format whose set values indicate properties to undefine to ContainerController objects in the selected range.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   */
  public function clearFormat(leafFormat:ITextLayoutFormat, paragraphFormat:ITextLayoutFormat, containerFormat:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Undefines styles to the specified element.
   * <p>Any style properties in the format object that are <code>undefined</code> are left unchanged. Any styles that are defined in the specififed format are undefined on the specified element.</p>
   * @param targetElement the element to which the styles are applied.
   * @param format the format containing the styles to undefine
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   */
  public function clearFormatOnElement(targetElement:FlowElement, format:ITextLayoutFormat, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes the selected area and returns the deleted area in a TextScrap object.
   * <p>The resulting TextScrap can be posted to the system clipboard or used in a subsequent <code>pasteTextOperation()</code> operation.</p>
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @return the TextScrap that was cut
   *
   * @see TextScrap
   *
   * @example The following example creates a selection in a text flow cuts the selected range and creates a TextScrap object containing the deleted content.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.edit.TextScrap;
   *     import flashx.undo.UndoManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_cutTextScrap
   *     {
   *         static public function cutTextScrap():TextScrap
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How do now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( new Sprite() ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 4, 7 );
   *             var scrap:TextScrap = editManager.cutTextScrap(); //Displays: How now brown cow.
   *             return scrap;
   *         }
   *     }
   * }
   * </listing>
   */
  public function cutTextScrap(operationState:SelectionState = null):TextScrap {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes a range of text, or, if a point selection is given, deletes the next character.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates a point selection in a text flow and deletes the next character.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_deleteNextCharacter
   *     {
   *         static public function deleteNextCharacter():void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How now brown crow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( new Sprite() ));
   *             var editManager:EditManager = new EditManager();
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 15, 15 );
   *             editManager.deleteNextCharacter(); //displays: How now brown cow.
   *         }
   *     }
   * }
   * </listing>
   */
  public function deleteNextCharacter(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes the next word.
   * <p>If a range is selected, the first word of the range is deleted.</p>
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates a point selection in a text flow and deletes the next word.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_deleteNextWord
   *     {
   *         static public function deleteNextWord():void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How do now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( new Sprite() ));
   *             var editManager:EditManager = new EditManager();
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 3, 3 );
   *             editManager.deleteNextWord(); //displays: How now brown cow.
   *         }
   *     }
   * }
   * </listing>
   */
  public function deleteNextWord(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes a range of text, or, if a point selection is given, deletes the previous character.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates a point selection in a text flow and deletes the previous character.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_deletePreviousCharacter
   *     {
   *
   *         static public function deletePreviousCharacter():void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How now brown crow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( new Sprite() ));
   *             var editManager:EditManager = new EditManager();
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 16, 16 );
   *             editManager.deletePreviousCharacter(); //displays: How now brown cow.
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function deletePreviousCharacter(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes the previous word.
   * <p>If a range is selected, the first word of the range is deleted.</p>
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates a point selection in a text flow and deletes the previous word.
   * <listing>
   * var textFlow:TextFlow = TextConverter.importToFlow( "How do now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   * textFlow.flowComposer = new StandardFlowComposer();
   * textFlow.flowComposer.addController( new ContainerController( this ));
   * var editManager:EditManager = new EditManager( new UndoManager() );
   * textFlow.interactionManager = editManager;
   * textFlow.flowComposer.updateAllControllers();
   *
   * editManager.setSelection( 7, 7 );
   * editManager.deletePreviousWord(); //displays: How now brown cow.
   *
   * </listing>
   */
  public function deletePreviousWord(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Deletes a range of text.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates a range selection in a text flow and deletes the selected characters.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_deleteText
   *     {
   *         static public function deleteText():void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How do now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( new Sprite() ));
   *             var editManager:EditManager = new EditManager();
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 4, 7 );
   *             editManager.deleteText(); //displays: How now brown cow.
   *         }
   *     }
   * }
   * </listing>
   */
  public function deleteText(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Executes a FlowOperation.
   * <p>The <code>doOperation()</code> method is called by IEditManager functions that update the text flow. You do not typically need to call this function directly unless you create your own custom operations.</p>
   * <p>This function proceeds in the following steps:</p><ol>
   * <li>Flush any pending operations before performing this operation.</li>
   * <li>Send a cancelable flowOperationBegin event. If canceled this method returns immediately.</li>
   * <li>Execute the operation. The operation returns <code>true</code> or <code>false</code>. <code>False</code> indicates that no changes were made.</li>
   * <li>Push the operation onto the undo stack.</li>
   * <li>Clear the redo stack.</li>
   * <li>Update the display.</li>
   * <li>Send a cancelable flowOperationEnd event.</li></ol>
   * <p>Exception handling: If the operation throws an exception, it is caught and the error is attached to the flowOperationEnd event. If the event is not canceled the error is rethrown.</p>
   * @param operation a FlowOperation object
   *
   * @example The following example creates and executes an InsertTextOperation:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.operations.InsertTextOperation;
   *
   *     public class EditManager_doOperation
   *     {
   *         static public function doOperation(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager();
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             var selectionState:SelectionState = new SelectionState(textFlow, 4, 4);
   *             var insertOperation:InsertTextOperation = new InsertTextOperation( selectionState, "now " );
   *             editManager.doOperation( insertOperation );        // displays: How now brown cow
   *         }
   *     }
   * }
   *
   * </listing>
   */
  override public function doOperation(operation:FlowOperation):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @param event <code>event:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/Event.html">Event</a></code>
   *
   */
  override public function editHandler(event:Event):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Ends a group of operations.
   * <p>All operations executed since the last call to <code>beginCompositeOperation()</code> are grouped as a CompositeOperation that is then completed. This CompositeOperation object is added to the undo stack or, if this composite operation is nested inside another composite operation, added to the parent operation.</p>
   * @example The following example defines a function that inserts a graphic object in its own paragraph. If the <code>beginCompositeOperation()</code> and <code>endCompositeOperation()</code> functions were not used, then each of the suboperations would have to be undone separately rather than as a group.
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.edit.SelectionState;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_beginCompositeOperation
   *     {
   *         static public function insertGraphic( source:Object, width:Object, height:Object, float:String, selection:SelectionState ):void
   *         {
   *             var editManager:IEditManager = selection.textFlow.interactionManager as IEditManager;
   *
   *             editManager.beginCompositeOperation();
   *
   *             editManager.deleteText( selection );
   *             var changedSelection:SelectionState =
   *                 new SelectionState( selection.textFlow, selection.anchorPosition, selection.anchorPosition );
   *             editManager.splitParagraph( changedSelection );
   *             changedSelection =
   *                 new SelectionState( changedSelection.textFlow, changedSelection.anchorPosition + 1, changedSelection.anchorPosition + 1);
   *             editManager.insertInlineGraphic( source, width, height, float, changedSelection );
   *             changedSelection =
   *                 new SelectionState( changedSelection.textFlow, changedSelection.anchorPosition + 1, changedSelection.anchorPosition + 1);
   *             editManager.splitParagraph( changedSelection );
   *
   *             editManager.endCompositeOperation();
   *         }
   *     }
   * }
   * </listing>
   */
  public function endCompositeOperation():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Inserts an image.
   * <p>The source of the image can be a string containing a URI, URLRequest object, a Class object representing an embedded asset, or a DisplayObject instance.</p>
   * <p>The width and height values can be the number of pixels, a percent, or the string, 'auto', in which case the actual dimension of the graphic is used.</p>
   * <p>Set the <code>float</code> to one of the constants defined in the Float class to specify whether the image should be displayed to the left or right of any text or inline with the text.</p>
   * @param source can be either a String interpreted as a uri, a Class interpreted as the class of an Embed DisplayObject, a DisplayObject instance or a URLRequest.
   * @param width width of the image to insert (number, percent, or 'auto')
   * @param height height of the image to insert (number, percent, or 'auto')
   * @param options none supported.
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @see flash.text.engine.TextRotation
   *
   * @example The following example inserts a Shape object at the beginning of a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Shape;
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_insertInlineGraphic
   *     {
   *         static public function insertInlineGraphic(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 0, 0 );
   *             editManager.insertInlineGraphic( createGraphic(), 6, 6, "none" );
   *
   *         }
   *         static private function createGraphic():Shape
   *         {
   *             var shape:Shape = new Shape();
   *             shape.graphics.beginFill( 0x993366 );
   *             shape.graphics.drawCircle( 5, 4, 6 );
   *             return shape;
   *         }
   *
   *     }
   * }
   * </listing>
   */
  public function insertInlineGraphic(source:Object, width:Object, height:Object, options:Object = null, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Inserts text.
   * <p>Inserts the text at a position or range in the text. If the location supplied in the <code>operationState</code> parameter is a range (or the parameter is <code>null</code> and the current selection is a range), then the text currently in the range is replaced by the inserted text.</p>
   * @param text the string to insert
   * @param origOperationState specifies the text in the flow to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example creates and executes an InsertTextOperation:
   * <listing>
   *
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_insertText
   *     {
   *         static public function insertText(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 4, 4 );
   *             editManager.insertText( "now " );
   *         }
   *     }
   * }
   * </listing>
   */
  public function insertText(text:String, origOperationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Modifies an existing inline graphic.
   * <p>Set unchanging properties to the values in the original graphic. (Modifying an existing graphic object is typically more efficient than deleting and recreating one.)</p>
   * @param source can be either a String interpreted as a uri, a Class interpreted as the class of an Embed DisplayObject, a DisplayObject instance or a URLRequest.
   * @param width new width for the image (number or percent)
   * @param height new height for the image (number or percent)
   * @param options none supported
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example inserts a circle at the beginning of a text flow, and then changes the <code>width</code> and <code>height</code> properties of the inline graphic to stretch it into an ellipse:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *     import flash.display.Shape;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_modifyInlineGraphic
   *     {
   *         static public function modifyInlineGraphic(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *             editManager.selectRange( 0, 0 );
   *             editManager.insertInlineGraphic( createGraphic(), 6, 6, "none" );
   *
   *             editManager.selectRange( 0, 1 );
   *             editManager.modifyInlineGraphic( null, '12', '5', 'none' );
   *         }
   *
   *         static private function createGraphic():Shape
   *         {
   *             var shape:Shape = new Shape();
   *             shape.graphics.beginFill( 0x993366 );
   *             shape.graphics.drawCircle( 4, 4, 6 );
   *             return shape;
   *         }
   *     }
   * }
   * </listing>
   */
  public function modifyInlineGraphic(source:Object, width:Object, height:Object, options:Object = null, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Overwrites the selected text.
   * <p>If the selection is a point selection, the first character is overwritten by the new text.</p>
   * @param text the string to insert
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example overwrites a string of text in a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_overwriteText
   *     {
   *         static public function overwriteText(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How zzz brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 4, 6 );
   *             editManager.overwriteText( "now" ); //Displays: How now brown cow.
   *         }
   *     }
   * }
   * </listing>
   */
  public function overwriteText(text:String, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Pastes the TextScrap into the selected area.
   * <p>If a range of text is specified, the text in the range is deleted.</p>
   * @param scrapToPaste the TextScrap to paste
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @see TextScrap
   *
   * @example The following example cuts a text scrap and pastes it into a different location in a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.edit.TextScrap;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_pasteTextScrap
   *     {
   *         static public function pasteText(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How brown cow now.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 13, 17 );
   *             var scrap:TextScrap = editManager.cutTextScrap();
   *
   *             editManager.selectRange( 3, 3 );
   *             editManager.pasteTextScrap( scrap ); //Displays: How now brown cow.
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function pasteTextScrap(scrapToPaste:TextScrap, operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Reperforms the previous undone operation.
   * <p><b>Note:</b> If the IUndoManager associated with this IEditManager is also associated with another IEditManager, then it is possible that the redo operation associated with the other IEditManager is the one redone. This can happen if the FlowOperation of another IEditManager is on top of the redo stack.</p>
   * <p>This function does nothing if undo is not turned on.</p>
   * @see flashx.undo.IUndoManager#redo()
   *
   * @example The following example defines a function that reperforms the last undone operation on a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_redo
   *     {
   *         static public function redo( textFlow:TextFlow ):void
   *         {
   *             if( textFlow.interactionManager is IEditManager )
   *             {
   *                 IEditManager( textFlow.interactionManager ).redo();
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function redo():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Splits the paragraph at the current position.
   * <p>If a range of text is specified, the text in the range is deleted.</p>
   * @param operationState specifies the text to which this operation applies; if <code>null</code>, the operation applies to the current selection.
   *
   * @example The following example splits a paragraph into two:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flash.display.Sprite;
   *
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.edit.EditManager;
   *     import flashx.textLayout.edit.TextScrap;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.undo.UndoManager;
   *
   *     public class EditManager_splitParagraph
   *     {
   *         static public function splitParagraph(sprite:Sprite):void
   *         {
   *             var textFlow:TextFlow = TextConverter.importToFlow( "How now brown cow.", TextConverter.PLAIN_TEXT_FORMAT );
   *             textFlow.flowComposer.addController( new ContainerController( sprite ));
   *             var editManager:EditManager = new EditManager( new UndoManager() );
   *             textFlow.interactionManager = editManager;
   *             textFlow.flowComposer.updateAllControllers();
   *
   *             editManager.selectRange( 8, 8 );
   *             editManager.splitParagraph();    //Displays:     How now
   *                                             //                brown cow.
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function splitParagraph(operationState:SelectionState = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Reverses the previous operation.
   * <p><b>Note:</b> If the IUndoManager associated with this IEditManager is also associated with another IEditManager, then it is possible that the undo operation associated with the other IEditManager is the one undone. This can happen if the FlowOperation of another IEditManager is on top of the undo stack.</p>
   * <p>This function does nothing if undo is not turned on.</p>
   * @see flashx.undo.IUndoManager#undo()
   *
   * @example The following example defines a function that undoes the last operation on a text flow:
   * <listing>
   * package flashx.textLayout.edit.examples
   * {
   *     import flashx.textLayout.edit.IEditManager;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class EditManager_undo
   *     {
   *         static public function undo( textFlow:TextFlow ):void
   *         {
   *             if( textFlow.interactionManager is IEditManager )
   *             {
   *                 IEditManager( textFlow.interactionManager ).undo();
   *             }
   *         }
   *     }
   * }
   * </listing>
   */
  public function undo():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Update the display after an operation has modified it
   */
  protected function updateAllControllers():void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
