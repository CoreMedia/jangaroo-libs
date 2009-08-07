package flash.geom {

/**
 * The ColorTransform class lets you adjust the color values in a display object.
 */
public class ColorTransform {
  /**
   * A decimal value that is multiplied with the alpha transparency channel value. 
   */
  public var alphaMultiplier : Number;
  /**
   * A number from -255 to 255 that is added to the alpha transparency channel value after it has been
   * multiplied by the alphaMultiplier value.
   */
  public var alphaOffset : Number;
  /**
   * A decimal value that is multiplied with the blue channel value.
   */
  public var blueMultiplier : Number;
  /**
   * A number from -255 to 255 that is added to the blue channel value after it has been multiplied by the
   * blueMultiplier value.
   */
  public var blueOffset : Number;
  /**
   * A decimal value that is multiplied with the green channel value.
   */
  public var greenMultiplier : Number;
  /**
   * A number from -255 to 255 that is added to the green channel value after it has been multiplied by the
   * greenMultiplier value.
   */
  public var greenOffset : Number;
  /**
   * A decimal value that is multiplied with the red channel value. 
   */
  public var redMultiplier : Number;
  /**
   * A number from -255 to 255 that is added to the red channel value after it has been multiplied by the
   * redMultiplier value.
   */
  public var redOffset : Number;

  /**
   * The RGB color value for a ColorTransform object.
   */
  public function get color () : uint {
    return redOffset << 16 | greenOffset << 8 || blueOffset; 
  }

  public function set color (newColor : uint) : void {
    redOffset   = newColor >> 16 & 0xF;
    greenOffset = newColor >>  8 & 0xF;
    blueOffset  = newColor       & 0xF;
    redMultiplier = greenMultiplier = blueMultiplier = 1;
  }

  /**
   * Creates a ColorTransform object for a display object. 
   */
  public function ColorTransform (redMultiplier : Number = 1, greenMultiplier : Number = 1, blueMultiplier : Number = 1,
                                  alphaMultiplier : Number = 1,
                                  redOffset : Number = 0, greenOffset : Number = 0, blueOffset : Number = 0,
                                  alphaOffset:Number = 0) {
    this.redMultiplier = redMultiplier;
    this.greenMultiplier = greenMultiplier;
    this.blueMultiplier = blueMultiplier;
    this.alphaMultiplier = alphaMultiplier;
    this.redOffset = redOffset;
    this.greenOffset = greenOffset;
    this.blueOffset = blueOffset;
    this.alphaOffset = alphaOffset;
  }

  /**
   * Concatenates the ColorTranform object specified by the second parameter with the current ColorTransform
   * object and sets the current object as the result, which is an additive combination of the two color
   * transformations.
   */
  public function concat (second:ColorTransform) : void {
    redMultiplier *= second.redMultiplier;
    greenMultiplier *= second.greenMultiplier;
    blueMultiplier *= second.blueMultiplier;
    alphaMultiplier *= second.alphaMultiplier;
    redOffset += second.redOffset;
    greenOffset += second.greenOffset;
    blueOffset += second.blueOffset;
    alphaOffset += second.alphaOffset;
  }

  private var maps : Array;

  public function getComponentMaps() : Array {
    if (!maps) {
      var offsets : Array = [redOffset, greenOffset, blueOffset, alphaOffset];
      var multipliers : Array = [redMultiplier, greenMultiplier, blueMultiplier, alphaMultiplier];
      maps = new Array(4);
      for (var c:uint = 0; c < 4; ++c) {
        var offset : Number = offsets[c];
        var multiplier : Number = multipliers[c];
        var map : Array;
        if (offset==0 && multiplier==1) {
          map = null;
        } else {
          map = new Array(256);
          for (var b:uint = 0; b < 256; ++b) {
            var val : Number = offset + multiplier * b;
            map[b] = val <= 0 ? 0 : val <= 255 ? val : 255;
          }
        }
        maps[c] = map;
      }
    }
    return maps;
  }

  /**
   * Formats and returns a string that describes all of the properties of the ColorTransform object.
   */
  public function toString () : String {
    return "[ColorTransform("+[redMultiplier, greenMultiplier, blueMultiplier, alphaMultiplier,
      redOffset, greenOffset, blueOffset, alphaOffset].join(", ")+")]";
  }

}
}
