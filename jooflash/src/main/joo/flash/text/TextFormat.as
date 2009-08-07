package flash.text {

/**
 * The TextFormat class represents character formatting information.
 */
public class TextFormat extends Object {

  /**
   * Creates a TextFormat object with the specified properties.
   */
  public function TextFormat(font:String = null, size:Object = null, color:Object = null,
                             bold:Object = null, italic:Object = null, underline:Object = null,
                             url:String = null, target:String = null, align:String = null,
                             leftMargin:Object = null, rightMargin:Object = null,
                             indent:Object = null, leading:Object = null) {
    this.align = align;
    this.blockIndent = blockIndent;
    this.bold = bold;
    this.bullet = bullet;
    this.color = color;
    this.display = display;
    this.font = font;
    this.indent = indent;
    this.italic = italic;
    this.kerning = kerning;
    this.leading = leading;
    this.leftMargin = leftMargin;
    this.letterSpacing = letterSpacing;
    this.rightMargin = rightMargin;
    this.size = size;
    this.tabStops = tabStops;
    this.target = target;
    this.underline = underline;
    this.url = url;
  }

  /** Indicates the alignment of the paragraph. */
  public var align : String;

  /** Indicates the block indentation in pixels. */
  public var blockIndent : Object;

  /** Specifies whether the text is boldface. */
  public var bold : Object;

  /** Indicates that the text is part of a bullet list. */
  public var bullet : Object;

  /** Indicates the color of the text. */
  public var color : Object;

  public var display : String;

  /** The name of the font for text in this text format, as a string. */
  public var font : String;

  /** Indicates the indentation from the left margin to the first character in the paragraph. */
  public var indent : Object;

  /** Indicates whether text in this text format is italicized. */
  public var italic : Object;

  /** A Boolean value that indicates whether kerning is enabled (true) or disabled (false). */
  public var kerning : Object;

  /** An integer representing the amount of vertical space (called leading) between lines. */
  public var leading : Object;

  /** The left margin of the paragraph, in pixels. */
  public var leftMargin : Object;

  /** A number representing the amount of space that is uniformly distributed between all characters. */
  public var letterSpacing : Object;

  /** The right margin of the paragraph, in pixels. */
  public var rightMargin : Object;

  /** The point size of text in this text format. */
  public var size : Object;

  /** Specifies custom tab stops as an array of non-negative integers. */
  public var tabStops : Array;

  /** Indicates the target window where the hyperlink is displayed. */
  public var target : String;

  /** Indicates whether the text that uses this text format is underlined (true) or not (false). */
  public var underline : Object;

  /** Indicates the target URL for the text in this text format. */
  public var url : String;

}
}
