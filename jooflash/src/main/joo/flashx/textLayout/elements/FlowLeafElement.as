package flashx.textLayout.elements {
import flash.text.engine.FontMetrics;

import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * Base class for FlowElements that appear at the lowest level of the flow hierarchy. FlowLeafElement objects have no children and include InlineGraphicElement objects and SpanElement objects.
 * @see InlineGraphicElement
 * @see SpanElement
 *
 */
public class FlowLeafElement extends FlowElement {
  /**
   * The computed text format attributes that are in effect for this element. Takes into account the inheritance of attributes.
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  override public function get computedFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The text associated with the FlowLeafElement:
   * <ul>
   * <li>The value for SpanElement subclass will be one character less than <code>textLength</code> if this is the last span in a ParagraphELement.</li>
   * <li>The value for BreakElement subclass is a U+2028</li>
   * <li>The value for TabElement subclass is a tab</li>
   * <li>The value for InlineGraphicElement subclass is U+FDEF</li></ul>
   * @see SpanElement#replaceText()
   *
   */
  public function get text():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Base class - invoking new FlowLeafElement() throws an error exception.
   */
  public function FlowLeafElement() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the FontMetrics object for the span. The properties of the FontMetrics object describe the emBox, strikethrough position, strikethrough thickness, underline position, and underline thickness for the specified font.
   * @return font metrics associated with the span
   *
   * @see flash.text.engine.FontMetrics
   * @see flash.text.engine.ElementFormat#getFontMetrics()
   *
   */
  public function getComputedFontMetrics():FontMetrics {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the next FlowLeafElement object.
   * @param limitElement Specifies FlowGroupElement on whose last leaf to stop looking. A value of null (default) means search till no more elements.
   *
   * @return next FlowLeafElement or null if at the end
   *
   * @example This example creates three paragraphs, each with three SpanElement objects. The example finds the first FlowLeafElement object and calls <code>getNextLeaf()</code> to iterate forward through each leaf element and trace its text, up to and including paragraph p2.
   * <listing>
   * package flashx.textLayout.elements.examples {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class FlowLeafElement_getNextLeafExample extends Sprite{
   *         private var textFlow:TextFlow = new TextFlow();
   *
   *         public function FlowLeafElement_getNextLeafExample(){
   *             var fontSize:Number = 12;
   *             var textFlow:TextFlow = new TextFlow();
   *
   *             var p1:ParagraphElement = new ParagraphElement();
   *             var p2:ParagraphElement = new ParagraphElement();
   *             var p3:ParagraphElement = new ParagraphElement();
   *             var p1Span1:SpanElement = new SpanElement();
   *             var p1Span2:SpanElement = new SpanElement();
   *             var p1Span3:SpanElement = new SpanElement();
   *             var p2Span1:SpanElement = new SpanElement();
   *             var p2Span2:SpanElement = new SpanElement();
   *             var p2Span3:SpanElement = new SpanElement();
   *             var p3Span1:SpanElement = new SpanElement();
   *             var p3Span2:SpanElement = new SpanElement();
   *             var p3Span3:SpanElement = new SpanElement();
   *             p1Span1.text = "Breathe.";
   *             p1Span1.fontSize = fontSize;
   *             p1Span2.text = "Walk.";
   *             p1Span2.fontSize = fontSize + 1;
   *             p1Span3.text = "Play.";
   *             p1Span3.fontSize = fontSize + 2;
   *             p1.addChild(p1Span1);
   *             p1.addChild(p1Span2);
   *             p1.addChild(p1Span3);
   *             p2Span1.text = "Study.";
   *             p2Span1.fontSize = fontSize + 3;
   *             p2Span2.text = "Work.";
   *             p2Span2.fontSize = fontSize + 4;
   *             p2Span3.text = "Marry.";
   *             p2Span3.fontSize = fontSize + 5;
   *             p2.fontSize = fontSize + 6;
   *             p2.addChild(p2Span1);
   *             p2.addChild(p2Span2);
   *             p2.addChild(p2Span3);
   *             p3Span1.text = "Retire.";
   *             p3Span1.fontSize = fontSize + 6;
   *             p3Span2.text = "Travel.";
   *             p3Span2.fontSize = fontSize + 7;
   *             p3Span3.text = "Rock." ;
   *             p3Span3.fontSize = fontSize + 8;
   *             p3.addChild(p3Span1);
   *             p3.addChild(p3Span2);
   *             p3.addChild(p3Span3);
   *             textFlow.addChild(p1);
   *             textFlow.addChild(p2);
   *             textFlow.addChild(p3);
   *             textFlow.flowComposer.addController(new ContainerController(this,600,600));
   *             textFlow.flowComposer.updateAllControllers();
   *             var leaf:SpanElement = new SpanElement();
   *             leaf = SpanElement(textFlow.getFirstLeaf());
   *             trace(leaf.text);
   *             while(leaf = SpanElement(leaf.getNextLeaf(p2)))
   *                 trace(leaf.text);
   *         }
   *     }
   * }
   * </listing>
   */
  public function getNextLeaf(limitElement:FlowGroupElement = null):FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the previous FlowLeafElement object.
   * @param limitElement Specifies the FlowGroupElement on whose first leaf to stop looking. null (default) means search till no more elements.
   *
   * @return previous leafElement or null if at the end
   *
   * @example This example creates three paragraphs, each with three SpanElement objects. The example finds the last FlowLeafElement object, and calls <code>getPreviousLeaf()</code> to iterate backward through each leaf element and trace its text, through the limit element, paragraph p3.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.container.ContainerController;
   *
   *     public class FlowLeafElement_getPreviousLeafExample extends Sprite
   *     {
   *         public function FlowLeafElement_getPreviousLeafExample(){
   *             var textFlow:TextFlow = new TextFlow();
   *             var fontSize:Number = 12;
   *
   *             var p1:ParagraphElement = new ParagraphElement();
   *             var p2:ParagraphElement = new ParagraphElement();
   *             var p3:ParagraphElement = new ParagraphElement();
   *             var p1Span1:SpanElement = new SpanElement();
   *             var p1Span2:SpanElement = new SpanElement();
   *             var p1Span3:SpanElement = new SpanElement();
   *             var p2Span1:SpanElement = new SpanElement();
   *             var p2Span2:SpanElement = new SpanElement();
   *             var p2Span3:SpanElement = new SpanElement();
   *             var p3Span1:SpanElement = new SpanElement();
   *             var p3Span2:SpanElement = new SpanElement();
   *             var p3Span3:SpanElement = new SpanElement();
   *             p1Span1.text = "Breathe.";
   *             p1Span1.fontSize = fontSize;
   *             p1Span2.text = "Walk.";
   *             p1Span2.fontSize = fontSize + 1;
   *             p1Span3.text = "Play.";
   *             p1Span3.fontSize = fontSize + 2;
   *             p1.addChild(p1Span1);
   *             p1.addChild(p1Span2);
   *             p1.addChild(p1Span3);
   *             p2Span1.text = "Study.";
   *             p2Span1.fontSize = fontSize + 3;
   *             p2Span2.text = "Work.";
   *             p2Span2.fontSize = fontSize + 4;
   *             p2Span3.text = "Marry.";
   *             p2Span3.fontSize = fontSize + 5;
   *             p2.addChild(p2Span1);
   *             p2.addChild(p2Span2);
   *             p2.addChild(p2Span3);
   *             p3Span1.text = "Retire.";
   *             p3Span1.fontSize = fontSize + 6;
   *             p3Span2.text = "Travel.";
   *             p3Span2.fontSize = fontSize + 7;
   *             p3Span3.text = "Rock.";
   *             p3Span3.fontSize = fontSize + 8;
   *             p3.addChild(p3Span1);
   *             p3.addChild(p3Span2);
   *             p3.addChild(p3Span3);
   *             textFlow.addChild(p1);
   *             textFlow.addChild(p2);
   *             textFlow.addChild(p3);
   *             textFlow.flowComposer.addController(new ContainerController(this,600,600));
   *             textFlow.flowComposer.updateAllControllers();
   *             var leaf:SpanElement = new SpanElement();
   *             leaf = SpanElement(textFlow.getLastLeaf());
   *             trace(leaf.text);
   *             while(leaf = SpanElement(leaf.getPreviousLeaf(p3)))
   *                 trace(leaf.text);
   *         }
   *     }
   * }
   * </listing>
   */
  public function getPreviousLeaf(limitElement:FlowGroupElement = null):FlowLeafElement {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
