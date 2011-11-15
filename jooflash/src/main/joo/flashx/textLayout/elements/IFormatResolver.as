package flashx.textLayout.elements {
import flashx.textLayout.formats.ITextLayoutFormat;

/**
 * Interface to a format resolver. An implementation allows you to attach a styling mechanism of your choosing, such as Flex CSS styling and named styles, to a TextFlow.
 * @see TextFlow#formatResolver
 *
 */
public interface IFormatResolver {
  /**
   * Returns the format resolver when a TextFlow is copied.
   * @param oldFlow <code>oldFlow:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   * @param newFlow <code>newFlow:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   *
   * @return the format resolver for the copy of the TextFlow.
   *
   */
  function getResolverForNewFlow(oldFlow:TextFlow, newFlow:TextFlow):IFormatResolver;

  /**
   * Invalidates cached formatting information on this element because, for example, the <code>parent</code> changed, or the <code>id</code> or the <code>styleName</code> changed.
   * @param target <code>target:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Object.html">Object</a></code>
   *
   */
  function invalidate(target:Object):void;

  /**
   * Invalidates any cached formatting information for a TextFlow so that formatting must be recomputed.
   * @param textFlow <code>textFlow:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   *
   */
  function invalidateAll(textFlow:TextFlow):void;

  /**
   * Given a FlowElement or ContainerController object, return any format settings for it.
   * @param target <code>target:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Object.html">Object</a></code>
   *
   * @return format settings for the specified object.
   *
   */
  function resolveFormat(target:Object):ITextLayoutFormat;

  /**
   * Given a FlowElement or ContainerController object and the name of a format property, return the format value or <code>undefined</code> if the value is not found.
   * @param target <code>target:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Object.html">Object</a></code>
   * @param userFormat <code>userFormat:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @return the value of the specified format for the specified object.
   *
   */
  function resolveUserFormat(target:Object, userFormat:String):*;
}
}
