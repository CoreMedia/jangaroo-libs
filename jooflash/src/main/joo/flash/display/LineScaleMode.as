package flash.display {
/**
 * The LineScaleMode class provides values for the scaleMode parameter in the Graphics.lineStyle() method.
 */
public class LineScaleMode extends Object
{
  /**
   * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line scales only
   * vertically.
   */
  public static const HORIZONTAL : String = "horizontal";
  /**
   * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line never
   * scales.
   */
  public static const NONE : String = "none";
  /**
   * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line always
   * scales when the object is scaled (the default).
   */
  public static const NORMAL : String = "normal";
  /**
   * With this setting used as the scaleMode parameter of the lineStyle() method, the thickness of the line scales only
   * horizontally.
   */
  public static const VERTICAL : String = "vertical";

}
}
