package ext.plugins {

import ext.util.Observable;

/**
 * Adds a Load More button at the bottom of the list. When the user presses this button, the next page of data will be loaded into the store and appended to the List.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.listpagingplugin
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ListPaging.html#cls-Ext.plugins.ListPagingPlugin Ext JS source
 */
public class ListPagingPlugin extends Observable {

  /**
   *
   *
   * @see ext.config.listpagingplugin
   */
  public function ListPagingPlugin() {
    super();
  }

  /**
   True to automatically load the next page when you scroll to the bottom of the list. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoPaging():Boolean;

  /**
   The text used as the label of the Load More button.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get loadMoreText():String;

  /**
   The text that will be shown while you are pulling down.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pullRefreshText():String;

  /**
   The template being used for the pull to refresh markup.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get pullTpl():*;

  /**
   The duration for snapping back animation after the data has been refreshed
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get snappingAnimationDuration():String;

  /**
   * This function makes sure that the List's LoadMask is not shown when the list is being reloaded by this plugin.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PullRefresh.html#method-Ext.plugins.ListPagingPlugin-onBeforeLoad Ext JS source
   */
  public native function onBeforeLoad():void;

  /**
   * This function renders the pull to refresh markup into the list if it doesnt exist yet. It also makes sure that the pull to refresh element is inserted to the beginning of the list again after the List items have been updated.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PullRefresh.html#method-Ext.plugins.ListPagingPlugin-onListUpdate Ext JS source
   */
  public native function onListUpdate():void;

  /**
   * This function is called after the List has been refreshed. It resets the Pull to Refresh markup and updates the last updated date. It also animates the pull to refresh markup away.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PullRefresh.html#method-Ext.plugins.ListPagingPlugin-onLoadComplete Ext JS source
   */
  public native function onLoadComplete():void;

  /**
   * Here we listen for taps on the loadingEl and load the store's next page. Adding the 'x-loading' class to the loadingEl hides the 'Load next page' text.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ListPaging.html#method-Ext.plugins.ListPagingPlugin-onPagingTap Ext JS source
   */
  public native function onPagingTap():void;

  /**
   * This function renders the pull to refresh markup into the list and binds listeners to the scroller.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/PullRefresh.html#method-Ext.plugins.ListPagingPlugin-render Ext JS source
   */
  public native function render():void;

}
}
    