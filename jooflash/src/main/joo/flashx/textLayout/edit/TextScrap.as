package flashx.textLayout.edit {
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.elements.TextRange;

/**
 * The TextScrap class represents a fragment of a text flow.
 * <p>A TextScrap is a holding place for all or part of a TextFlow. A range of text can be copied from a TextFlow into a TextScrap, and pasted from the TextScrap into another TextFlow.</p>
 * @see flashx.textLayout.elements.TextFlow
 * @see SelectionManager
 *
 */
public class TextScrap {
  /**
   * Creates a TextScrap object.
   * <p>Use the <code>createTextScrap()</code> method to create a TextScrap object from a range of text represented by a TextRange object.</p>
   * @param textFlow if set, the new TextScrap object contains the entire text flow. Otherwise, the TextScrap object is empty.
   *
   */
  public function TextScrap(textFlow:TextFlow = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a duplicate copy of this TextScrap object.
   * @return TextScrap A copy of this TextScrap.
   *
   */
  public function clone():TextScrap {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a TextScrap object from a range of text represented by a TextRange object.
   * @param range the TextRange object representing the range of text to copy.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/TextScrap.html">flashx.textLayout.edit:TextScrap</a></code>
   *
   */
  public static function createTextScrap(range:TextRange):TextScrap {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
