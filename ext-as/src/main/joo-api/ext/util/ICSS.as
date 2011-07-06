package ext.util {


/**
 * Utility class for manipulating CSS rules
 * <p>This interface defines the type of the singleton CSS.</p>
 * @see ext.util.#CSS ext.util.CSS
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#cls-Ext.util.CSS Ext JS source
 */
public interface ICSS {

  /**
   * Creates a stylesheet from a text blob of rules. These rules will be wrapped in a STYLE tag and appended to the HEAD of the document.
   *
   * @param cssText The text containing the css rules
   * @param id An id to add to the stylesheet for later removal
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-createStyleSheet Ext JS source
   */
  function createStyleSheet(cssText:String, id:String):Object;

  /**
   * Gets an an individual CSS rule by selector(s)
   *
   * @param selector The CSS selector or an array of selectors to try. The first selector that is found is returned.
   * @param refreshCache true to refresh the internal cache if you have recently updated any rules or added styles dynamically
   * @return The CSS rule or null if one is not found
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-getRule Ext JS source
   */
  function getRule(selector:*, refreshCache:Boolean):Object;

  /**
   * Gets all css rules for the document
   *
   * @param refreshCache true to refresh the internal cache
   * @return An object (hash) of rules indexed by selector
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-getRules Ext JS source
   */
  function getRules(refreshCache:Boolean):Object;

  /**
   * Refresh the rule cache if you have dynamically added stylesheets
   *
   * @return An object (hash) of rules indexed by selector
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-refreshCache Ext JS source
   */
  function refreshCache():Object;

  /**
   * Removes a style or link tag by id
   *
   * @param id The id of the tag
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-removeStyleSheet Ext JS source
   */
  function removeStyleSheet(id:String):void;

  /**
   * Dynamically swaps an existing stylesheet reference for a new one
   *
   * @param id The id of an existing link tag to remove
   * @param url The href of the new stylesheet to include
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-swapStyleSheet Ext JS source
   */
  function swapStyleSheet(id:String, url:String):void;

  /**
   * Updates a rule property
   *
   * @param selector If it's an array it tries each selector until it finds one. Stops immediately once one is found.
   * @param property The css property
   * @param value The new value for the property
   * @return true If a rule was found and updated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CSS.html#method-Ext.util.CSS-updateRule Ext JS source
   */
  function updateRule(selector:*, property:String, value:String):Boolean;

}
}
    