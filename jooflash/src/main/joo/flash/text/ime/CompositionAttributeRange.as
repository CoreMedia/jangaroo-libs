package flash.text.ime {


/**
 * The CompositionAttributeRange class represents a range of composition attributes for use with IME (input method editor) events. For example, when editing text in the IME, the text is divided by the IME into composition ranges. These composition ranges are flagged as selected (such as currently being lengthened, shortened, or edited), and/or converted (meaning the range went through the IME dictionary lookup, already).
 * <p>By convention, the client should adorn these composition ranges with underlining or highlighting according to the flags.</p>
 * <p>For example:</p>
 * <listing>
 *      !converted              = thick gray underline (raw text)
 *      !selected &amp;&amp; converted  = thin black underline
 *       selected &amp;&amp; converted  = thick black underline
 * </listing>
 * @see IIMEClient
 *
 */
public final class CompositionAttributeRange {
  /**
   * A property defining the current clause has been processed by the IME and the clause is waiting to be accepted or confirmed by the user.
   */
  public var converted:Boolean;
  /**
   * The position of the end of the composition clause, relative to the beginning of the inline edit session. For example, <code>0</code> equals the start of the text the IME reads (however, text might exist before that position in the edit field).
   */
  public var relativeEnd:int;
  /**
   * The relative start position from the beginning of the current inline editing session. For example, <code>0</code> equals the start of the text the IME reads (however, text might exist before that position in the edit field).
   */
  public var relativeStart:int;
  /**
   * A property defining the current composition clause is active and lengthened or shortened or edited with the IME while the neighboring clauses are not changing.
   */
  public var selected:Boolean;

  /**
   * Creates a CompositionAttributeRange object.
   * @param relativeStart The zero based index of the first character included in the character range.
   * @param relativeEnd The zero based index of the last character included in the character range.
   * @param selected Defines the current composition clause as active or not.
   * @param converted Defines the current clause as processed by the IME and waiting for user confirmation.
   *
   */
  public function CompositionAttributeRange(relativeStart:int, relativeEnd:int, selected:Boolean, converted:Boolean) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
