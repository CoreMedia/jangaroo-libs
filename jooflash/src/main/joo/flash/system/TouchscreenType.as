package flash.system {


/**
 * The TouchscreenType class is an enumeration class that provides values for the different types of touch screens.
 * <p>Use the values defined by the TouchscreenType class with the <code>Capabilities.touchscreenType</code> property.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/system/TouchscreenType.html#includeExamplesSummary">View the examples</a></p>
 * @see Capabilities#touchscreenType
 * @see flash.ui.Mouse#supportsCursor
 *
 */
public final class TouchscreenType {
  /**
   * A touchscreen designed to respond to finger touches.
   */
  public static const FINGER:String = "finger";
  /**
   * The computer or device does not have a supported touchscreen.
   */
  public static const NONE:String = "none";
  /**
   * A touchscreen designed for use with a stylus.
   */
  public static const STYLUS:String = "stylus";
}
}
