package flashx.textLayout.elements {
import flashx.textLayout.edit.SelectionFormat;
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * Read-only interface to a configuration object. Used by TextFlow to guarantee it has an unchangeable configuration once its constructed.
 */
public interface IConfiguration {
  /**
   * Specifies the active character format attributes that initially apply for all links (LinkElement objects) in the text flow. These are defaults for new LinkElement objects that don't specify values for these attributes.
   * <p>Default is <code>null</code>.</p>
   * @see FlowElement#linkActiveFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  function get defaultLinkActiveFormat():ITextLayoutFormat;

  /**
   * Specifies the initial character format attributes that apply to a link (LinkElement) in the text flow when the cursor hovers over it. These are defaults for new LinkElement objects that don't specify values for these attributes.
   * <p>Default is <code>null</code>.</p>
   * @see FlowElement#linkHoverFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  function get defaultLinkHoverFormat():ITextLayoutFormat;

  /**
   * Specifies the initial link attributes for all LinkElement objects in the text flow. These are default values for new LinkElement objects that don't specify values for these attributes. The default normal format displays the link in blue with underlining.
   * @see FlowElement#linkNormalFormat
   * @see flashx.textLayout.formats.ITextLayoutFormat
   * @see LinkElement
   *
   */
  function get defaultLinkNormalFormat():ITextLayoutFormat;

  /**
   * Specifies whether accessibility support is turned on or not. If <code>true</code>, screen readers can read the TextFlow contents.
   * <p>Default value is <code>false</code>.</p>
   * @see TextFlow
   *
   */
  function get enableAccessibility():Boolean;

  /**
   * Specifies the type of flow composer to attach to a new TextFlow object by default. Default value is StandardFlowComposer.
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see TextFlow
   *
   */
  function get flowComposerClass():Class;

  /**
   * The initial selection format (SelectionFormat) for a text flow (TextFlow) when its window has focus. Text Layout Framework uses <code>focusedSelectionFormat</code> to draw the selection when the window is active and one of the containers in the TextFlow has focus. You can override this format using <code>SelectionManager.focusedSelectionFormat</code>, if desired.
   * <p>The SelectionFormat class specifies the default values, which invert the color of the text and its background.</p>
   * @see flashx.textLayout.edit.SelectionFormat
   * @see flashx.textLayout.edit.SelectionManager#focusedSelectionFormat
   * @see TextFlow
   *
   */
  function get focusedSelectionFormat():SelectionFormat;

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
  function get inactiveSelectionFormat():SelectionFormat;

  /**
   * Specifies the callback used for resolving an inline graphic element. The callback takes a <code>flashx.textLayout.elements.InlineGraphicElement</code> object and returns the value to be used as the element's <code>flashx.textLayout.elements.InlineGraphicElement#source</code>. This callback provides the mechanism to delay providing an inline graphic element's source until just before it is composed.
   * <p><b>Note:</b> this callback will be invoked only if a placeholder source of String type is already set. Moreover, it may be invoked multiple times.</p>
   * @see InlineGraphicElement
   *
   */
  function get inlineGraphicResolverFunction():Function;

  /**
   * Specifies whether the Enter / Return key is entered as text by Text Layout Framework, to split a paragraph for example, or the client code handles it. The client code might handle it by committing a form that has a default button for that purpose, for example.
   * <p>Default value is <code>true</code>.</p>
   */
  function get manageEnterKey():Boolean;

  /**
   * Specifies whether the TAB key is entered as text by Text Layout Framework, or Flash Player or AIR handles it and turns it into a tabbed panel event.
   * <p>Default value is <code>false</code>.</p>
   */
  function get manageTabKey():Boolean;

  /**
   * Policy used for deciding whether the last line of a container fits in the container, or whether it overflows. Use the constants of the OverflowPolicy class to set this property.
   * <p>Default value is OverflowPolicy.FIT_DESCENDERS, which fits the line in the composition area if the area from the top to the baseline fits.</p>
   * @see OverflowPolicy
   *
   */
  function get overflowPolicy():String;

  /**
   * Requests that the process of composing text release line creation data after composing each paragraph. This request saves memory but slows down the composing process.
   * <p>Default value is <code>false</code>.</p>
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see flash.text.engine.TextBlock#releaseLineCreationData()
   *
   */
  function get releaseLineCreationData():Boolean;

  /**
   * Specifies a timed delay between one scroll and the next to prevent scrolling from going too fast. This value specifies what the delay is in milliseconds. The default value is 35.
   */
  function get scrollDragDelay():Number;

  /**
   * Specifies the default number of pixels to scroll when the user initiates auto scrolling by dragging the selection. Default value is 20.
   */
  function get scrollDragPixels():Number;

  /**
   * Specifies the default number of pixels to scroll for Mouse wheel events. Default value is 20.
   */
  function get scrollMouseWheelMultiplier():Number;

  /**
   * Specifies the default percentage of the text flow to scroll for page scrolls. Default value is 7.0 / 8.0, or .875.
   */
  function get scrollPagePercentage():Number;

  /**
   * Specifies the initial format TextLayoutFormat configuration for a text flow (TextFlow object).
   * <p>Default is <code>null</code>.</p>
   * @see TextFlow
   * @see flashx.textLayout.formats.ITextLayoutFormat
   *
   */
  function get textFlowInitialFormat():ITextLayoutFormat;

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
  function get unfocusedSelectionFormat():SelectionFormat;
}
}
