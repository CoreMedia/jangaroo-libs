package flash.text.engine {
import flash.events.EventDispatcher;

/**
 * A GroupElement object groups a collection of TextElement, GraphicElement, or other GroupElement objects that you can assign as a unit to the <code>content</code> property of a TextBlock object. A GroupElement object can also simply share common formatting within another GroupElement object.
 * <p>When a GroupElement contains another GroupElement, the inner GroupElement retains its own formatting (ElementFormat settings). It does not inherit the formatting of the outer GroupElement.</p>
 * <p>On a GroupElement, most of the format properties have no impact. For this reason, it is legal to create a text line for a GroupElement object that has a null <code>elementFormat</code> parameter. A few format properties such as <code>kerning</code> and <code>ligature</code> do affect formatting where intersections occur between members of the group. If the group has a null format, the format of the preceding element determines the formatting where intersections occur between members of the group.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/GroupElement.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement
 * @see GraphicElement
 * @see TextBlock
 * @see TextElement
 *
 */
public final class GroupElement extends ContentElement {
  /**
   * The number of elements in the group.
   */
  public function get elementCount():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new GroupElement instance.
   * @param elements A Vector of ContentElement objects to be contained in the GroupElement. The Vector can be empty. The default value is <code>null</code>.
   * @param elementFormat The element format for the group. The default value is <code>null</code>. This format applies to the intersections between elements in the group; those elements do not inherit the format.
   * @param eventMirror The <code>EventDispatcher</code> object that receives copies of every event dispatched to text lines created based on this content element. The default value is <code>null</code>.
   * @param textRotation The rotation applied to the element as a unit. Use <code>TextRotation</code> constants for this property. The default value is <code>TextRotation.ROTATE_0</code>.
   *
   * @throws ArgumentError The specified <code>element</code> contains <code>null</code> elements.
   * @throws ArgumentError The specified <code>element</code> contains an element that is not a known subclass of <code>ContentElement</code>.
   * @throws ArgumentError The specified <code>element</code> contains elements that are specified as the <code>content</code> of a <code>TextBlock</code>.
   * @throws ArgumentError The specified <code>element</code> contains elements that are already members of a group, or appear more than once in the <code>elements</code>.
   *
   * @see ContentElement
   * @see ElementFormat
   * @see flash.events.EventDispatcher
   * @see TextLineMirrorRegion
   * @see TextRotation
   *
   */
  public function GroupElement(elements:Vector.<ContentElement> = null, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0") {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Retrieves an element from within the group.
   * @param index The index of the element to retrieve.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/ContentElement.html">ContentElement</a></code>
   *
   * @throws RangeError If <code>index</code> is out of range.
   *
   */
  public function getElementAt(index:int):ContentElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the element containing the character specified by the <code>charIndex</code> parameter.
   * @param charIndex The zero-based index value for the character whose element you want to find. A value of 0 corresponds to the first character in the group, not the first character in the TextBlock.
   *
   * @return The element containing the character at <code>charIndex</code>.
   *
   * @throws RangeError If <code>charIndex</code> is not in the range of <code>0 - rawText.length</code>.
   *
   */
  public function getElementAtCharIndex(charIndex:int):ContentElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the element specified by the <code>element</code> parameter.
   * @param element The element in the group whose index you want to retrieve.
   *
   * @return The index of the element specified by <code>element</code>, or -1 if the element is not in the group.
   *
   */
  public function getElementIndex(element:ContentElement):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Replaces the range of elements that the <code>beginIndex</code> and <code>endIndex</code> parameters specify with a new <code>GroupElement</code> containing those elements. As designed, the elements from beginIndex to endIndex-1 are replaced.
   * @param beginIndex The zero-based index value for the start position of the range to group.
   * @param endIndex The zero-based index value following the end position of the range to group.
   *
   * @return The new group.
   *
   * @throws RangeError If <code>beginIndex</code> or <code>endIndex</code> is out of range.
   *
   */
  public function groupElements(beginIndex:int, endIndex:int):GroupElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Merges the text from the range of elements that the <code>beginIndex</code> and <code>endIndex</code> parameters specify into the element specified by <code>beginIndex</code> without affecting the format of that element. As designed, the text from elements from beginIndex to endIndex-1 are merged. After their text has been merged, elements from beginIndex+1 to endIndex-1 are removed from the group and orphaned, with <code>null</code> <code>group</code> properties.
   * @param beginIndex The zero-based index value for the start position of the range to merge.
   * @param endIndex The zero-based index value following the end position of the range to merge.
   *
   * @return The first text element in the range, now containing all the text in the range.
   *
   * @throws RangeError If <code>beginIndex</code> or <code>endIndex</code> is out of range.
   * @throws ArgumentError If any of the elements in the specified range is not TextElement.
   *
   * @see TextElement
   *
   */
  public function mergeTextElements(beginIndex:int, endIndex:int):TextElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Replaces the range of elements that the <code>beginIndex</code> and <code>endIndex</code> parameters specify with the contents of the <code>newElements</code> parameter. The elements from beginIndex to endIndex-1 are replaced.
   * <p>To delete elements, pass <code>null</code> for <code>newElements</code>. To insert an element, pass the same value for <code>beginIndex</code> and <code>endIndex</code>. The new element is inserted before the specified index. To append an element, pass <code>elementCount</code> for <code>beginIndex</code> and <code>endIndex</code>.</p>
   * <p>After the operation, the replaced elements are orphaned, with <code>null</code> <code>group</code> properties and returned.</p>
   * @param beginIndex The zero-based index value for the start position of the replacement range.
   * @param endIndex The zero-based index value following the end position of the replacement range.
   * @param newElements The elements to use to replace the specified range of elements.
   *
   * @return A Vector containing the elements that were replaced.
   *
   * @throws RangeError The <code>beginIndex</code> or <code>endIndex</code> specified is out of range.
   * @throws ArgumentError The <code>newElements</code> specified contain <code>null</code> elements.
   * @throws ArgumentError The <code>newElements</code> specified contain <code>this</code>.
   * @throws ArgumentError The <code>newElements</code> specified contain elements that are not a known subclass of <code>ContentElement</code> .
   * @throws ArgumentError The <code>newElements</code> specified contain elements that are specified as the <code>content</code> of a <code>TextBlock</code>.
   * @throws ArgumentError The <code>newElements</code> specified contain elements that are already members of a group or appear more than once in the <code>elements</code>.
   * @throws ArgumentError If the operation would result in nested rotations within the <code>GroupElement</code>.
   *
   */
  public function replaceElements(beginIndex:int, endIndex:int, newElements:Vector.<ContentElement>):Vector.<ContentElement> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the elements in the group to the contents of the Vector.
   * @param value <code>value:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Vector.html">Vector</a>.<<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/ContentElement.html">ContentElement</a>></code>
   *
   * @throws ArgumentError The <code>value</code> specified contains <code>null</code> elements.
   * @throws ArgumentError The <code>value</code> specified contains <code>this</code>.
   * @throws ArgumentError The <code>value</code> specified contains elements that are not a known subclass of <code>ContentElement</code> .
   * @throws ArgumentError The <code>value</code> specified contains elements that are specified as the <code>content</code> of a <code>TextBlock</code>.
   * @throws ArgumentError The <code>value</code> specified contains elements that are already members of a group, or appear more than once in the <code>value</code>.
   * @throws ArgumentError If the operation would result in nested rotations within the <code>GroupElement</code>.
   *
   */
  public function setElements(value:Vector.<ContentElement>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Splits a TextElement into two, creating a new TextElement at the specified position.
   * @param elementIndex The zero-based index value for the position of the element in the group.
   * @param splitIndex The zero-based index value for the character in the TextElement where the split is to occur. The specified character is the first character in the new TextElement.
   *
   * @return The new text element containing the latter portion of the original text element.
   *
   * @throws RangeError If <code>elementIndex</code> or <code>charIndex</code> is out of range.
   * @throws ArgumentError If the element at <code>elementIndex</code> is not a TextElement.
   *
   * @see TextElement
   *
   */
  public function splitTextElement(elementIndex:int, splitIndex:int):TextElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Ungroups the elements in a nested GroupElement that <code>groupIndex</code> specifies within an outer GroupElement object. After the operation, the ungrouped elements replace the nested GroupElement, which becomes an orphan with a <code>null</code> <code>group</code> property.
   * @param groupIndex The zero-based index value for the position of the group to be split.
   *
   * @throws RangeError If <code>groupIndex</code> is out of range.
   * @throws ArgumentError If the element at <code>groupIndex</code> is not a GroupElement.
   *
   */
  public function ungroupElements(groupIndex:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
