package flashx.textLayout.elements {
import flashx.textLayout.edit.SelectionFormat;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * The Configuration class is a primary point of integration between the Text Layout Framework and an application. You can include a Configuration object as a parameter to the <code>TextFlow()</code> constructor when you create a new TextFlow instance. It allows the application to initially control how the Text Layout Framework behaves.
 * <p>The Configuration class allows you to specify initial, paragraph and container formats for the text flow through the <code>textFlowInitialFormat</code> property. It also allows you to specify initial format attributes for links, selection, scrolling, and for handling the Tab and Enter keys.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/Configuration.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.formats.ITextLayoutFormat
 * @see flashx.textLayout.edit.SelectionFormat
 * @see TextFlow
 *
 */
public class Configuration implements IConfiguration {
  /**
   * Specifies the active character format attributes that initially apply for all links (LinkElement objects) in the text flow. These are defaults for new LinkElement objects that don't specify values for these attributes.
   * <p>Default is <code>null</code>.</p>
   * @see FlowElement#linkActiveFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  public function get defaultLinkActiveFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set defaultLinkActiveFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the initial character format attributes that apply to a link (LinkElement) in the text flow when the cursor hovers over it. These are defaults for new LinkElement objects that don't specify values for these attributes.
   * <p>Default is <code>null</code>.</p>
   * @see FlowElement#linkHoverFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  public function get defaultLinkHoverFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set defaultLinkHoverFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the initial link attributes for all LinkElement objects in the text flow. These are default values for new LinkElement objects that don't specify values for these attributes. The default normal format displays the link in blue with underlining.
   * @see FlowElement#linkNormalFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  public function get defaultLinkNormalFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set defaultLinkNormalFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether accessibility support is turned on or not. If <code>true</code>, screen readers can read the TextFlow contents.
   * <p>Default value is <code>false</code>.</p>
   * @see TextFlow
   *
   */
  public function get enableAccessibility():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set enableAccessibility(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the type of flow composer to attach to a new TextFlow object by default. Default value is StandardFlowComposer.
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see TextFlow
   *
   */
  public function get flowComposerClass():Class {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set flowComposerClass(value:Class):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The initial selection format (SelectionFormat) for a text flow (TextFlow) when its window has focus. Text Layout Framework uses <code>focusedSelectionFormat</code> to draw the selection when the window is active and one of the containers in the TextFlow has focus. You can override this format using <code>SelectionManager.focusedSelectionFormat</code>, if desired.
   * <p>The SelectionFormat class specifies the default values, which invert the color of the text and its background.</p>
   * @see flashx.textLayout.edit.SelectionFormat
   * @see flashx.textLayout.edit.SelectionManager#focusedSelectionFormat
   * @see TextFlow
   *
   */
  public function get focusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set focusedSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The initial selection format (SelectionFormat) for a text flow (TextFlow) when its window is inactive. Text Layout Framework uses <code>inactiveSelectionFormat</code> for drawing the selection when the window is inactive. You can override this format using <code>SelectionManager.inactiveSelectionFormat</code>, if desired.
   * <p>If you do not override <code>unfocusedSelectionFormat</code> the SelectionFormat values used are:</p>
   * <ul>
   * <li><code>color = 0xffffff</code> (white)</li>
   * <li><code>alpha = 0</code></li>
   * <li><code>blendMode = flash.display.BlendMode.DIFFERENCE</code></li></ul>
   * <p>The result is no selection is displayed.</p>
   * @see flashx.textLayout.edit.SelectionFormat
   * @see flashx.textLayout.edit.SelectionManager#inactiveSelectionFormat
   * @see TextFlow
   *
   */
  public function get inactiveSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set inactiveSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the callback used for resolving an inline graphic element. The callback takes a <code>flashx.textLayout.elements.InlineGraphicElement</code> object and returns the value to be used as the element's <code>flashx.textLayout.elements.InlineGraphicElement#source</code>. This callback provides the mechanism to delay providing an inline graphic element's source until just before it is composed.
   * <p><b>Note:</b> this callback will be invoked only if a placeholder source of String type is already set. Moreover, it may be invoked multiple times.</p>
   * @see InlineGraphicElement
   *
   */
  public function get inlineGraphicResolverFunction():Function {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set inlineGraphicResolverFunction(value:Function):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether the Enter / Return key is entered as text by Text Layout Framework, to split a paragraph for example, or the client code handles it. The client code might handle it by committing a form that has a default button for that purpose, for example.
   * <p>Default value is <code>true</code>.</p>
   */
  public function get manageEnterKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set manageEnterKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether the TAB key is entered as text by Text Layout Framework, or Flash Player or AIR handles it and turns it into a tabbed panel event.
   * <p>Default value is <code>false</code>.</p>
   */
  public function get manageTabKey():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set manageTabKey(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Policy used for deciding whether the last line of a container fits in the container, or whether it overflows. Use the constants of the OverflowPolicy class to set this property.
   * <p>Default value is OverflowPolicy.FIT_DESCENDERS, which fits the line in the composition area if the area from the top to the baseline fits.</p>
   * @see OverflowPolicy
   *
   */
  public function get overflowPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set overflowPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Requests that the process of composing text release line creation data after composing each paragraph. This request saves memory but slows down the composing process.
   * <p>Default value is <code>false</code>.</p>
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see flash.text.engine.TextBlock#releaseLineCreationData()
   *
   */
  public function get releaseLineCreationData():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set releaseLineCreationData(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies a timed delay between one scroll and the next to prevent scrolling from going too fast. This value specifies what the delay is in milliseconds. The default value is 35.
   */
  public function get scrollDragDelay():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrollDragDelay(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the default number of pixels to scroll when the user initiates auto scrolling by dragging the selection. Default value is 20.
   */
  public function get scrollDragPixels():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrollDragPixels(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the default number of pixels to scroll for Mouse wheel events. Default value is 20.
   */
  public function get scrollMouseWheelMultiplier():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrollMouseWheelMultiplier(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the default percentage of the text flow to scroll for page scrolls. Default value is 7.0 / 8.0, or .875.
   */
  public function get scrollPagePercentage():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scrollPagePercentage(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the initial format TextLayoutFormat configuration for a text flow (TextFlow object).
   * <p>Default is <code>null</code>.</p>
   * @see TextFlow
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  public function get textFlowInitialFormat():ITextLayoutFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlowInitialFormat(value:ITextLayoutFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The initial selection format that Text Layout Framework uses to draw the selection when the window is active but none of the containers in the TextFlow have focus. You can override this format using <code>SelectionManager.unfocusedSelectionFormat</code>, if desired.
   * <p>If you do not override <code>unfocusedSelectionFormat</code> the SelectionFormat values used are:</p>
   * <ul>
   * <li><code>color = 0xffffff</code> (white)</li>
   * <li><code>alpha = 0</code></li>
   * <li><code>blendMode = flash.display.BlendMode.DIFFERENCE</code></li></ul>
   * <p>The result is no selection is displayed.</p>
   * @see flashx.textLayout.edit.SelectionFormat
   * @see flashx.textLayout.edit.SelectionManager#unfocusedSelectionFormat
   * @see TextFlow
   *
   */
  public function get unfocusedSelectionFormat():SelectionFormat {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set unfocusedSelectionFormat(value:SelectionFormat):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor - creates a default configuration.
   * @param initializeWithDefaults Specifies whether to initialize the configuration with the default values. Default is <code>true</code>. If set to <code>false</code>, initializes without default values, thereby saving some objects. The <code>clone()</code> method sets this to <code>false</code> and copies the properties from the original object.
   *
   * @see flashx.textLayout.edit.SelectionFormat
   * @see flashx.textLayout.compose.StandardFlowComposer
   *
   */
  public function Configuration(initializeWithDefaults:Boolean = true) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a clone of the Configuration object.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/Configuration.html">Configuration</a></code>
   *
   */
  public function clone():Configuration {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
