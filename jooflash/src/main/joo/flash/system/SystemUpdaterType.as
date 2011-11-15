package flash.system {


/**
 * The SystemUpdaterType class provides constants for a system update. These constants are used in the <code>SystemUpdater.update()</code> function.
 * <p><b>Note</b>: The SystemUpdater API is supported on desktop platforms.</p>
 */
public class SystemUpdaterType {
  /**
   * Updates the DRM module.
   */
  public static const DRM:String = "drm";
  /**
   * Updates the player runtime itself.
   */
  public static const SYSTEM:String = "system";
}
}
