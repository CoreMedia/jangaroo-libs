package flashx.textLayout.factory {
import flash.geom.Rectangle;

import flashx.textLayout.compose.ISWFContext;

/**
 * The TextLineFactoryBase class serves as the base class for the Text Layout Framework text line factories.
 * <p><b>Note:</b> Application code does not typically need to create or use a TextLineFactoryBase object directly. Use one of the derived text factory classes instead.</p>
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public class TextLineFactoryBase {
  /**
   * The rectangle within which text lines are created.
   */
  public function get compositionBounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set compositionBounds(value:Rectangle):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies how lines are created when the composition bounds are not large enough.
   * <p>If set to <code>ScrollPolicy.ON</code> or <code>ScrollPolicy.AUTO</code>, all lines are created. It is the your responsibility to scroll lines in the viewable area (and to mask lines outside this area, if necessary). If set to <code>ScrollPolicy.OFF</code>, then only lines that fit within the composition bounds are created.</p>
   * <p>If the <code>truncationOptions</code> property is set, the scroll policy is ignored (and treated as <code>ScrollPolicy.OFF</code>).</p>
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see flashx.textLayout.container.ScrollPolicy
   * @see #truncationOptions
   *
   */
  public function get horizontalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set horizontalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates whether text was truncated when lines were last created.
   */
  public function get isTruncated():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ISWFContext instance used to make FTE calls as needed.
   * <p>By default, the ISWFContext implementation is this FlowComposerBase object. Applications can provide a custom implementation to use fonts embedded in a different SWF file or to cache and reuse text lines.</p>
   * @see flashx.textLayout.compose.ISWFContext
   *
   */
  public function get swfContext():ISWFContext {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set swfContext(value:ISWFContext):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the options for truncating the text if it doesn't fit in the composition bounds.
   */
  public function get truncationOptions():TruncationOptions {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set truncationOptions(value:TruncationOptions):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies how lines are created when the composition bounds are not large enough.
   * <p>If set to <code>ScrollPolicy.ON</code> or <code>ScrollPolicy.AUTO</code>, all lines are created. It is the your responsibility to scroll lines in the viewable area (and to mask lines outside this area, if necessary). If set to <code>ScrollPolicy.OFF</code>, then only lines that fit within the composition bounds are created.</p>
   * <p>If the <code>truncationOptions</code> property is set, the scroll policy is ignored (and treated as <code>ScrollPolicy.OFF</code>).</p>
   * @see flashx.textLayout.compose.StandardFlowComposer
   * @see flashx.textLayout.container.ScrollPolicy
   * @see #truncationOptions
   *
   */
  public function get verticalScrollPolicy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set verticalScrollPolicy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Base-class constructor for text line factories.
   * <p><b>Note:</b> Application code does not typically need to create or use a TextLineFactoryBase object directly. Use one of the derived text factory classes instead.</p>
   */
  public function TextLineFactoryBase() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The smallest rectangle in which the layed-out content fits.
   * <p><b>Note:</b> Truncated lines are not included in the size calculation.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/geom/Rectangle.html">Rectangle</a></code>
   *
   */
  public function getContentBounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
