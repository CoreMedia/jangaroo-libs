package flashx.textLayout.compose {


/**
 * The TextFlowLineLocation class is an enumeration class that defines constants for specifying the location of a line within a paragraph.
 *
 */
public final class TextFlowLineLocation {
  /**
   * Specifies the first line in a paragraph.
   */
  public static const FIRST:uint = 1;
  /**
   * Specifies the last line in a paragraph.
   */
  public static const LAST:uint = 4;
  /**
   * Specifies a middle line in a paragraph - neither the first nor the last line.
   */
  public static const MIDDLE:uint = 2;
  /**
   * Specifies both the first and last lines in a paragraph.
   */
  public static const ONLY:uint = 5;
}
}
