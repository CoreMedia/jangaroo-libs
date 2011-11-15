package flashx.textLayout.elements {
import flash.display.DisplayObject;

/**
 * The InlineGraphicElement class handles graphic objects that display inline in the text.
 * <p>You can embed a graphic or any DisplayObject or specify a URl for the location of the graphic. The <code>height</code> and <code>width</code> properties of InlineGraphicElement control the actual size of the graphic to display. These values also control how much space to allocate for the graphic in the TextLine object that contains the graphic. The <code>height</code> and <code>width</code> properties each can be one of:</p><ol>
 * <li>A number of pixels</li>
 * <li>A percent of the measured size of the image</li>
 * <li>The constant, "auto", which computes the size (Default value)</li></ol>There are three properties, or accessors, pertaining to the width and height of a graphic:
 * <ul>
 * <li>The <code>width</code> and <code>height</code> properties</li>
 * <li>The <code>measuredWidth</code> and <code>measuredHeight</code> properties, which are the width or height of the graphic at load time</li>
 * <li>The <code>actualWidth</code> and <code>actualHeight</code> properties, which are the actual display and compose width and height of the graphic as computed from <code>width</code> or <code>height</code> and <code>measuredWidth</code> or <code>measuredHeight</code></li></ul>
 * <p>The values of the <code>actualWidth</code> and <code>actualHeight</code> properties are always zero until the graphic is loaded.</p>
 * <p>If <code>source</code> is specified as a URI, the graphic is loaded asynchronously. If it's a DisplayObject, TextLayout uses the <code>width</code> and <code>height</code> at the time the graphic is set into the InlineGraphicElement object as <code>measuredHeight</code> and <code>measuredWidth</code>; its width and height are read immediately.</p>
 * <p><b>Notes</b>: For graphics that are loaded asynchronously the user must listen for a StatusChangeEvent.INLINE_GRAPHIC_STATUS_CHANGE event on the TextFlow and call <code>IFlowComposer.updateAllControllers()</code> to have the graphic appear. The value of <code>measuredWidth</code> and <code>measuredHeight</code> for graphics that are in the process of loading is zero.</p>
 * <p>Some inline graphics are animations or videos that possibly have audio. They begin to run the first time they are composed after they finish loading. They don't stop running until the flowComposer on the TextFlow is set to null. At that time they are stopped and unloaded.</p>The following restrictions apply to InLineGraphicElement objects: <ol>
 * <li>On export of TLFMarkup, source is converted to a string. If the graphic element is a class, the Text Layout Framework can't export it properly</li>
 * <li>.</li>
 * <li>When doing a copy/paste operation of an InlineGraphicElement, if source can't be used to create a new InLineGraphicElement, it won't be pasted. For example if source is a DisplayObject, or if the graphic is set directly, it can't be duplicated. Best results are obtained if the source is the class of an embedded graphic though that doesn't export/import.</li>
 * <li>InLineGraphicElement objects work in the factory (TextFlowTextLineFactory) only if the source is a class or if you explicitly set the graphic to a loaded graphic. InlineGraphic objects that require delayed loads generally do not show up.</li></ol>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/InlineGraphicElement.html#includeExamplesSummary">View the examples</a></p>
 * @see #actualHeight
 * @see #actualWidth
 * @see flash.display.DisplayObject
 * @see flashx.textLayout.compose.IFlowComposer#updateAllControllers()
 * @see flashx.textLayout.events.StatusChangeEvent
 * @see TextFlow
 *
 */
public final class InlineGraphicElement extends FlowLeafElement {
  /**
   * The actual height in effect. This is the display and compose height that's computed from the <code>height</code> and <code>measuredHeight</code> properties.
   * <p>The values of the <code>actualHeight</code> property are computed according to the following table:</p>
   * <table>
   * <tr><th>height property</th><th>actualHeight</th></tr>
   * <tr>
   * <td>auto</td>
   * <td>measuredheight</td></tr>
   * <tr>
   * <td>h a Percent</td>
   * <td>h percent of measuredheight</td></tr>
   * <tr>
   * <td>h a Number</td>
   * <td>h</td></tr></table>
   * <p><b>Notes</b>: If the inline graphic is a DisplayObject, its width and height are read immmediately. If <code>measuredWidth</code> or <code>measuredHeight</code> are zero, then any auto calculations that would cause a divide by zero sets the result to zero.</p>
   * @see #height
   * @see #measuredHeight
   *
   */
  public function get actualHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The actual width in effect. This is the display and compose width that's computed from the <code>width</code> and <code>measuredWidth</code> properties.
   * <p>The values of the <code>actualWidth</code>property are computed according to the following table:</p>
   * <table>
   * <tr><th>width property</th><th>actualWidth</th></tr>
   * <tr>
   * <td>auto</td>
   * <td>measuredWidth</td></tr>
   * <tr>
   * <td>w a Percent</td>
   * <td>w percent of measuredWidth</td></tr>
   * <tr>
   * <td>w a Number</td>
   * <td>w</td></tr></table>
   * <p><b>Notes</b>: If the inline graphic is a DisplayObject, its width and height are read immediately. If <code>measuredWidth</code> or <code>measuredHeight</code> are zero, then any auto calculations that would cause a divide by zero sets the result to zero.</p>
   * @see #measuredWidth
   * @see #width
   *
   */
  public function get actualWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The embedded graphic.
   */
  public function get graphic():DisplayObject {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The height of the image. May be 'auto', a number of pixels or a percent of the measured height.
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from 0 to 32000.</p>
   * <p>Legal values as a percent are numbers from 0 to 1000000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined or "inherit" the InlineGraphicElement will use the default value of "auto".</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see #actualHeight
   * @see #measuredHeight
   *
   */
  public function get height():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set height(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The natural height of the graphic. This is the height of the graphic at load time.
   * @see #actualHeight
   * @see #height
   *
   */
  public function get measuredHeight():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The natural width of the graphic. This is the width of the graphic at load time.
   * @see #actualWidth
   * @see #width
   *
   */
  public function get measuredWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the source for the graphic. The value can be either a String that is interpreted as a URI, a Class that's interpreted as the class of an embeddded DisplayObject, a DisplayObject instance, or a URLRequest. Creates a DisplayObject and, if the InlineGraphicElement object is added into a ParagraphElement in a TextFlow object, causes it to appear inline in the text.
   * @example This example displays a span of text followed by an InlineGraphicElement object.
   * <listing>
   * package flashx.textLayout.elements.examples
   * {
   *     import flash.display.Sprite;
   *     import flashx.textLayout.elements.TextFlow;
   *     import flashx.textLayout.elements.InlineGraphicElement;
   *     import flashx.textLayout.elements.ParagraphElement;
   *     import flashx.textLayout.elements.SpanElement;
   *     import flashx.textLayout.container.ContainerController;
   *
   *
   *     public class InlineGraphicElement_sourceExample extends Sprite
   *     {
   *         public function InlineGraphicElement_sourceExample(){
   *             // create a container and a controller for it
   *             var container:Sprite = new Sprite();
   *             this.stage.addChild(container);
   *             // create the TextFlow, ParagraphElement, SpanElement, and InlineGraphicElement objects
   *             var textFlow:TextFlow = new TextFlow();
   *             var p:ParagraphElement = new ParagraphElement();
   *             var inlineGraphicElement:InlineGraphicElement = new InlineGraphicElement();
   *             var span:SpanElement = new SpanElement();
   *             // add the graphic
   *             inlineGraphicElement.source = drawRect();
   *             // add text to the spans, spans and graphic to paragraph
   *             span.text = "Too much depends upon a ";
   *             span.fontSize = 48;
   *             p.addChild(span);
   *             p.addChild(inlineGraphicElement);
   *             // add paragraph to text flow and update controller to display
   *             textFlow.addChild(p);
   *             var controller:ContainerController = new ContainerController(container, 400, 300 );
   *             textFlow.flowComposer.addController(controller);
   *             textFlow.flowComposer.updateAllControllers();
   *         }
   *
   *         private function drawRect():Sprite
   *         {
   *             var redRect:Sprite = new Sprite();
   *             redRect.graphics.beginFill(0xff0000);    // red
   *             redRect.graphics.drawRect(0,0,30, 30);
   *             redRect.graphics.endFill();
   *             return redRect;
   *         }
   *     }
   * }
   * </listing>
   */
  public function get source():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set source(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The current status of the image. On each status change the owning TextFlow sends a StatusChangeEvent.
   * @see InlineGraphicElementStatus
   * @see flashx.textLayout.events.StatusChangeEvent
   *
   */
  public function get status():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of the graphic. The value can be 'auto', a number of pixels or a percent of the measured width of the image.
   * <p>Legal values are flashx.textLayout.formats.FormatValue.AUTO and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Legal values as a number are from 0 to 32000.</p>
   * <p>Legal values as a percent are numbers from 0 to 1000000.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined or "inherit" the InlineGraphicElement will use the default value of "auto".</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see #actualWidth
   * @see #measuredWidth
   *
   */
  public function get width():* {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set width(value:*):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - create new InlineGraphicElement object
   */
  public function InlineGraphicElement() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
