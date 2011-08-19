package ext {
import ext.util.Observable;

/**
 * Fires when navigation back or forwards within the local page's history occurs.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>token:String</code>
 An identifier associated with the page state at that point in its history.
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires when the Ext.History singleton has been initialized and is ready for use.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>The:ext.HistoryClass</code>
 Ext.History singleton.
 *       </li>

 * </ul>
 */
[Event(name="ready")]


/**
 * History management component that allows you to register arbitrary tokens that signify application history state on navigation actions. You can then handle the history <a href="output/Ext.History.html#Ext.History-change">change</a> event in order to reset your application UI to the appropriate state when the user navigates forward or backward through the browser history stack.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This class defines the type of the singleton History.</p>
 * @see ext.#History ext.History
 * @see ext.config.history
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#cls-Ext.History Ext JS source
 */
public class HistoryClass extends Observable {

  /**
   * @private
   *
   * @see ext.config.history
   */
  public function HistoryClass() {
    super();
  }

  /**
   The id of the hidden field required for storing the current history token.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#prop-Ext.History-fieldId Ext JS source
   */
  public native function get fieldId():String;

  /**
   * @private
   */
  public native function set fieldId(value:String):void;

  /**
   The id of the iframe required by IE to manage the history stack.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#prop-Ext.History-iframeId Ext JS source
   */
  public native function get iframeId():String;

  /**
   * @private
   */
  public native function set iframeId(value:String):void;

  /**
   * Add a new token to the history stack. This can be any arbitrary value, although it would commonly be the concatenation of a component id and another id marking the specific history state of that component. Example usage: <pre><code>// Handle tab changes on a TabPanel
   tabPanel.on('tabchange', function(tabPanel, tab){
   Ext.History.add(tabPanel.id + ':' + tab.id);
   });
   </code></pre>
   *
   * @param token The value that defines a particular application-specific history state
   * @param preventDuplicates When true, if the passed token matches the current token it will not save a new history step. Set to false if the same state can be saved more than once at the same history stack location (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#method-Ext.History-add Ext JS source
   */
  public native function add(token:String, preventDuplicates:Boolean):void;

  /**
   * Programmatically steps back one step in browser history (equivalent to the user pressing the Back button).
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#method-Ext.History-back Ext JS source
   */
  public native function back():void;

  /**
   * Programmatically steps forward one step in browser history (equivalent to the user pressing the Forward button).
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#method-Ext.History-forward Ext JS source
   */
  public native function forward():void;

  /**
   * Retrieves the currently-active history token.
   *
   * @return The token
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#method-Ext.History-getToken Ext JS source
   */
  public native function getToken():String;

  /**
   * Initialize the global History instance.
   *
   * @param onReady A callback function that will be called once the history component is fully initialized.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. Defaults to the browser window.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/History.html#method-Ext.History-init Ext JS source
   */
  public native function init(onReady:Boolean = false, scope:Object = null):void;

}
}
    