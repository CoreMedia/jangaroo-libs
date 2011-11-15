package flashx.textLayout.elements {


/**
 * The InlineGraphicElementStatus class defines a set of constants for checking the value of <code>InlineGraphicElement.status</code>.
 * @see InlineGraphicElement#status
 *
 */
public final class InlineGraphicElementStatus {
  /**
   * An error occurred during loading of a referenced graphic.
   */
  public static const ERROR:String = "error";
  /**
   * Graphic element is an URL that has not been loaded.
   */
  public static const LOAD_PENDING:String = "loadPending";
  /**
   * Load has been initiated (but not completed) on a graphic element that is a URL.
   */
  public static const LOADING:String = "loading";
  /**
   * Graphic is completely loaded and properly sized.
   */
  public static const READY:String = "ready";
  /**
   * Graphic element with auto or percentage width/height has completed loading but has not been recomposed. At the next recompose the actual size of the graphic element is calculated.
   */
  public static const SIZE_PENDING:String = "sizePending";
}
}
