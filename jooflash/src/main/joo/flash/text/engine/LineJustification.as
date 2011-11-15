package flash.text.engine {


/**
 * The LineJustification class is an enumeration of constant values used in setting the <code>lineJustfication</code> property of the TextJustifier subclasses.
 * @see TextJustifier#lineJustification
 *
 */
public final class LineJustification {
  /**
   * Justify all but the last line.
   */
  public static const ALL_BUT_LAST:String = "allButLast";
  /**
   * Justify all lines.
   */
  public static const ALL_INCLUDING_LAST:String = "allIncludingLast";
  /**
   * Do not justify lines.
   */
  public static const UNJUSTIFIED:String = "unjustified";
}
}
