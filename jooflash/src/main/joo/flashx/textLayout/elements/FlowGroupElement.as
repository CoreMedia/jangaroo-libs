package flashx.textLayout.elements {


/**
 * The FlowGroupElement class is the base class for FlowElement objects that can have an array of children. These classes include TextFlow, ParagraphElement, DivElement, and LinkElement.
 * <p>You cannot create a FlowGroupElement object directly. Invoking <code>new FlowGroupElement()</code> throws an error exception.</p>
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * @see DivElement
 * @see LinkElement
 * @see ParagraphElement
 * @see TextFlow
 *
 */
public class FlowGroupElement extends FlowElement {
  /**
   * Appends an array of children to this object. Uses the <code>replaceChildren()</code> method to append each element in the array. Intended for use during an mxml compiled import.
   * @throws TypeError if array element is not a FlowElement or String
   *
   * @see #replaceChildren()
   *
   */
  public function get mxmlChildren():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set mxmlChildren(value:Array):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the number of FlowElement children that this FlowGroupElement object has.
   */
  public function get numChildren():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Base class - invoking <code>new FlowGroupElement()</code> throws an error exception.
   */
  public function FlowGroupElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Appends a child FlowElement object. The new child is added to the end of the children list.
   * @param child The child element to append.
   *
   * @return the added child FlowElement
   *
   * @example This example calls <code>addChild()</code> to add a span to a paragraph and to add the paragraph to the text flow.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_addChildExample extends Sprite
   *     {
   *         public function FlowGroupElement_addChildExample()
   *         {
   *             // create string for text flow
   *             var simpleText:String = "It was a dark and stormy night.";
   *
   *             // define TextFlow, ParagraphElement, and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement;
   *             span.text = simpleText;
   *             // add span to paragraph and add paragraph to text flow
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // assign composer and controller and update controller to display text
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function addChild(child:FlowElement):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a child FlowElement object at the specified index position.
   * @param index index of the position at which to add the child element, with the first position being 0.
   * @param child The child element to add.
   *
   * @return the added child FlowElement
   *
   * @throws RangeError The <code>index</code> is out of range.
   *
   * @example This example calls addChildAt to add three spans to a paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_addChildAtExample extends Sprite
   *     {
   *         public function FlowGroupElement_addChildAtExample()
   *         {
   *             // define text strings for the contents of the text flow
   *             var textA:String = "It was a dark and stormy night. ";
   *             var textB:String = "The quick red fox jumped over the lazy brown dog. ";
   *             var textC:String = "Mary had a little lamb. ";
   *             // define TextFlow, ParagraphElement and SpanElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             var span3:SpanElement = new SpanElement();
   *             span1.text = textA;
   *             span2.text = textB;
   *             span3.text = textC;
   *             // add spans at specified positions
   *             paragraph.addChildAt(0, span2);
   *             paragraph.addChildAt(0, span1);
   *             paragraph.addChildAt(1, span3);
   *             textFlow.addChild(paragraph);
   *             // assign composer, controller, and update to display text
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function addChildAt(index:uint, child:FlowElement):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Given a relative text position, find the index of the first child FlowElement that contains the relative position. More than one child can contain relative position because of zero length FlowElements.
   * <p>Examine the children to find the FlowElement that contains the relative position. The supplied relative position is relative to this FlowElement.</p>
   * @param relativePosition the position relative to this element
   *
   * @return index of first child element containing <code>relativePosition</code>
   *
   * @example This example finds the index of the child at a relative position in the text and sets its color to red.
   * <listing>
   *
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_findChildIndexAtPositionExample extends Sprite
   *     {
   *         public function FlowGroupElement_findChildIndexAtPositionExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span id='span1'>It was a dark and stormy night.</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a </flow:span>"+
   *                         "<flow:span fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             // find the index of the child containing relative offset 21; set color to red
   *             var index:int = textFlow.findChildIndexAtPosition(21);
   *             textFlow.getChildAt(index).color = 0xFF0000;
   *             // display text
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function findChildIndexAtPosition(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Given a relative text position, find the leaf element that contains the position.
   * <p>Looks down the flow element hierarchy to find the FlowLeafElement that contains the specified position. The specified position is relative to this FlowElement object.</p>
   * @param relativePosition relative text index to look up.
   *
   * @return the leaf element containing the relative position.
   *
   * @example This example creates two paragraphs, finds the FlowLeafElement at relative position 55, and sets its color to red.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_findLeafExample extends Sprite
   *     {
   *         public function FlowGroupElement_findLeafExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span>It was a dark and stormy night</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a </flow:span>"+
   *                         "<flow:span fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             // find the FlowLeafElement object containing relative offset 55; set color to red
   *             var leaf:SpanElement = textFlow.findLeaf(55) as SpanElement;
   *             leaf.color = 0xFF0000;
   *             // display text
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function findLeaf(relativePosition:int):FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the FlowElement child at the specified index.
   * @param index the position at which to find the FlowElement object.
   *
   * @return the child FlowElement object at the specified position.
   *
   * @example This example uses the <code>getChildAt()</code> method to access a paragraph in the text flow and change the color of one of its spans to red.
   * <listing>
   *
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_getChildAtExample extends Sprite
   *     {
   *         public function FlowGroupElement_getChildAtExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span id='span1'>It was a dark and stormy night.</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a </flow:span>"+
   *                         "<flow:span fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             // find the paragraph at index position 1
   *             var para:ParagraphElement = textFlow.getChildAt(1) as ParagraphElement;
   *             // find the span at index position 1 of the paragraph and color it red
   *             para.getChildAt(1).color = 0xFF0000;
   *             // display text
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getChildAt(index:int):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Searches in children for the specified FlowElement object and returns its index position.
   * @param child The FlowElement object item to locate among the children.
   *
   * @return The index position of the specified chilc. If <code>child</code> is not found, returns -1.
   *
   */
  public function getChildIndex(child:FlowElement):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the first FlowLeafElement descendant of this group.
   * @return the first FlowLeafElement object.
   *
   * @example This example creates two paragraphs, finds the first FlowLeafElement object and sets its color to red.
   * <listing>
   *
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_getFirstLeafExample extends Sprite
   *     {
   *         public function FlowGroupElement_getFirstLeafExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span>It was a </flow:span>"+
   *                         "<flow:span fontStyle=\"italic\">dark and stormy</flow:span>"+
   *                         "<flow:span> night.</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a peck of pickle peppers. </flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // get first FlowLeafElement object and set its color to red
   *             var leaf:SpanElement = textFlow.getFirstLeaf() as SpanElement;
   *             leaf.color = 0xFF0000;
   *             // add composer and controller and update controller to display text
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getFirstLeaf():FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the last FlowLeafElement descendent of this group.
   * @return the last FlowLeafElement object.
   *
   * @example This example creates two paragraphs, finds the last FlowLeafElement object and sets its color to red.
   * <listing>
   *
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_getLastLeafExample extends Sprite
   *     {
   *         public function FlowGroupElement_getLastLeafExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span>It was a dark and stormy night</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a </flow:span>"+
   *                         "<flow:span fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,600,600));
   *             //find last leaf, set its color to red and display text
   *             var leaf:SpanElement = textFlow.getLastLeaf() as SpanElement;
   *             leaf.color = 0xFF0000;
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function getLastLeaf():FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   *
   * @param relativeStart <code>relativeStart:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code> (default = <code>0</code>)
   * @param relativeEnd <code>relativeEnd:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code> (default = <code>-1</code>)
   * @param paragraphSeparator <code>paragraphSeparator:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code> (default = " ")
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   */
  override public function getText(relativeStart:int = 0, relativeEnd:int = -1, paragraphSeparator:String = " "):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the specified child FlowElement object from the group.
   * @param child The child element to remove.
   *
   * @return the removed child FlowElement object
   *
   * @throws ArgumentError The <code>child</code> is not found.
   *
   * @example This example removes the third span in the second paragraph of the text flow.
   * <listing>
   *
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_removeChildExample extends Sprite
   *     {
   *         public function FlowGroupElement_removeChildExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p id='para1'>"+
   *                         "<flow:span id='span1'>It was a dark and stormy night.</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p id='para2'>"+
   *                         "<flow:span id='span2'>Peter Piper picked a </flow:span>"+
   *                         "<flow:span id='span3' fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span id='span4'>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,600,600));
   *             // get paragraph with ID = 'para2' and remove its child with name = 'span4'
   *             var parent:ParagraphElement = textFlow.getElementByID("para2") as ParagraphElement;
   *             parent.removeChild(textFlow.getElementByID("span4"));
   *             // update controller to display text
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function removeChild(child:FlowElement):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes the child FlowElement object at the specified index position.
   * @param index position at which to remove the child element.
   *
   * @return the child FlowElement object removed from the specified position.
   *
   * @throws RangeError The <code>index</code> is out of range.
   *
   * @example This example calls <code>removeChildAt()</code> to remove the second of three paragraphs.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_removeChildAtExample extends Sprite
   *     {
   *         public function FlowGroupElement_removeChildAtExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p>"+
   *                         "<flow:span>It was a dark and stormy night. </flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Peter Piper picked a peck of pickle peppers. </flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p>"+
   *                         "<flow:span>Mary had a little lamb. </flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow, import text, add composer and controller
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             textFlow.flowComposer.addController(new ContainerController(this,200,200));
   *             // remove child at index position 1 (with first position = 0); display text
   *             textFlow.removeChildAt(1);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function removeChildAt(index:uint):FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Replaces child elements in the group with the specified new elements. Use the <code>beginChildIndex</code> and <code>endChildIndex</code> parameters to govern the operation as follows:
   * <ul>
   * <li>To delete elements, do not pass any replacement elements.</li>
   * <li>To insert elements, pass the same value for <code>beginChildIndex</code> and <code>endChildIndex</code>. The new elements is inserted before the specified index.</li>
   * <li>To append elements, pass <code>numChildren</code> for <code>beginChildIndex</code> and <code>endChildIndex</code>.</li></ul>
   * <p>Otherwise, this method replaces the specified elements, starting with the element at <code>beginChildIndex</code> and up to but not including <code>endChildIndex</code>.</p>
   * @param beginChildIndex The index value for the start position of the replacement range in the children array.
   * @param endChildIndex The index value following the end position of the replacement range in the children array.
   * @param rest The elements to replace the specified range of elements. Can be a sequence containing flow elements or arrays or vectors thereof.
   *
   * @throws RangeError The <code>beginChildIndex</code> or <code>endChildIndex</code> specified is out of range.
   *
   * @example This example replaces the three spans in the second paragraph with two new ones.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class FlowGroupElement_replaceChildrenExample extends Sprite
   *     {
   *         public function FlowGroupElement_replaceChildrenExample()
   *         {
   *             // xml markup that defines the attributes and contents of a text flow
   *             var simpleText:String = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "<flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\" verticalScrollPolicy=\"auto\" horizontalScrollPolicy=\"auto\" editingMode=\"readWrite\" fontSize=\"14\" textIndent=\"15\" marginBottom=\"15\" paddingTop=\"4\" paddingLeft=\"4\">"+
   *                     "<flow:p id='para1'>"+
   *                         "<flow:span id='span1'>It was a dark and stormy night.</flow:span>"+
   *                     "</flow:p>"+
   *                     "<flow:p id='para2'>"+
   *                         "<flow:span id='span2'>Peter Piper picked a </flow:span>"+
   *                         "<flow:span id='span3' fontStyle=\"italic\"> peck </flow:span>"+
   *                         "<flow:span id='span4'>of pickle peppers.</flow:span>"+
   *                     "</flow:p>"+
   *                 "</flow:TextFlow>";
   *
   *             // define TextFlow object and import xml markup
   *             var textFlow:TextFlow = new TextFlow();
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             // define two new SpanElement objects
   *             var span1:SpanElement = new SpanElement();
   *             var span2:SpanElement = new SpanElement();
   *             span1.text = "Mary had a little lamb. ";
   *             span2.text = "And this little pig stayed home. ";
   *             // add composer and controller
   *             textFlow.flowComposer.addController(new ContainerController(this,200,600));
   *             // get paragraph with ID = 'para2' and replace its children with span1 and span2
   *             var parent:ParagraphElement = textFlow.getElementByID("para2") as ParagraphElement;
   *             parent.replaceChildren(0, 3, [span1, span2]);
   *             // update controller to display text
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *     }
   * }
   * </listing>
   */
  public function replaceChildren(beginChildIndex:int, endChildIndex:int, ...rest):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Splits this object at the position specified by the <code>childIndex</code> parameter. If this group element has a parent, creates a shallow copy of this object and replaces its children with the elements up to the index. Moves elements following <code>childIndex</code> into the copy.
   * @param childIndex <code>childIndex:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @return the new FlowGroupElement object.
   *
   * @throws RangeError if <code>childIndex</code> is greater than the length of the children.
   *
   */
  public function splitAtIndex(childIndex:int):FlowGroupElement {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
