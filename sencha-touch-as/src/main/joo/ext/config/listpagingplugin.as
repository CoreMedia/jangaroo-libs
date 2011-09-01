package ext.config {


/**
 * Adds a Load More button at the bottom of the list. When the user presses this button, the next page of data will be loaded into the store and appended to the List.
 *
 * <p>This class serves as a
 * typed config object for constructor of class ListPagingPlugin.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.plugins.ListPagingPlugin
 */
[ExtConfig(target="ext.plugins.ListPagingPlugin")]
public class listpagingplugin extends observable {

  public function listpagingplugin(config:Object = null) {

    super(config);
  }


  /**
   True to automatically load the next page when you scroll to the bottom of the list. Defaults to false.
   */
  public native function get autoPaging():Boolean;

  /**
   * @private
   */
  public native function set autoPaging(value:Boolean):void;

  /**
   The text used as the label of the Load More button.
   */
  public native function get loadMoreText():String;

  /**
   * @private
   */
  public native function set loadMoreText(value:String):void;

  /**
   The text that will be shown while you are pulling down.
   */
  public native function get pullRefreshText():String;

  /**
   * @private
   */
  public native function set pullRefreshText(value:String):void;

  /**
   The text that will be shown after you have pulled down enough to show the release message.
   */
  public native function get releaseRefreshText():String;

  /**
   * @private
   */
  public native function set releaseRefreshText(value:String):void;

  /**
   The text that will be shown while the list is refreshing.
   */
  public native function get loadingText():String;

  /**
   * @private
   */
  public native function set loadingText(value:String):void;

  /**
   The template being used for the pull to refresh markup.
   */
  public native function get pullTpl():*;

  /**
   * @private
   */
  public native function set pullTpl(value:*):void;

  /**
   The function that will be called to refresh the list. If this is not defined, the store's load function will be called. The refresh function gets called with two parameters. The first one is the callback function that should be called after your refresh is complete. The second one is a reference to this plugin instance.
   */
  public native function get refreshFn():Function;

  /**
   * @private
   */
  public native function set refreshFn(value:Function):void;

  /**
   The duration for snapping back animation after the data has been refreshed
   */
  public native function get snappingAnimationDuration():String;

  /**
   * @private
   */
  public native function set snappingAnimationDuration(value:String):void;


}
}
    