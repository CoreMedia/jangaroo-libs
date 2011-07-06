package ext {

import ext.util.Observable;

/**
 * Fired before an update is made, return false from your handler and the update is cancelled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>el:ext.Element</code>

 *       </li>

 *       <li>
 *           <code>url:&#42;</code>

 *       </li>

 *       <li>
 *           <code>params:&#42;</code>

 *       </li>

 * </ul>
 */
[Event(name="beforeupdate")]

/**
 * Fired on update failure.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>el:ext.Element</code>

 *       </li>

 *       <li>
 *           <code>oResponseObject:Object</code>
 The response Object
 *       </li>

 * </ul>
 */
[Event(name="failure")]

/**
 * Fired after successful update is made.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>el:ext.Element</code>

 *       </li>

 *       <li>
 *           <code>oResponseObject:Object</code>
 The response Object
 *       </li>

 * </ul>
 */
[Event(name="update")]


/**
 * Provides AJAX-style update capabilities for Element objects. Updater can be used to <a href="output/Ext.Updater.html#Ext.Updater-update">update</a> an <a href="Ext.Element.html">Ext.Element</a> once, or you can use <a href="output/Ext.Updater.html#Ext.Updater-startAutoRefresh">startAutoRefresh</a> to set up an auto-updating <a href="Ext.Element.html">Element</a> on a specific interval.<br/><br/>Usage:<br/><pre><code>var el = Ext.get("foo"); // Get Ext.Element object
 var mgr = el.getUpdater();
 mgr.update({
 url: "http://myserver.com/index.php",
 params: {
 param1: "foo",
 param2: "bar"
 }
 });
 ...
 mgr.formUpdate("myFormId", "http://myserver.com/index.php");
 <br/>// or directly (returns the same Updater instance)
 var mgr = new Ext.Updater("myElementId");
 mgr.startAutoRefresh(60, "http://myserver.com/index.php");
 mgr.on("update", myFcnNeedsToKnow);
 <br/>// short handed call directly from the element object
 Ext.get("foo").load({
 url: "bar.php",
 scripts: true,
 params: "param1=foo&amp;param2=bar",
 text: "Loading Foo..."
 });
 </code></pre>
 * @see ext.config.updater
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#cls-Ext.Updater Ext JS source
 */
public class Updater extends Observable {

  /**
   * Create new Updater directly.
   *
   * @param el The element to update
   * @param forceNew By default the constructor checks to see if the passed element already has an Updater and if it does it returns the same instance. This will skip that check (useful for extending this class).
   * @see ext.config.updater
   */
  public function Updater(el:*, forceNew:Boolean = false) {
    super();
  }

  /**
   Cached url to use for refreshes. Overwritten every time update() is called unless "discardUrl" param is set to true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-defaultUrl Ext JS source
   */
  public native function get defaultUrl():String;

  /**
   * @private
   */
  public native function set defaultUrl(value:String):void;

  /**
   Whether to append unique parameter on get request to disable caching (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-disableCaching">Ext.Updater.defaults.disableCaching</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-disableCaching Ext JS source
   */
  public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   The Element object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-el Ext JS source
   */
  public native function get el():Element;

  /**
   * @private
   */
  public native function set el(value:Element):void;

  /**
   Delegate for formUpdate() prebound to "this", use myUpdater.formUpdateDelegate.createCallback(arg1, arg2) to bind arguments
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-formUpdateDelegate Ext JS source
   */
  public native function get formUpdateDelegate():Function;

  /**
   * @private
   */
  public native function set formUpdateDelegate(value:Function):void;

  /**
   Text for loading indicator (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-indicatorText">Ext.Updater.defaults.indicatorText</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-indicatorText Ext JS source
   */
  public native function get indicatorText():String;

  /**
   * @private
   */
  public native function set indicatorText(value:String):void;

  /**
   True to process scripts in the output (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-loadScripts">Ext.Updater.defaults.loadScripts</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-loadScripts Ext JS source
   */
  public native function get loadScripts():Boolean;

  /**
   * @private
   */
  public native function set loadScripts(value:Boolean):void;

  /**
   Delegate for refresh() prebound to "this", use myUpdater.refreshDelegate.createCallback(arg1, arg2) to bind arguments
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-refreshDelegate Ext JS source
   */
  public native function get refreshDelegate():Function;

  /**
   * @private
   */
  public native function set refreshDelegate(value:Function):void;

  /**
   The renderer for this Updater (defaults to <a href="Ext.Updater.BasicRenderer.html">Ext.Updater.BasicRenderer</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-renderer Ext JS source
   */
  public native function get renderer():Object;

  /**
   * @private
   */
  public native function set renderer(value:Object):void;

  /**
   Whether to show indicatorText when loading (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-showLoadIndicator">Ext.Updater.defaults.showLoadIndicator</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-showLoadIndicator Ext JS source
   */
  public native function get showLoadIndicator():String;

  /**
   * @private
   */
  public native function set showLoadIndicator(value:String):void;

  /**
   Blank page URL to use with SSL file uploads (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-sslBlankUrl">Ext.Updater.defaults.sslBlankUrl</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-sslBlankUrl Ext JS source
   */
  public native function get sslBlankUrl():String;

  /**
   * @private
   */
  public native function set sslBlankUrl(value:String):void;

  /**
   Timeout for requests or form posts in seconds (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-timeout">Ext.Updater.defaults.timeout</a>).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-timeout Ext JS source
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   Transaction object of the current executing transaction, or null if there is no active transaction.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-transaction Ext JS source
   */
  public native function get transaction():Object;

  /**
   * @private
   */
  public native function set transaction(value:Object):void;

  /**
   Delegate for update() prebound to "this", use myUpdater.updateDelegate.createCallback(arg1, arg2) to bind arguments
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater-updateDelegate Ext JS source
   */
  public native function get updateDelegate():Function;

  /**
   * @private
   */
  public native function set updateDelegate(value:Function):void;

  /**
   * Aborts the currently executing transaction, if any.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-abort Ext JS source
   */
  public native function abort():void;

  /**
   * Performs an asynchronous form post, updating this element with the response. If the form has the attribute enctype="<a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form-data</a>", it assumes it's a file upload. Uses this.sslBlankUrl for SSL file uploads to prevent IE security warning.
   <p>File uploads are not performed using normal "Ajax" techniques, that is they are <b>not</b> performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the DOM <code>&lt;form&gt;</code> element temporarily modified to have its <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer to a dynamically generated, hidden <code>&lt;iframe&gt;</code> which is inserted into the document but removed after the return data has been gathered.</p><p>Be aware that file upload packets, sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form-data</a> and some server technologies (notably JEE) may require some custom processing in order to retrieve parameter names and parameter values from the packet content.</p>
   *
   * @param form The form Id or form element
   * @param url The url to pass the form to. If omitted the action attribute on the form will be used.
   * @param reset Whether to try to reset the form after the update
   * @param callback Callback when transaction is complete. The following parameters are passed:<ul><li><b>el</b> : Ext.Element<p class="sub-desc">The Element being updated.</p></li><li><b>success</b> : Boolean<p class="sub-desc">True for success, false for failure.</p></li><li><b>response</b> : XMLHttpRequest<p class="sub-desc">The XMLHttpRequest which processed the update.</p></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-formUpdate Ext JS source
   */
  public native function formUpdate(form:*, url:String = null, reset:Boolean = false, callback:Function = null):void;

  /**
   * This is an overrideable method which returns a reference to a default renderer class if none is specified when creating the Ext.Updater. Defaults to <a href="Ext.Updater.BasicRenderer.html">Ext.Updater.BasicRenderer</a>
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-getDefaultRenderer Ext JS source
   */
  public native function getDefaultRenderer():void;

  /**
   * Get the Element this Updater is bound to
   *
   * @return The element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-getEl Ext JS source
   */
  public native function getEl():Element;

  /**
   * Returns the current content renderer for this Updater. See <a href="output/Ext.Updater.BasicRenderer.html#Ext.Updater.BasicRenderer-render">Ext.Updater.BasicRenderer.render</a> for more details.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-getRenderer Ext JS source
   */
  public native function getRenderer():Object;

  /**
   * Returns true if the Updater is currently set to auto refresh its content (see <a href="output/Ext.Updater.html#Ext.Updater-startAutoRefresh">startAutoRefresh</a>), otherwise false.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-isAutoRefreshing Ext JS source
   */
  public native function isAutoRefreshing():void;

  /**
   * Returns true if an update is in progress, otherwise false.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-isUpdating Ext JS source
   */
  public native function isUpdating():Boolean;

  /**
   * Refresh the element with the last used url or defaultUrl. If there is no url, it returns immediately
   *
   * @param callback Callback when transaction is complete - called with signature (oElement, bSuccess)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-refresh Ext JS source
   */
  public native function refresh(callback:Function = null):void;

  /**
   * Sets the default URL used for updates.
   *
   * @param defaultUrl The url or a function to call to get the url
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-setDefaultUrl Ext JS source
   */
  public native function setDefaultUrl(defaultUrl:*):void;

  /**
   * Sets the content renderer for this Updater. See <a href="output/Ext.Updater.BasicRenderer.html#Ext.Updater.BasicRenderer-render">Ext.Updater.BasicRenderer.render</a> for more details.
   *
   * @param renderer The object implementing the render() method
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-setRenderer Ext JS source
   */
  public native function setRenderer(renderer:Object):void;

  /**
   * Display the element's "loading" state. By default, the element is updated with <a href="output/Ext.Updater.html#Ext.Updater-indicatorText">indicatorText</a>. This method may be overridden to perform a custom action while this Updater is actively updating its contents.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-showLoading Ext JS source
   */
  public native function showLoading():void;

  /**
   * Set this element to auto refresh. Can be canceled by calling <a href="output/Ext.Updater.html#Ext.Updater-stopAutoRefresh">stopAutoRefresh</a>.
   *
   * @param interval How often to update (in seconds).
   * @param url The url for this request, a config object in the same format supported by <a href="output/Ext.Updater.html#Ext.Updater-load">load</a>, or a function to call to get the url (defaults to the last used url). Note that while the url used in a load call can be reused by this method, other load config options will not be reused and must be specified as part of a config object passed as this parameter if needed.
   * @param params The parameters to pass as either a url encoded string "&amp;param1=1&amp;param2=2" or as an object {param1: 1, param2: 2}
   * @param callback Callback when transaction is complete - called with signature (oElement, bSuccess)
   * @param refreshNow Whether to execute the refresh now, or wait the interval
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-startAutoRefresh Ext JS source
   */
  public native function startAutoRefresh(interval:Number, url:* = null, params:* = null, callback:Function = null, refreshNow:Boolean = false):void;

  /**
   * Stop auto refresh on this element.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-stopAutoRefresh Ext JS source
   */
  public native function stopAutoRefresh():void;

  /**
   * Performs an <b>asynchronous</b> request, updating this element with the response. If params are specified it uses POST, otherwise it uses GET.<br/><br/><b>Note:</b> Due to the asynchronous nature of remote server requests, the Element will not have been fully updated when the function returns. To post-process the returned data, use the callback option, or an <b><code>update</code></b> event handler.
   *
   * @param options A config object containing any of the following options:<ul><li>url : <b>String/Function</b><p class="sub-desc">The URL to request or a function which <i>returns</i> the URL (defaults to the value of <a href="output/Ext.Ajax.html#Ext.Ajax-url">Ext.Ajax.url</a> if not specified).</p></li><li>method : <b>String</b><p class="sub-desc">The HTTP method to use. Defaults to POST if the <code>params</code> argument is present, otherwise GET.</p></li><li>params : <b>String/Object/Function</b><p class="sub-desc">The parameters to pass to the server (defaults to none). These may be specified as a url-encoded string, or as an object containing properties which represent parameters, or as a function, which returns such an object.</p></li><li>scripts : <b>Boolean</b><p class="sub-desc">If <code>true</code> any &lt;script&gt; tags embedded in the response text will be extracted and executed (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-loadScripts">Ext.Updater.defaults.loadScripts</a>). If this option is specified, the callback will be called <i>after</i> the execution of the scripts.</p></li><li>callback : <b>Function</b><p class="sub-desc">A function to be called when the response from the server arrives. The following parameters are passed:</p><ul><li><b>el</b> : Ext.Element<p class="sub-desc">The Element being updated.</p></li><li><b>success</b> : Boolean<p class="sub-desc">True for success, false for failure.</p></li><li><b>response</b> : XMLHttpRequest<p class="sub-desc">The XMLHttpRequest which processed the update.</p></li><li><b>options</b> : Object<p class="sub-desc">The config object passed to the update call.</p></li></ul><br/><br/></li><li>scope : <b>Object</b><p class="sub-desc">The scope in which to execute the callback (The callback's <code>this</code> reference.) If the <code>params</code> argument is a function, this scope is used for that function also.</p></li><li>discardUrl : <b>Boolean</b><p class="sub-desc">By default, the URL of this request becomes the default URL for this Updater object, and will be subsequently used in <a href="output/Ext.Updater.html#Ext.Updater-refresh">refresh</a> calls. To bypass this behavior, pass <code>discardUrl:true</code> (defaults to false).</p></li><li>timeout : <b>Number</b><p class="sub-desc">The number of seconds to wait for a response before timing out (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-timeout">Ext.Updater.defaults.timeout</a>).</p></li><li>text : <b>String</b><p class="sub-desc">The text to use as the innerHTML of the <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-indicatorText">Ext.Updater.defaults.indicatorText</a> div (defaults to 'Loading...'). To replace the entire div, not just the text, override <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-indicatorText">Ext.Updater.defaults.indicatorText</a> directly.</p></li><li>nocache : <b>Boolean</b><p class="sub-desc">Only needed for GET requests, this option causes an extra, auto-generated parameter to be appended to the request to defeat caching (defaults to <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-disableCaching">Ext.Updater.defaults.disableCaching</a>).</p></li></ul><p>For example:</p><pre><code>   um.update({
   url: "your-url.php",
   params: {param1: "foo", param2: "bar"}, // or a URL encoded string
   callback: yourFunction,
   scope: yourObject, //(optional scope)
   discardUrl: true,
   nocache: true,
   text: "Loading...",
   timeout: 60,
   scripts: false // Save time by avoiding RegExp execution.
   });
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-update Ext JS source
   */
  public native function update(options:Object):void;

  /**
   * Static convenience method. <b>This method is deprecated in favor of el.load({url:'foo.php', ...})</b>. Usage: <pre><code>Ext.Updater.updateElement("my-div", "stuff.php");</code></pre>
   *
   * @param el The element to update
   * @param url The url
   * @param params Url encoded param string or an object of name/value pairs
   * @param options A config object with any of the Updater properties you want to set - for example: {disableCaching:true, indicatorText: "Loading data..."}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#method-Ext.Updater-updateElement Ext JS source
   */
  public static native function updateElement(el:*, url:String, params:* = null, options:Object = null):void;

}
}
    