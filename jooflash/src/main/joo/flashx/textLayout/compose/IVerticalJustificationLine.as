package flashx.textLayout.compose {


/**
 * The IVerticalJustificationLine interface defines the methods and properties required to allow the vertical justification of text lines.
 */
public interface IVerticalJustificationLine {
  /**
   * Specifies the number of pixels from the baseline to the top of the tallest characters in the line. For a TextLine that contains only a graphic element, <code>ascent</code> is set to 0.
   */
  function get ascent():Number;

  /**
   * Specifies the number of pixels from the baseline to the bottom of the lowest-descending characters in the line. For a TextLine that contains only a graphic element, <code>descent</code> is set to 0.
   */
  function get descent():Number;

  /**
   * The height of the line in pixels.
   */
  function get height():Number;

  /**
   * The horizontal position of the line relative to its container, expressed as the offset in pixels from the left of the container.
   * @see #y
   *
   */
  function get x():Number;

  /**
   * @private
   */
  function set x(value:Number):void;

  /**
   * The vertical position of the line relative to its container, expressed as the offset in pixels from the top of the container.
   * @see #x
   *
   */
  function get y():Number;

  /**
   * @private
   */
  function set y(value:Number):void;
}
}
