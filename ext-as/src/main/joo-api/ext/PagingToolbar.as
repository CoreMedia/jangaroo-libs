package ext {
import ext.config.paging;
import ext.data.Store;

/**
 * Fires just before the active page is changed. Return false to prevent the active page from being changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.PagingToolbar</code>

 *       </li>

 *       <li>
 *           <code>params:Object</code>
 An object hash of the parameters which the PagingToolbar will send when loading the required page. This will contain:<ul><li><code>start</code> : Number <div class="sub-desc">The starting row number for the next page of records to be retrieved from the server</div></li><li><code>limit</code> : Number <div class="sub-desc">The number of records to be retrieved from the server</div></li></ul><p>(note: the names of the <b>start</b> and <b>limit</b> properties are determined by the store's <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a> property.)</p><p>Parameters may be added as required in the event handler.</p>
 *       </li>

 * </ul>
 */
[Event(name="beforechange")]

/**
 * Fires after the active page has been changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.PagingToolbar</code>

 *       </li>

 *       <li>
 *           <code>pageData:Object</code>
 An object that has these properties:<ul><li><code>total</code> : Number <div class="sub-desc">The total number of records in the dataset as returned by the server</div></li><li><code>activePage</code> : Number <div class="sub-desc">The current page number</div></li><li><code>pages</code> : Number <div class="sub-desc">The total number of pages (calculated from the total number of records in the dataset as returned by the server and the current <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-pageSize">pageSize</a>)</div></li></ul>
 *       </li>

 * </ul>
 */
[Event(name="change")]


/**
 * As the amount of records increases, the time required for the browser to render them increases. Paging is used to reduce the amount of data exchanged with the client. Note: if there are more records/rows than can be viewed in the available screen area, vertical scrollbars will be added.
 <p>Paging is typically handled on the server side (see exception below). The client sends parameters to the server side, which the server needs to interpret and then respond with the approprate data.</p><p><b>Ext.PagingToolbar</b> is a specialized toolbar that is bound to a <a href="Ext.data.Store.html">Ext.data.Store</a> and provides automatic paging control. This Component <a href="output/Ext.data.Store.html#Ext.data.Store-load">load</a>s blocks of data into the <tt><a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-store">store</a></tt> by passing <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">paramNames</a> used for paging criteria.</p><p>PagingToolbar is typically used as one of the Grid's toolbars:</p><pre><code>Ext.QuickTips.init(); // to display button quicktips

 var myStore = new Ext.data.Store({
 reader: new Ext.data.JsonReader({
 <a href="output/Ext.data.JsonReader.html#Ext.data.JsonReader-totalProperty">totalProperty</a>: 'results',
 ...
 }),
 ...
 });

 var myPageSize = 25;  // server script should only send back 25 items at a time

 var grid = new Ext.grid.GridPanel({
 ...
 store: myStore,
 bbar: new Ext.PagingToolbar({
 <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-store">store</a>: myStore,       // grid and PagingToolbar using same store
 <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-displayInfo">displayInfo</a>: true,
 <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-pageSize">pageSize</a>: myPageSize,
 <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-prependButtons">prependButtons</a>: true,
 items: [
 'text 1'
 ]
 })
 });
 </code></pre><p>To use paging, pass the paging requirements to the server when the store is first loaded.</p><pre><code>store.load({
 params: {
 // specify params for the first page load if using paging
 start: 0,
 limit: myPageSize,
 // other params
 foo:   'bar'
 }
 });
 </code></pre><p>If using <a href="output/Ext.data.Store.html#Ext.data.Store-autoLoad">store's autoLoad</a> configuration:</p><pre><code>var myStore = new Ext.data.Store({
 <a href="output/Ext.data.Store.html#Ext.data.Store-autoLoad">autoLoad</a>: {params:{start: 0, limit: 25}},
 ...
 });
 </code></pre><p>The packet sent back from the server would have this form:</p><pre><code>{
 "success": true,
 "results": 2000,
 "rows": [ // <b>&#42;Note:</b> this must be an Array
 { "id":  1, "name": "Bill", "occupation": "Gardener" },
 { "id":  2, "name":  "Ben", "occupation": "Horticulturalist" },
 ...
 { "id": 25, "name":  "Sue", "occupation": "Botanist" }
 ]
 }
 </code></pre><p><u>Paging with Local Data</u></p><p>Paging can also be accomplished with local data using extensions:</p><div class="mdetail-params"><ul><li><a href="http://extjs.com/forum/showthread.php?t=71532">Ext.ux.data.PagingStore</a></li><li>Paging Memory Proxy (examples/ux/PagingMemoryProxy.js)</li></ul></div>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'paging' / the EXML element &lt;paging>.</p>
 * @see ext.config.paging
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar Sencha Docs Ext JS 3.4
 */
public class PagingToolbar extends Toolbar {

  /**
   * Create a new PagingToolbar
   *
   * @param config The config object
   * @see ext.config.paging
   */
  public function PagingToolbar(config:paging) {
    super(null);
  }

  /**
   Indicator for the record position. This property might be used to get the active page number for example:<pre><code>// t is reference to the paging toolbar instance
   var activePage = Math.ceil((t.cursor + t.pageSize) / t.pageSize);
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-property-cursor Sencha Docs Ext JS 3.4
   */
  public native function get cursor():Number;

  /**
   * @private
   */
  public native function set cursor(value:Number):void;

  /**
   The number of records to display per page. See also <tt><a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-cursor">cursor</a></tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-property-pageSize Sencha Docs Ext JS 3.4
   */
  public native function get pageSize():Number;

  /**
   * @private
   */
  public native function set pageSize(value:Number):void;

  /**
   <b>Deprecated</b>. <code>paramNames</code> should be set in the <b>data store</b> (see <a href="output/Ext.data.Store.html#Ext.data.Store-paramNames">Ext.data.Store.paramNames</a>).
   <br/><p>Object mapping of parameter names used for load calls, initially set to:</p><pre>{start: 'start', limit: 'limit'}</pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-property-paramNames Sencha Docs Ext JS 3.4
   */
  public native function get paramNames():Object;

  /**
   * @private
   */
  public native function set paramNames(value:Object):void;

  /**
   Customizable piece of the default paging text (defaults to <tt>'of {0}'</tt>). Note that this string is formatted using <tt>{0}</tt> as a token that is replaced by the number of total pages. This token should be preserved when overriding this string if showing the total page count is desired.
   */
  public native function get afterPageText():String;

  /**
   The text displayed before the input item (defaults to <tt>'Page'</tt>).
   */
  public native function get beforePageText():String;

  /**
   <tt>true</tt> to display the displayMsg (defaults to <tt>false</tt>)
   */
  public native function get displayInfo():Boolean;

  /**
   The paging status message to display (defaults to <tt>'Displaying {0} - {1} of {2}'</tt>). Note that this string is formatted using the braced numbers <tt>{0}-{2}</tt> as tokens that are replaced by the values for start, end and total respectively. These tokens should be preserved when overriding this string if showing those values is desired.
   */
  public native function get displayMsg():String;

  /**
   The message to display when no records are found (defaults to 'No data to display')
   */
  public native function get emptyMsg():String;

  /**
   The quicktip text displayed for the first page button (defaults to <tt>'First Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get firstText():String;

  /**
   The quicktip text displayed for the last page button (defaults to <tt>'Last Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get lastText():String;

  /**
   The quicktip text displayed for the next page button (defaults to <tt>'Next Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get nextText():String;

  /**
   <tt>true</tt> to insert any configured <tt>items</tt> <i>before</i> the paging buttons. Defaults to <tt>false</tt>.
   */
  public native function get prependButtons():Boolean;

  /**
   The quicktip text displayed for the previous page button (defaults to <tt>'Previous Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get prevText():String;

  /**
   The quicktip text displayed for the Refresh button (defaults to <tt>'Refresh'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get refreshText():String;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> the paging toolbar should use as its data source (required).
   */
  public native function get store():Store;

  /**
   * Binds the paging toolbar to the specified <a href="Ext.data.Store.html">Ext.data.Store</a> <b>(deprecated)</b>
   *
   * @param store The data store to bind
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-bind Sencha Docs Ext JS 3.4
   */
  public native function bind(store:Store):void;

  /**
   * Binds the paging toolbar to the specified <a href="Ext.data.Store.html">Ext.data.Store</a>
   *
   * @param store The store to bind to this toolbar
   * @param initial true to not remove listeners
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-bindStore Sencha Docs Ext JS 3.4
   */
  public native function bindStore(store:Store, initial:Boolean = false):void;

  /**
   * Change the active page
   *
   * @param page The page to display
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-changePage Sencha Docs Ext JS 3.4
   */
  public native function changePage(page:int):void;

  /**
   * Refresh the current page, has the same effect as clicking the 'refresh' button.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-doRefresh Sencha Docs Ext JS 3.4
   */
  public native function doRefresh():void;

  /**
   * Move to the first page, has the same effect as clicking the 'first' button.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-moveFirst Sencha Docs Ext JS 3.4
   */
  public native function moveFirst():void;

  /**
   * Move to the last page, has the same effect as clicking the 'last' button.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-moveLast Sencha Docs Ext JS 3.4
   */
  public native function moveLast():void;

  /**
   * Move to the next page, has the same effect as clicking the 'next' button.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-moveNext Sencha Docs Ext JS 3.4
   */
  public native function moveNext():void;

  /**
   * Move to the previous page, has the same effect as clicking the 'previous' button.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-movePrevious Sencha Docs Ext JS 3.4
   */
  public native function movePrevious():void;

  /**
   * Unbinds the paging toolbar from the specified <a href="Ext.data.Store.html">Ext.data.Store</a> <b>(deprecated)</b>
   *
   * @param store The data store to unbind
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.PagingToolbar-method-unbind Sencha Docs Ext JS 3.4
   */
  public native function unbind(store:Store):void;

}
}
    