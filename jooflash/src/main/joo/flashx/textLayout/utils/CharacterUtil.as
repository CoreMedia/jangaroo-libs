package flashx.textLayout.utils {


/**
 * Utilities for managing and getting information about characters. The methods of this class are static and must be called using the syntax <code>CharacterUtil.method(<i>parameter</i>)</code>.
 */
public final class CharacterUtil {
  /**
   * Returns <code>true</code> if the <code>charCode</code> argument is a high word in a surrogate pair. A surrogate pair represents a character with a code point that requires more than sixteen bits to express and thus requires a combination of two 16-bit words, a high surrogate and a low surrogate, to embody its code point.
   * <p>This method can be used when processing a series of characters to ensure that you do not inadvertently divide a surrogate pair into incomplete halves.</p>
   * @param charCode An integer that represents a character code. Character codes are usually represented in hexadecimal format. For example, the space character's character code can be represented by the number <code>0x0020</code>.
   *
   * @return <code>true</code> if <code>charCode</code> is the high surrogate in a surrogate pair.
   *
   */
  public static function isHighSurrogate(charCode:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns <code>true</code> if the <code>charCode</code> argument is a low word in a surrogate pair. A surrogate pair represents a character with a code point that requires more than sixteen bits to express and thus requires a combination of two 16-bit words, a high surrogate and a low surrogate, to embody its code point.
   * <p>This method can be used when processing a series of characters to ensure that you do not inadvertently divide a surrogate pair into incomplete halves.</p>
   * @param charCode An integer that represents a character code. Character codes are usually represented in hexadecimal format. For example, the space character's character code can be represented by the number <code>0x0020</code>.
   *
   * @return <code>true</code> if <code>charCode</code> is the low surrogate in a surrogate pair.
   *
   */
  public static function isLowSurrogate(charCode:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns <code>true</code> if <code>charCode</code> is a whitespace character.
   * <p>The following table describes all characters that this method considers a whitespace character.</p>
   * <table>
   * <tr><th>Character Code</th><th>Unicode Character Name</th><th>Category</th></tr>
   * <tr>
   * <td><code>0x0020</code></td>
   * <td>SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x1680</code></td>
   * <td>OGHAM SPACE MARK</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x180E</code></td>
   * <td>MONGOLIAN VOWEL SEPARATOR</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2000</code></td>
   * <td>EN QUAD</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2001</code></td>
   * <td>EM QUAD</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2002</code></td>
   * <td>EN SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2003</code></td>
   * <td>EM SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2004</code></td>
   * <td>THREE-PER-EM SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2005</code></td>
   * <td>FOUR-PER-EM SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2006</code></td>
   * <td>SIX-PER-EM SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2007</code></td>
   * <td>FIGURE SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2008</code></td>
   * <td>PUNCTUATION SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2009</code></td>
   * <td>THIN SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x200A</code></td>
   * <td>HAIR SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x202F</code></td>
   * <td>NARROW NO-BREAK SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x205F</code></td>
   * <td>MEDIUM MATHEMATICAL SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x3000</code></td>
   * <td>IDEOGRAPHIC SPACE</td>
   * <td>Space Separator</td></tr>
   * <tr>
   * <td><code>0x2028</code></td>
   * <td>LINE SEPARATOR</td>
   * <td>Line Separator</td></tr>
   * <tr>
   * <td><code>0x2029</code></td>
   * <td>PARAGRAPH SEPARATOR</td>
   * <td>Paragraph Separator</td></tr>
   * <tr>
   * <td><code>0x0009</code></td>
   * <td>CHARACTER TABULATION</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x000A</code></td>
   * <td>LINE FEED</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x000B</code></td>
   * <td>LINE TABULATION</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x000C</code></td>
   * <td>FORM FEED</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x000D</code></td>
   * <td>CARRIAGE RETURN</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x0085</code></td>
   * <td>NEXT LINE</td>
   * <td>Other</td></tr>
   * <tr>
   * <td><code>0x00A0</code></td>
   * <td>NO-BREAK SPACE</td>
   * <td>Other</td></tr></table>
   * @param charCode An integer that represents a character code. Character codes are usually represented in hexadecimal format. For example, the space character's character code can be represented by the number <code>0x0020</code>.
   *
   * @return <code>true</code> if <code>charCode</code> is a whitespace character.
   *
   */
  public static function isWhitespace(charCode:int):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
