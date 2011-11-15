package flash.text.engine {


/**
 * The JustificationStyle class is an enumeration of constant values for setting the <code>justificationStyle</code> property of the EastAsianJustifier class. These constants specify options for handling kinsoku characters, which are Japanese characters that cannot appear at either the beginning or end of a line.
 * @see EastAsianJustifier#justificationStyle
 *
 */
public final class JustificationStyle {
  /**
   * Bases justification on either expanding or compressing the line, whichever gives a result closest to the desired width.
   */
  public static const PRIORITIZE_LEAST_ADJUSTMENT:String = "prioritizeLeastAdjustment";
  /**
   * Bases justification on compressing kinsoku at the end of the line, or expanding it if no kinsoku occurs or if that space is insufficient.
   */
  public static const PUSH_IN_KINSOKU:String = "pushInKinsoku";
  /**
   * Bases justification on expanding the line.
   */
  public static const PUSH_OUT_ONLY:String = "pushOutOnly";
}
}
