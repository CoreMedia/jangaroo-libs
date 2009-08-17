package ext.util {

/**
 * Provides precise pixel measurements for blocks of text so that you can determine exactly how high and
 * wide, in pixels, a given block of text will be. Note that when measuring text, it should be plain text and
 * should not contain any HTML, otherwise it may not be measured correctly.
*/
public class TextMetrics {
/**
 * @singleton
 */
        /**
         * Measures the size of the specified text
         * @param el The element, dom node or id from which to copy existing CSS styles
         * that can affect the size of the rendered text
         * @param text The text to measure
         * @param fixedWidth If the text will be multiline, you have to set a fixed width
         * in order to accurately measure the text height
         * @return An object containing the text's size {width: (width), height: (height)}
         */
        public static native function measure(el : *, text : String, fixedWidth : Number = undefined) : Object;
        /**
         * Return a unique TextMetrics instance that can be bound directly to an element and reused.  This reduces
         * the overhead of multiple calls to initialize the style properties on each measurement.
         * @param el The element, dom node or id that the instance will be bound to
         * @param fixedWidth If the text will be multiline, you have to set a fixed width
         * in order to accurately measure the text height
         * @return instance The new instance
         */
        public static native function createInstance(el : *, fixedWidth : Number = undefined) : TextMetrics;

        public static native function Instance (bindTo, fixedWidth) : TextMetrics;
        /**
         * Returns the size of the specified text based on the internal element's style and width properties
         * @param text The text to measure
         * @return An object containing the text's size {width: (width), height: (height)}
         */
        /**
         * Binds this TextMetrics instance to an element from which to copy existing CSS styles
         * that can affect the size of the rendered text
         * @param el The element, dom node or id
         */
        /**
         * Sets a fixed width on the internal measurement element.  If the text will be multiline, you have
         * to set a fixed width in order to accurately measure the text height.
         * @param width The width to set on the element
         */
        /**
         * Returns the measured width of the specified text
         * @param text The text to measure
         * @return width The width in pixels
         */
        /**
         * Returns the measured height of the specified text.  For multiline text, be sure to call
         * <b class='link'>#setFixedWidth</b> if necessary.
         * @param text The text to measure
         * @return height The height in pixels
         */
}}
