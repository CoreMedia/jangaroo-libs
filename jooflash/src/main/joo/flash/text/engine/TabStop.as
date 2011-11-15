package flash.text.engine {


/**
 * The TabStop class represents the properties of a tab stop in a text block. You assign tab stops as a Vector of TabStop objects to the <code>TextBlock.tabStops</code> property.
 * <p>Setting the properties of a TabStop object after you apply it to a TextBlock does not invalidate the TextBlock.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TabStop.html#includeExamplesSummary">View the examples</a></p>
 * @see TextBlock#tabStops
 * @see TabAlignment
 *
 */
public final class TabStop {
  /**
   * Specifies the tab alignment for this tab stop. Use the constants in the TabAlignment class to set this property.
   * <p>The default value is <code>TabAlignment.START</code>.</p>
   * <p>Use the <code>lineOffset</code> argument to <code>TextBlock.createTextLine()</code> to adjust the tabs if the origin of the line does not align with other lines that share the same tab stops.</p>
   * <p>Use the following constants from the TabAlignment class to set the value for this property:</p>
   * <table>
   * <tr><th>String value</th><th>Description</th></tr>
   * <tr>
   * <td><code>TabAlignment.START</code></td>
   * <td>The <code>position</code> property specifies the number of pixels that the <i>start</i> of the tabbed text is from the start of the text line.</td></tr>
   * <tr>
   * <td><code>TabAlignment.CENTER</code></td>
   * <td>The <code>position</code> property specifies the number of pixels that the <i>center</i> of the tabbed text is from the start of the text line.</td></tr>
   * <tr>
   * <td><code>TabAlignment.END</code></td>
   * <td>The <code>position</code> property specifies the number of pixels that the <i>end</i> of the tabbed text is from the start of the text line.</td></tr>
   * <tr>
   * <td><code>TabAlignment.DECIMAL</code></td>
   * <td>The <code>position</code> property specifies the number of pixels that the alignment token is from the start of the text line.</td></tr></table>
   * @throws ArgumentError If set to any value that is not a member of <code>TabAlignment</code>.
   *
   * @see TabAlignment
   * @see TextBlock#createTextLine()
   *
   */
  public function get alignment():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set alignment(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the alignment token to use when you set the <code>alignment</code> property to <code>TabAlignment.DECIMAL</code>. The value is a String that occurs in the text line.
   * <p>The default value is <code>""</code>.</p>
   * @see TabAlignment#DECIMAL
   *
   */
  public function get decimalAlignmentToken():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set decimalAlignmentToken(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The position of the tab stop, in pixels, relative to the start of the text line.
   * <p>The default value is 0.0.</p>
   * @throws ArgumentError If set to a value less than 0.0.
   *
   */
  public function get position():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set position(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new TabStop.
   * @param alignment The tab alignment type of this tab stop. Valid values for this property are found in the members of the <code>TabAlignment</code> class. The default value is <code>TabAlignment.START</code>.
   * @param position The position of the tab stop, in pixels. The default value is <code>0.0</code>.
   * @param decimalAlignmentToken The alignment token to be used if the <code>alignment</code> is <code>TabAlignment.DECIMAL</code>, The default value is <code>""</code>.
   *
   * @throws ArgumentError The <code>alignment</code> specified is not a member of <code>TabAlignment</code>.
   *
   * @see TabAlignment
   *
   */
  public function TabStop(alignment:String = "start", position:Number = 0.0, decimalAlignmentToken:String = "") {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
