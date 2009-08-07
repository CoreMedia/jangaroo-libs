package flash.display {

/**
 * The CapsStyle class is an enumeration of constant values that specify the caps style to use in drawing lines.
 * @see flash.display.Graphics#lineStyle()
 */
public class CapsStyle {
  /**
   * Used to specify no caps in the caps parameter of the flash.display.Graphics.lineStyle() method.
   */
  public static const NONE : String = "butt";
  /**
   * Used to specify round caps in the caps parameter of the flash.display.Graphics.lineStyle() method.
   */
  public static const ROUND : String = "round";
  /**
   * Used to specify square caps in the caps parameter of the flash.display.Graphics.lineStyle() method.
   */
  public static const SQUARE : String = "square";

}
}
