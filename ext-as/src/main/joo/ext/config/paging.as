package ext.config {

import ext.data.Store;

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
 * <p>This class serves as a typed config object for constructor of class PagingToolbar.</p>
 *
 * @see ext.PagingToolbar
 */
[ExtConfig(target="ext.PagingToolbar")]
public class paging extends toolbar {

  public function paging(config:Object = null) {

    super(config);
  }


  /**
   Customizable piece of the default paging text (defaults to <tt>'of {0}'</tt>). Note that this string is formatted using <tt>{0}</tt> as a token that is replaced by the number of total pages. This token should be preserved when overriding this string if showing the total page count is desired.
   */
  public native function get afterPageText():String;

  /**
   * @private
   */
  public native function set afterPageText(value:String):void;

  /**
   The text displayed before the input item (defaults to <tt>'Page'</tt>).
   */
  public native function get beforePageText():String;

  /**
   * @private
   */
  public native function set beforePageText(value:String):void;

  /**
   <tt>true</tt> to display the displayMsg (defaults to <tt>false</tt>)
   */
  public native function get displayInfo():Boolean;

  /**
   * @private
   */
  public native function set displayInfo(value:Boolean):void;

  /**
   The paging status message to display (defaults to <tt>'Displaying {0} - {1} of {2}'</tt>). Note that this string is formatted using the braced numbers <tt>{0}-{2}</tt> as tokens that are replaced by the values for start, end and total respectively. These tokens should be preserved when overriding this string if showing those values is desired.
   */
  public native function get displayMsg():String;

  /**
   * @private
   */
  public native function set displayMsg(value:String):void;

  /**
   The message to display when no records are found (defaults to 'No data to display')
   */
  public native function get emptyMsg():String;

  /**
   * @private
   */
  public native function set emptyMsg(value:String):void;

  /**
   The quicktip text displayed for the first page button (defaults to <tt>'First Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get firstText():String;

  /**
   * @private
   */
  public native function set firstText(value:String):void;

  /**
   The quicktip text displayed for the last page button (defaults to <tt>'Last Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get lastText():String;

  /**
   * @private
   */
  public native function set lastText(value:String):void;

  /**
   The quicktip text displayed for the next page button (defaults to <tt>'Next Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get nextText():String;

  /**
   * @private
   */
  public native function set nextText(value:String):void;

  /**
   The number of records to display per page (defaults to <tt>20</tt>)
   */
  public native function get pageSize():Number;

  /**
   * @private
   */
  public native function set pageSize(value:Number):void;

  /**
   <tt>true</tt> to insert any configured <tt>items</tt> <i>before</i> the paging buttons. Defaults to <tt>false</tt>.
   */
  public native function get prependButtons():Boolean;

  /**
   * @private
   */
  public native function set prependButtons(value:Boolean):void;

  /**
   The quicktip text displayed for the previous page button (defaults to <tt>'Previous Page'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get prevText():String;

  /**
   * @private
   */
  public native function set prevText(value:String):void;

  /**
   The quicktip text displayed for the Refresh button (defaults to <tt>'Refresh'</tt>). <b>Note</b>: quick tips must be initialized for the quicktip to show.
   */
  public native function get refreshText():String;

  /**
   * @private
   */
  public native function set refreshText(value:String):void;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> the paging toolbar should use as its data source (required).
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;


}
}
    