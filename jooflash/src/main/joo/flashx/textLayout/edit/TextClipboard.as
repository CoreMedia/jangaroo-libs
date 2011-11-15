package flashx.textLayout.edit {
/**
 * The TextClipboard class copies and pastes TextScrap objects to and from the system clipboard.
 * <p>When you copy a TextScrap to the TextClipboard, the information is copied to the system clipboard in two clipboard formats. One format is an XML string expressing the copied TextScrap object in Text Layout Markup syntax. This clipboard object uses the format name: "TEXT_LAYOUT_MARKUP". The second format is a plain-text string, which uses the standard Clipboard.TEXT_FORMAT name.</p>
 * <p>The methods of the TextClipboard class are static functions, you do not need to create an instance of TextClipboard.</p>
 * @see flash.desktop.Clipboard
 *
 */
public class TextClipboard {
  /**
   * Gets any text on the system clipboard as a TextScrap object.
   * <p>If the "TEXT_LAYOUT_MARKUP" format is available, this method converts the formatted string into a TextScrap and returns it. Otherwise, if the Clipboard.TEXT_Format is available, this method converts the plain-text string into a TextScrap. If neither clipboard format is available, this method returns <code>null</code>.</p>
   * <p>Flash Player requires that the <code>getContents()</code> method be called in a paste event handler. In AIR, this restriction only applies to content outside of the application security sandbox.</p>
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/edit/TextScrap.html">flashx.textLayout.edit:TextScrap</a></code>
   *
   * @see flash.events.Event#PASTE
   *
   */
  public static function getContents():TextScrap {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Puts a TextScrap onto the system clipboard.
   * <p>The TextScrap is placed onto the system clipboard as both a Text Layout Markup representation and a plain text representation.</p>
   * <p>Flash Player requires a user event (such as a key press or mouse click) before calling <code>setContents()</code>. In AIR, this restriction only applies to content outside of the application security sandbox.</p>
   * @param scrap The TextScrap to paste into the clipboard.
   *
   * @see flash.events.Event#COPY
   * @see flash.events.Event#CUT
   *
   */
  public static function setContents(scrap:TextScrap):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
