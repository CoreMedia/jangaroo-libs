package ext.util {


/**
 * Provides precise pixel measurements for blocks of text so that you can determine exactly how high and wide, in pixels, a given block of text will be. Note that when measuring text, it should be plain text and should not contain any HTML, otherwise it may not be measured correctly.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton TextMetrics.</p>
 * @see ext.util.#TextMetrics ext.util.TextMetrics
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#cls-Ext.util.TextMetrics Ext JS source
 */
public interface ITextMetrics {

  /**
   * Only available on the instance returned from <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-createInstance">createInstance</a>, <u>not</u> on the singleton.
   Binds this TextMetrics instance to an element from which to copy existing CSS styles that can affect the size of the rendered text
   *
   * @param el The element, dom node or id
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-bind Ext JS source
   */
  function bind(el:*):void;

  /**
   * Return a unique TextMetrics instance that can be bound directly to an element and reused. This reduces the overhead of multiple calls to initialize the style properties on each measurement.
   *
   * @param el The element, dom node or id that the instance will be bound to
   * @param fixedWidth If the text will be multiline, you have to set a fixed width in order to accurately measure the text height
   * @return instance The new instance
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-createInstance Ext JS source
   */
  function createInstance(el:*, fixedWidth:Number = undefined):ITextMetrics;

  /**
   * Only available on the instance returned from <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-createInstance">createInstance</a>, <u>not</u> on the singleton.
   Returns the measured height of the specified text. For multiline text, be sure to call <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-setFixedWidth">setFixedWidth</a> if necessary.
   *
   * @param text The text to measure
   * @return height The height in pixels
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-getHeight Ext JS source
   */
  function getHeight(text:String):Number;

  /**
   * Only available on the instance returned from <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-createInstance">createInstance</a>, <u>not</u> on the singleton.
   Returns the size of the specified text based on the internal element's style and width properties
   *
   * @param text The text to measure
   * @return An object containing the text's size {width: (width), height: (height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-getSize Ext JS source
   */
  function getSize(text:String):Object;

  /**
   * Only available on the instance returned from <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-createInstance">createInstance</a>, <u>not</u> on the singleton.
   Returns the measured width of the specified text
   *
   * @param text The text to measure
   * @return width The width in pixels
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-getWidth Ext JS source
   */
  function getWidth(text:String):Number;

  /**
   * Measures the size of the specified text
   *
   * @param el The element, dom node or id from which to copy existing CSS styles that can affect the size of the rendered text
   * @param text The text to measure
   * @param fixedWidth If the text will be multiline, you have to set a fixed width in order to accurately measure the text height
   * @return An object containing the text's size {width: (width), height: (height)}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-measure Ext JS source
   */
  function measure(el:*, text:String, fixedWidth:Number = undefined):Object;

  /**
   * Only available on the instance returned from <a href="output/Ext.util.TextMetrics.html#Ext.util.TextMetrics-createInstance">createInstance</a>, <u>not</u> on the singleton.
   Sets a fixed width on the internal measurement element. If the text will be multiline, you have to set a fixed width in order to accurately measure the text height.
   *
   * @param width The width to set on the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/TextMetrics.html#method-Ext.util.TextMetrics-setFixedWidth Ext JS source
   */
  function setFixedWidth(width:Number):void;

}
}
    