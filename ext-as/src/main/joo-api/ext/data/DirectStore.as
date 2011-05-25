package ext.data {
/**
 * <p>Small helper class to create an <b class='link'>ext.data.Store</b> configured with an
 * <b class='link'>ext.data.DirectProxy</b> and <b class='link'>ext.data.JsonReader</b> to make interacting
 * with an <b class='link'>ext.Direct</b> Server-side <b class='link' title='Ext.direct.Provider'>Provider</b> easier.
 * To create a different proxy/reader combination create a basic <b class='link'>ext.data.Store</b>
 * configured as needed.</p>
 *
 * <p><b>*Note:</b> Although they are not listed, this class inherits all of the config options of:</p>
 * <div><ul class="mdetail-params">
 * <li><b class='link' title='ext.data.Store'>Store</b></li>
 * <div class="sub-desc"><ul class="mdetail-params">
 *
 * </ul></div>
 * <li><b class='link' title='ext.data.JsonReader'>JsonReader</b></li>
 * <div class="sub-desc"><ul class="mdetail-params">
 * <li><code><b class='link' title='ext.data.JsonReader#root'>root</b></code></li>
 * <li><code><b class='link' title='ext.data.JsonReader#idProperty'>idProperty</b></code></li>
 * <li><code><b class='link' title='ext.data.JsonReader#totalProperty'>totalProperty</b></code></li>
 * </ul></div>
 *
 * <li><b class='link' title='ext.data.DirectProxy'>DirectProxy</b></li>
 * <div class="sub-desc"><ul class="mdetail-params">
 * <li><code><b class='link' title='ext.data.DirectProxy#directFn'>directFn</b></code></li>
 * <li><code><b class='link' title='ext.data.DirectProxy#paramOrder'>paramOrder</b></code></li>
 * <li><code><b class='link' title='ext.data.DirectProxy#paramsAsHash'>paramsAsHash</b></code></li>
 * </ul></div>
 * </ul></div>
 *
 * @xtype directstore
 *
*/
public class DirectStore extends Store {
/**
 * @constructor
 * @param config
 */
  public function DirectStore(config:Object = null) {
    super(config);
  }

  public var proxy;
        public var reader;
}}
