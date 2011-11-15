package flash.text.engine {


/**
 * The SpaceJustifier class represents properties that control the justification options for text lines in a text block.
 * <p>Use the constructor <code>new SpaceJustifier()</code> to create a SpaceJustifier object before setting its properties. Setting the properties of a SpaceJustifier object after you apply it to a TextBlock does not invalidate the TextBlock.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/SpaceJustifier.html#includeExamplesSummary">View the examples</a></p>
 * @see LineJustification
 * @see TextBlock#textJustifier
 * @see TextJustifier
 *
 */
public final class SpaceJustifier extends TextJustifier {
  /**
   * Specifies whether to use letter spacing during justification.
   * <p>The default value is <code>false</code></p>
   */
  public function get letterSpacing():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set letterSpacing(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the maximum spacing (as a multiplier of the width of a normal space) between words to use during justification. If <code>letterSpacing</code> is <code>true</code>, letter spacing will be used after the spaces between words reach the maximum. If <code>letterSpacing</code> is <code>false</code>, the spaces between words will be expanded beyond the maximum.
   * <p>The default value is <code>1.5</code></p>
   * @throws ArgumentError The <code>value</code> specified is less than <code>optimumSpacing</code>.
   *
   */
  public function get maximumSpacing():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set maximumSpacing(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the minimum spacing (as a multiplier of the width of a normal space) between words to use during justification.
   * <p>The default value is <code>0.5</code></p>
   * @throws ArgumentError The <code>value</code> specified is less than zero or greater than <code>optimumSpacing</code>.
   *
   */
  public function get minimumSpacing():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set minimumSpacing(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the optimum spacing (as a multiplier of the width of a normal space) between words to use during justification.
   * <p>The default value is <code>1.0</code></p>
   * @throws ArgumentError The <code>value</code> specified is less than <code>minimumSpacing</code> or greater than <code>maximumSpacing</code>.
   *
   */
  public function get optimumSpacing():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set optimumSpacing(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a SpaceJustifier object. The LineJustification class contains constants for specifying the types of line justification that you can apply.
   * @param locale The locale to determine the justification rules. The default value is <code>"en"</code>.
   * @param lineJustification The type of line justification for the paragraph. Use <code>LineJustification</code> constants for this property. The default value is <code>LineJustification.UNJUSTIFIED</code>.
   * @param letterSpacing Specifies whether to use letter spacing during justification. The default value is <code>false</code>.
   *
   * @throws ArgumentError The <code>locale</code> specified is <code>null</code> or too short to represent a valid locale.
   * @throws ArgumentError The <code>lineJustification</code> specified is not a member of <code>LineJustification</code>.
   *
   * @see LineJustification
   *
   */
  public function SpaceJustifier(locale:String = "en", lineJustification:String = "unjustified", letterSpacing:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a cloned copy of the SpaceJustifier.
   * @return A copy of the <code>SpaceJustifier</code> object.
   *
   */
  override public function clone():TextJustifier {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
