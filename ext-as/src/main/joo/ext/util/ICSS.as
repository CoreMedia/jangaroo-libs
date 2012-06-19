package ext.util {


/**
 * Utility class for manipulating CSS rules
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton CSS.</p>
 * @see ext.util.#CSS ext.util.CSS
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS Sencha Docs Ext JS 3.4
 */
public interface ICSS {

  /**
   * Creates a stylesheet from a text blob of rules. These rules will be wrapped in a STYLE tag and appended to the HEAD of the document.
   *
   * @param cssText The text containing the css rules
   * @param id An id to add to the stylesheet for later removal
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-createStyleSheet Sencha Docs Ext JS 3.4
   */
  function createStyleSheet(cssText:String, id:String):Object;

  /**
   * Gets an an individual CSS rule by selector(s)
   *
   * @param selector The CSS selector or an array of selectors to try. The first selector that is found is returned.
   * @param refreshCache true to refresh the internal cache if you have recently updated any rules or added styles dynamically
   * @return The CSS rule or null if one is not found
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-getRule Sencha Docs Ext JS 3.4
   */
  function getRule(selector:*, refreshCache:Boolean):Object;

  /**
   * Gets all css rules for the document
   *
   * @param refreshCache true to refresh the internal cache
   * @return An object (hash) of rules indexed by selector
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-getRules Sencha Docs Ext JS 3.4
   */
  function getRules(refreshCache:Boolean):Object;

  /**
   * Refresh the rule cache if you have dynamically added stylesheets
   *
   * @return An object (hash) of rules indexed by selector
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-refreshCache Sencha Docs Ext JS 3.4
   */
  function refreshCache():Object;

  /**
   * Removes a style or link tag by id
   *
   * @param id The id of the tag
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-removeStyleSheet Sencha Docs Ext JS 3.4
   */
  function removeStyleSheet(id:String):void;

  /**
   * Dynamically swaps an existing stylesheet reference for a new one
   *
   * @param id The id of an existing link tag to remove
   * @param url The href of the new stylesheet to include
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-swapStyleSheet Sencha Docs Ext JS 3.4
   */
  function swapStyleSheet(id:String, url:String):void;

  /**
   * Updates a rule property
   *
   * @param selector If it's an array it tries each selector until it finds one. Stops immediately once one is found.
   * @param property The css property
   * @param value The new value for the property
   * @return true If a rule was found and updated
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.CSS-method-updateRule Sencha Docs Ext JS 3.4
   */
  function updateRule(selector:*, property:String, value:String):Boolean;

}
}
    