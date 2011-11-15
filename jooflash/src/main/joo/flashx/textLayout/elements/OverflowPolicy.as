package flashx.textLayout.elements {


/**
 * The OverflowPolicy class defines a set of constants for the <code>overflowPolicy</code> property of the IConfiguration class. This defines how the composer will treat lines at the end of the composition area.
 */
public final class OverflowPolicy {
  /**
   * Fit the line in the composition area if any part of the line fits.
   */
  public static const FIT_ANY:String = "fitAny";
  /**
   * Fit the line in the composition area if the area from the top to the baseline fits.
   */
  public static const FIT_DESCENDERS:String = "fitDescenders";
}
}
