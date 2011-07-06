package ext.data {


/**
 *
 * <p>This interface defines the type of the singleton SortTypes.</p>
 * @see ext.data.#SortTypes ext.data.SortTypes
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#cls-Ext.data.SortTypes Ext JS source
 */
public interface ISortTypes {

  /**
   The regular expression used to strip tags
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#prop-Ext.data.SortTypes-stripTagsRE Ext JS source
   */
  function get stripTagsRE():RegExp;

  /**
   * @private
   */
  function set stripTagsRE(value:RegExp):void;

  /**
   * Date sorting
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asDate Ext JS source
   */
  function asDate(s:*):Number;

  /**
   * Float sorting
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asFloat Ext JS source
   */
  function asFloat(s:*):Number;

  /**
   * Integer sorting
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asInt Ext JS source
   */
  function asInt(s:*):Number;

  /**
   * Strips all HTML tags to sort on text only
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asText Ext JS source
   */
  function asText(s:*):String;

  /**
   * Case insensitive string
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asUCString Ext JS source
   */
  function asUCString(s:*):String;

  /**
   * Strips all HTML tags to sort on text only - Case insensitive
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-asUCText Ext JS source
   */
  function asUCText(s:*):String;

  /**
   * Default sort that does nothing
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/SortTypes.html#method-Ext.data.SortTypes-none Ext JS source
   */
  function none(s:*):*;

}
}
    