package flash.desktop {


/**
 * The ClipboardTransferMode class defines constants for the modes used as values of the <code>transferMode</code> parameter of the <code>Clipboard.getData()</code> method.
 * <p>The transfer mode provides a hint about whether to return a reference or a copy when accessing an object contained on a clipboard.</p>
 * @see Clipboard#getData()
 *
 */
public class ClipboardTransferMode {
  /**
   * The Clipboard object should only return a copy.
   */
  public static const CLONE_ONLY:String = "cloneOnly";
  /**
   * The Clipboard object should return a copy if available and a reference if not.
   */
  public static const CLONE_PREFERRED:String = "clonePreferred";
  /**
   * The Clipboard object should only return a reference.
   */
  public static const ORIGINAL_ONLY:String = "originalOnly";
  /**
   * The Clipboard object should return a reference if available and a copy if not.
   */
  public static const ORIGINAL_PREFERRED:String = "originalPreferred";
}
}
