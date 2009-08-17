package ext.data {
/**
*/
public class SortTypes {
/**
 * @singleton
 * Defines the default sorting (casting?) comparison functions used when sorting data.
 */
    /**
     * Default sort that does nothing
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function none(s : *) : *;
    /**
     * The regular expression used to strip tags
     * @property
     */
    public static var stripTagsRE  : RegExp;
    /**
     * Strips all HTML tags to sort on text only
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asText(s : *) : String;
    /**
     * Strips all HTML tags to sort on text only - Case insensitive
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asUCText(s : *) : String;
    /**
     * Case insensitive string
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asUCString(s : *) : String;
    /**
     * Date sorting
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asDate(s : *) : Number;
    /**
     * Float sorting
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asFloat(s : *) : Number;
    /**
     * Integer sorting
     * @param s The value being converted
     * @return The comparison value
     */
    public static native function asInt(s : *) : Number;
}}
