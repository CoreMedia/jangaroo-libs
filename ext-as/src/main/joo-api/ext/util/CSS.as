package ext.util {
/**
 * Utility class for manipulating CSS rules
*/
public class CSS {
/**
 * @singleton
 */
   /**
    * Creates a stylesheet from a text blob of rules.
    * These rules will be wrapped in a STYLE tag and appended to the HEAD of the document.
    * @param cssText The text containing the css rules
    * @param id An id to add to the stylesheet for later removal
    * @return the new stylesheet
    */
   public static native function createStyleSheet(cssText : String, id : String) : Object;
   /**
    * Removes a style or link tag by id
    * @param id The id of the tag
    */
   public static native function removeStyleSheet(id : String) : void;
   /**
    * Dynamically swaps an existing stylesheet reference for a new one
    * @param id The id of an existing link tag to remove
    * @param url The href of the new stylesheet to include
    */
   public static native function swapStyleSheet(id : String, url : String) : void;
   /**
    * Refresh the rule cache if you have dynamically added stylesheets
    * @return An object (hash) of rules indexed by selector
    */
   public static native function refreshCache() : Object;
   protected static native function cacheStyleSheet(ss) : void;
   /**
    * Gets all css rules for the document
    * @param refreshCache true to refresh the internal cache
    * @return An object (hash) of rules indexed by selector
    */
   public static native function getRules(refreshCache : Boolean) : Object;
   	/**
    * Gets an an individual CSS rule by selector(s)
    * @param selector The CSS selector or an array of selectors to try. The first selector that is found is returned.
    * @param refreshCache true to refresh the internal cache if you have recently updated any rules or added styles dynamically
    * @return The CSS rule or null if one is not found
    */
   public static native function getRule(selector : *, refreshCache : Boolean) : Object;
   	/**
    * Updates a rule property
    * @param selector If it's an array it tries each selector until it finds one. Stops immediately once one is found.
    * @param property The css property
    * @param value The new value for the property
    * @return true If a rule was found and updated
    */
   public static native function updateRule(selector : *, property : String, value : String) : Boolean;
}}
