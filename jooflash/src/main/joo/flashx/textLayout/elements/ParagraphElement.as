package flashx.textLayout.elements {
/**
 * The ParagraphElement class represents a paragraph in the text flow hierarchy. Its parent is a ParagraphFormattedElement, and its children can include spans (SpanElement), images (inLineGraphicElement), links (LinkElement) and TCY (Tatechuuyoko - ta-tae-chu-yo-ko) elements (TCYElement). The paragraph text is stored in one or more SpanElement objects, which define ranges of text that share the same attributes. A TCYElement object defines a small run of Japanese text that runs perpendicular to the line, as in a horizontal run of text in a vertical line. A TCYElement can also contain multiple spans.
 * <p>Default MXML Property<code>mxmlChildren</code></p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/ParagraphElement.html#includeExamplesSummary">View the examples</a></p>
 * @see InlineGraphicElement
 * @see LinkElement
 * @see SpanElement
 * @see TCYElement
 * @see TextFlow
 *
 */
public final class ParagraphElement extends ParagraphFormattedElement {
  /**
   * Constructor - represents a paragraph in a text flow.
   */
  public function ParagraphElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Scans ahead from the supplied position to find the location in the text of the next atom and returns the index. The term atom refers to both graphic elements and characters (including groups of combining characters), the indivisible entities that make up a text line.
   * @param relativePosition position in the text to start from, counting from 0
   *
   * @return index in the text of the following atom
   *
   * @see flash.text.engine.TextLine
   *
   * @example This example finds the next atom boundaries from given offsets in a paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_findNextAtomBoundary  extends Sprite
   *     {
   *         public function ParagraphElement_findNextAtomBoundary()
   *         {
   *             // create the TextFlow, ParagraphElement and SpanElement objects to hold paragraph
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement();
   *             // assign text to the span; add span to paragraph and paragraph to TextFlow
   *             span.text = "Hello brave, new world!";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // assign a controller to the stage and update it to compose and display text
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // find the next atom boundaries from offsets 5 and 10
   *             var atomBoundary:int = paragraph.findNextAtomBoundary(4);
   *             trace(atomBoundary); // 5
   *             atomBoundary = paragraph.findNextAtomBoundary(10);
   *             trace(atomBoundary); // 11
   *         }
   *     }
   * }
   * </listing>
   */
  public function findNextAtomBoundary(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the next word boundary in the text.
   * <p>Scans ahead from the supplied position to find the next position in the text that starts or ends a word.</p>
   * @param relativePosition position in the text to start from, counting from 0
   *
   * @return index in the text of the next word boundary
   *
   * @example This example finds the next word boundaries in a paragraph from given offsets.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_findNextWordBoundary  extends Sprite
   *     {
   *         public function ParagraphElement_findNextWordBoundary()
   *         {
   *             // create the TextFlow, ParagraphElement and SpanElement objects to hold paragraph
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement();
   *             // assign text to the span; add span to paragraph and paragraph to TextFlow
   *             span.text = "Hello brave, new world!";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // assign a controller to the stage and update it to compose and display text
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // find the next word boundary from offsets 0 and 12
   *             var wordBoundary:int = paragraph.findNextWordBoundary(0);
   *             trace(wordBoundary); // 5
   *             wordBoundary = paragraph.findNextWordBoundary(12);
   *             trace(wordBoundary); // 13
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function findNextWordBoundary(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Scans backward from the supplied position to find the location in the text of the previous atom and returns the index. The term atom refers to both graphic elements and characters (including groups of combining characters), the indivisible entities that make up a text line.
   * @param relativePosition position in the text to start from, counting from 0
   *
   * @return index in the text of the previous cluster
   *
   * @see flash.text.engine.TextLine
   *
   * @example This example finds the previous atom boundaries from given offsets in a paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_findPreviousAtomBoundary  extends Sprite
   *     {
   *         public function ParagraphElement_findPreviousAtomBoundary()
   *         {
   *             // create the TextFlow, ParagraphElement and SpanElement objects to hold paragraph
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement();
   *             // assign text to the span; add span to paragraph and paragraph to TextFlow
   *             span.text = "Hello brave, new world!";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // assign a controller to the stage and update it to compose and display text
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // find the previous atom boundaries from offsets 6 and 13
   *             var atomBoundary:int = paragraph.findPreviousAtomBoundary(6);
   *             trace(atomBoundary); // 5
   *             atomBoundary = paragraph.findPreviousAtomBoundary(13);
   *             trace(atomBoundary); // 12
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function findPreviousAtomBoundary(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the index of the previous word boundary in the text.
   * <p>Scans backward from the supplied position to find the previous position in the text that starts or ends a word.</p>
   * @param relativePosition position in the text to start from, counting from 0
   *
   * @return index in the text of the previous word boundary
   *
   * @example This example finds the previous word boundaries in a paragraph from given offsets.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_findPreviousWordBoundary  extends Sprite
   *     {
   *         public function ParagraphElement_findPreviousWordBoundary()
   *         {
   *             // create the TextFlow, ParagraphElement and SpanElement objects to hold paragraph
   *             var textFlow:TextFlow = new TextFlow();
   *             var paragraph:ParagraphElement = new ParagraphElement();
   *             var span:SpanElement = new SpanElement();
   *             // assign text to the span; add span to paragraph and paragraph to TextFlow
   *             span.text = "Hello brave, new world!";
   *             paragraph.addChild(span);
   *             textFlow.addChild(paragraph);
   *             // assign a controller to the stage and update it to compose and display text
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // find the previous word boundary from offsets 0 and 12
   *             var wordBoundary:int = paragraph.findPreviousWordBoundary(22);
   *             trace(wordBoundary); // 17
   *             wordBoundary = paragraph.findPreviousWordBoundary(11);
   *             trace(wordBoundary); // 6
   *         }
   *     }
   * }
   *
   * </listing>
   */
  public function findPreviousWordBoundary(relativePosition:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the paragraph that follows this one, or null if there are no more paragraphs.
   * @return the next paragraph or null if there are no more paragraphs.
   *
   * @see #getPreviousParagraph()
   *
   * @example This example imports three paragraphs of text from xml markup, accesses the first paragraph using getChildAtIndex(0), and uses getNextParagraph() to access the second paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_getNextParagraph  extends Sprite
   *     {
   *         public function ParagraphElement_getNextParagraph()
   *         {
   *             // create TextFlow object
   *             var textFlow:TextFlow = new TextFlow();
   *             // create content for TextFlow using XML markup
   *             var simpleText:String = "&lt;?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "&lt;flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\">"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the first paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the second paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the third paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                 "&lt;/flow:TextFlow>";
   *             // import the xml markup into a TextFlow object and display it on the stage
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // get first paragraph
   *             var p:ParagraphElement = textFlow.getChildAt(0) as ParagraphElement;
   *             // get next paragraph and display its content
   *             var nextParagraph:ParagraphElement = p.getNextParagraph();
   *             trace("nextParagraph.text is: " + nextParagraph.getText());
   *         }
   *     }
   * }
   * </listing>
   */
  public function getNextParagraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the paragraph that precedes this one, or null, if this paragraph is the first one in the TextFlow.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/ParagraphElement.html">ParagraphElement</a></code>
   *
   * @see #getNextParagraph()
   *
   * @example This example imports three paragraphs of text from xml markup, accesses the second paragraph using getChildAtIndex(1), and uses getPreviousParagraph() to access the first paragraph.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.conversion.TextConverter;
   *     import flashx.textLayout.container.ContainerController;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.TextFlow;
   *
   *     public class ParagraphElement_getPreviousParagraph  extends Sprite
   *     {
   *         public function ParagraphElement_getPreviousParagraph()
   *         {
   *             // create TextFlow object
   *             var textFlow:TextFlow = new TextFlow();
   *             // create content for TextFlow using XML markup
   *             var simpleText:String = "&lt;?xml version=\"1.0\" encoding=\"utf-8\"?>" +
   *                 "&lt;flow:TextFlow xmlns:flow=\"http://ns.adobe.com/textLayout/2008\">"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the first paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the second paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                     "&lt;flow:p>"+
   *                         "&lt;flow:span>This is the third paragraph.&lt;/flow:span>"+
   *                     "&lt;/flow:p>"+
   *                 "&lt;/flow:TextFlow>";
   *             // import the xml markup into a TextFlow object and display it on the stage
   *             textFlow = TextConverter.importToFlow(simpleText, TextConverter.TEXT_LAYOUT_FORMAT);
   *             textFlow.flowComposer.addController(new ContainerController(this, 200, 400));
   *             textFlow.flowComposer.updateAllControllers();
   *             // get second paragraph (first = 0)
   *             var p:ParagraphElement = textFlow.getChildAt(1) as ParagraphElement;
   *             // get  previous paragraph and display its content
   *             var prevParagraph:ParagraphElement = p.getPreviousParagraph();
   *             trace("prevParagraph.text is: " + prevParagraph.getText());
   *         }
   *     }
   * }
   * </listing>
   */
  public function getPreviousParagraph():ParagraphElement {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
