package flash.display {


/**
 * The GraphicsPathWinding class provides values for the <code>flash.display.GraphicsPath.winding</code> property and the <code>flash.display.Graphics.drawPath()</code> method to determine the direction to draw a path. A clockwise path is positively wound, and a counter-clockwise path is negatively wound:
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/winding_positive_negative.gif" /></p>
 * <p>When paths intersect or overlap, the winding direction determines the rules for filling the areas created by the intersection or overlap:</p>
 * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/winding_rules_evenodd_nonzero.gif" /></p>
 * @see GraphicsPath#winding
 * @see Graphics#drawPath()
 *
 */
public final class GraphicsPathWinding {
  /**
   * Establishes the even-odd winding type. The even-odd winding type is the rule used by all of the original drawing API and is the default type for the <code>flash.display.Graphics.drawPath()</code> method. Any overlapping paths will alternate between open and closed fills. If two squares drawn with the same fill intersect, the area of the intersection is not filled. Adjacent areas are not the same (neither both filled nor both unfilled).
   */
  public static const EVEN_ODD:String = "evenOdd";
  /**
   * Establishes the non-zero winding type. The non-zero winding type determines that when paths of opposite winding intersect, the intersection area is unfilled (as with the even-odd winding type). For paths of the same winding, the intersection area is filled.
   */
  public static const NON_ZERO:String = "nonZero";
}
}
