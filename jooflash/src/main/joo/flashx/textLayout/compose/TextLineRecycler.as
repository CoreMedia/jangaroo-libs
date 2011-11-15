package flashx.textLayout.compose {
import flash.text.engine.TextLine;

/**
 * The TextLineRecycler class provides support for recycling of TextLines. Some player versions support a recreateTextLine. Passing TextLines to the recycler makes them available for reuse. This improves Player performance.
 */
public class TextLineRecycler {
  /**
   * Controls if the TLF recycler enabled. It can only be enabled in 10.1 or later players.
   */
  public static function get textLineRecyclerEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public static function set textLineRecyclerEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Add a TextLine to the pool for reuse. TextLines for reuse should have null userData and null parent.
   * @param textLine <code>textLine:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TextLine.html">flash.text.engine:TextLine</a></code>
   *
   */
  public static function addLineForReuse(textLine:TextLine):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Return a TextLine from the pool for reuse.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TextLine.html">flash.text.engine:TextLine</a></code>
   *
   */
  public static function getLineForReuse():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
