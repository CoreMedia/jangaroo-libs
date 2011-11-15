package flash.text {


/**
 * The TextExtent class contains information about the extents of some text in a text field. Objects of this class are returned by the <code>TextFormat.getTextExtent</code> method.
 */
public class TextExtent {
  /**
   *
   */
  public var ascent:Number;
  /**
   *
   */
  public var descent:Number;
  /**
   *
   */
  public var height:Number;
  /**
   *
   */
  public var textFieldHeight:Number;
  /**
   *
   */
  public var textFieldWidth:Number;
  /**
   *
   */
  public var width:Number;

  /**
   *
   * @param width <code>width:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   * @param height <code>height:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   * @param textFieldWidth <code>textFieldWidth:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   * @param textFieldHeight <code>textFieldHeight:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   * @param ascent <code>ascent:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   * @param descent <code>descent:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Number.html">Number</a></code>
   *
   */
  public function TextExtent(width:Number, height:Number, textFieldWidth:Number, textFieldHeight:Number, ascent:Number, descent:Number) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
