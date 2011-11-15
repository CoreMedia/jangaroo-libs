package flashx.textLayout.utils {
import flashx.textLayout.elements.TextFlow;
import flashx.textLayout.elements.TextRange;

/**
 * Utilities for manipulating a TextRange The methods of this class are static and must be called using the syntax <code>NavigationUtil.method(<i>parameter</i>)</code>.
 */
public final class NavigationUtil {
  /**
   * Sets the TextRange at the end of the document.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function endOfDocument(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange at the end of the line.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function endOfLine(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange at the end of the paragraph.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function endOfParagraph(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the absolute position of the next atom.
   * @param flowRoot <code>flowRoot:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   * @param absolutePos <code>absolutePos:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   */
  public static function nextAtomPosition(flowRoot:TextFlow, absolutePos:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange forward by one character.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function nextCharacter(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange down one line
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function nextLine(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange down one page.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function nextPage(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange forward by one word.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function nextWord(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the absolute position of the beginning of the next word.
   * @param flowRoot <code>flowRoot:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   * @param absolutePos <code>absolutePos:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   */
  public static function nextWordPosition(flowRoot:TextFlow, absolutePos:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the absolute position of the previous atom.
   * @param flowRoot <code>flowRoot:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   * @param absolutePos <code>absolutePos:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   */
  public static function previousAtomPosition(flowRoot:TextFlow, absolutePos:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange backward by one character.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function previousCharacter(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange up one line.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function previousLine(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange up one page.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function previousPage(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange backward by one word.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function previousWord(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns absolute position of the beginning of the previous word.
   * @param flowRoot <code>flowRoot:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/elements/TextFlow.html">flashx.textLayout.elements:TextFlow</a></code>
   * @param absolutePos <code>absolutePos:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/int.html">int</a></code>
   *
   */
  public static function previousWordPosition(flowRoot:TextFlow, absolutePos:int):int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange at the beginning of the document.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function startOfDocument(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange at the beginning of the line.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function startOfLine(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the TextRange at the beginning of the paragraph.
   * @param range Indicates that only activeIndex should move
   * @param extendSelection <code>extendSelection:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   * @return true if selection changed.
   *
   */
  public static function startOfParagraph(range:TextRange, extendSelection:Boolean = false):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
