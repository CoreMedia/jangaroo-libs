package flashx.textLayout.formats {
/**
 * This interface provides read access to tab stop-related properties.
 */
public interface ITabStopFormat {
  /**
   * The tab alignment for this tab stop.
   * <p>Legal values are flash.text.engine.TabAlignment.START, flash.text.engine.TabAlignment.CENTER, flash.text.engine.TabAlignment.END, flash.text.engine.TabAlignment.DECIMAL, flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of START.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see FormatValue#INHERIT
   * @see flash.text.engine.TabAlignment
   *
   */
  function get alignment():*;

  /**
   * The alignment token to be used if the alignment is DECIMAL.
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of null.</p>
   * @throws RangeError when set value is not within range for this property
   *
   */
  function get decimalAlignmentToken():*;

  /**
   * The position of the tab stop, in pixels, relative to the start of the line.
   * <p>Legal values are numbers from 0 to 10000 and flashx.textLayout.formats.FormatValue.INHERIT.</p>
   * <p>Default value is undefined indicating not set.</p>
   * <p>If undefined during the cascade this property will have a value of 0.</p>
   * @throws RangeError when set value is not within range for this property
   *
   * @see FormatValue#INHERIT
   *
   */
  function get position():*;
}
}
