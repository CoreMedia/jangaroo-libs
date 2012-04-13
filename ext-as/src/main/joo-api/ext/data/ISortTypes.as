package ext.data {


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton SortTypes.</p>
 * @see ext.data.#SortTypes ext.data.SortTypes
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes Sencha Docs Ext JS 3.4
 */
public interface ISortTypes {

  /**
   The regular expression used to strip tags
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-property-stripTagsRE Sencha Docs Ext JS 3.4
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
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asDate Sencha Docs Ext JS 3.4
   */
  function asDate(s:*):Number;

  /**
   * Float sorting
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asFloat Sencha Docs Ext JS 3.4
   */
  function asFloat(s:*):Number;

  /**
   * Integer sorting
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asInt Sencha Docs Ext JS 3.4
   */
  function asInt(s:*):Number;

  /**
   * Strips all HTML tags to sort on text only
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asText Sencha Docs Ext JS 3.4
   */
  function asText(s:*):String;

  /**
   * Case insensitive string
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asUCString Sencha Docs Ext JS 3.4
   */
  function asUCString(s:*):String;

  /**
   * Strips all HTML tags to sort on text only - Case insensitive
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-asUCText Sencha Docs Ext JS 3.4
   */
  function asUCText(s:*):String;

  /**
   * Default sort that does nothing
   *
   * @param s The value being converted
   * @return The comparison value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.SortTypes-method-none Sencha Docs Ext JS 3.4
   */
  function none(s:*):*;

}
}
    