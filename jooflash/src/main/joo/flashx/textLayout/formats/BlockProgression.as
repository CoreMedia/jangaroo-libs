package flashx.textLayout.formats {


/**
 * Defines values for the <code>blockProgression</code> property of the <code>TextLayouFormat</code> class. BlockProgression specifies the direction in which lines are placed in the container.
 * @see TextLayoutFormat#blockProgression
 *
 */
public final class BlockProgression {
  /**
   * Specifies right to left block progression. Lines are laid out vertically starting at the right edge of the container and progressing leftward. Used for vertical text, for example, vertical Chinese or Japanese text.
   */
  public static const RL:String = "rl";
  /**
   * Specifies top to bottom block progression. Lines are laid out horizontally starting at the top of the container and progressing down to the bottom. Used for horizontal text.
   */
  public static const TB:String = "tb";
}
}
