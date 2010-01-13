package ext {

import ext.util.Observable;

/**
 * Provides AJAX-style update capabilities for Element objects.  Updater can be used to <b class='link' title='#update'>update</b>
 * an <b class='link'>ext.Element</b> once, or you can use <b class='link' title='#startAutoRefresh'>startAutoRefresh</b> to set up an auto-updating
 * <b class='link' title='ext.Element'>Element</b> on a specific interval.<br><br>
 * Usage:<br>
 * <pre><code>
 * var el = Ext.get("foo"); // Get ext.Element object
 * var mgr = el.getUpdater();
 * mgr.update({
        url&#58; "http://myserver.com/index.php",
        params&#58; {
            param1: "foo",
            param2: "bar"
        }
 * });
 * ...
 * mgr.formUpdate("myFormId", "http://myserver.com/index.php");
 * <br>
 * // or directly (returns the same Updater instance)
 * var mgr = new ext.Updater("myElementId");
 * mgr.startAutoRefresh(60, "http://myserver.com/index.php");
 * mgr.on("update", myFcnNeedsToKnow);
 * <br>
 * // short handed call directly from the element object
 * Ext.get("foo").load({
        url&#58; "bar.php",
        scripts&#58; true,
        params&#58; "param1=foo&amp;param2=bar",
        text&#58; "Loading Foo..."
 * });
 * </code></pre>
*/
public class Updater extends Observable {
/**
 * @constructor
 * Create new Updater directly.
 * @param el The element to update
 * @param forceNew By default the constructor checks to see if the passed element already
 * has an Updater and if it does it returns the same instance. This will skip that check (useful for extending this class).
 */
	    protected native function constructor(el : *, forceNew : Boolean = undefined) : void;
	        /**
	         * The Element object
	         */
	        /**
	         * Cached url to use for refreshes. Overwritten every time update() is called unless "discardUrl" param is set to true.
	         */
	        /**
	         * Blank page URL to use with SSL file uploads (defaults to <b class='link'>ext.Updater.defaults#sslBlankUrl</b>).
	         * @property sslBlankUrl
	         */
	        /**
	         * Whether to append unique parameter on get request to disable caching (defaults to <b class='link'>ext.Updater.defaults#disableCaching</b>).
	         * @property disableCaching
	         */
	        /**
	         * Text for loading indicator (defaults to <b class='link'>ext.Updater.defaults#indicatorText</b>).
	         * @property indicatorText
	         */
	        /**
	         * Whether to show indicatorText when loading (defaults to <b class='link'>ext.Updater.defaults#showLoadIndicator</b>).
	         * @property showLoadIndicator
	         */
	        /**
	         * Timeout for requests or form posts in seconds (defaults to <b class='link'>ext.Updater.defaults#timeout</b>).
	         * @property timeout
	         */
	        /**
	         * True to process scripts in the output (defaults to <b class='link'>ext.Updater.defaults#loadScripts</b>).
	         * @property loadScripts
	         */
	        /**
	         * Transaction object of the current executing transaction, or null if there is no active transaction.
	         */
	        /**
	         * Delegate for refresh() prebound to "this", use myUpdater.refreshDelegate.createCallback(arg1, arg2) to bind arguments
	         */
	        /**
	         * Delegate for update() prebound to "this", use myUpdater.updateDelegate.createCallback(arg1, arg2) to bind arguments
	         */
	        /**
	         * Delegate for formUpdate() prebound to "this", use myUpdater.formUpdateDelegate.createCallback(arg1, arg2) to bind arguments
	         */
			/**
			 * The renderer for this Updater (defaults to <b class='link'>ext.updater.BasicRenderer</b>).
			 */
		/**
	     * Sets the content renderer for this Updater. See <b class='link'>ext.updater.BasicRenderer#render</b> for more details.
	     * @param renderer The object implementing the render() method
	     */
	    public native function setRenderer(renderer : Object) : void;
	    /**
	     * Returns the current content renderer for this Updater. See <b class='link'>ext.updater.BasicRenderer#render</b> for more details.
	     * @return 
	     */
	    public native function getRenderer() : Object;
	    /**
	     * This is an overrideable method which returns a reference to a default
	     * renderer class if none is specified when creating the ext.Updater.
	     * Defaults to <b class='link'>ext.updater.BasicRenderer</b>
	     */
	    public native function getDefaultRenderer() : void;
	    /**
	     * Sets the default URL used for updates.
	     * @param defaultUrl The url or a function to call to get the url
	     */
	    public native function setDefaultUrl(defaultUrl : *) : void;
	    /**
	     * Get the Element this Updater is bound to
	     * @return The element
	     */
	    public native function getEl() : Element;
		/**
	     * Performs an <b>asynchronous</b> request, updating this element with the response.
	     * If params are specified it uses POST, otherwise it uses GET.<br><br>
	     * <b>Note:</b> Due to the asynchronous nature of remote server requests, the Element
	     * will not have been fully updated when the function returns. To post-process the returned
	     * data, use the callback option, or an <b><code>update</code></b> event handler.
	     * @param options A config object containing any of the following options:<ul>
	     * <li>url : <b>String/Function</b><p class="sub-desc">The URL to request or a function which
	     * <i>returns</i> the URL (defaults to the value of <b class='link'>ext.Ajax#url</b> if not specified).</p></li>
	     * <li>method : <b>String</b><p class="sub-desc">The HTTP method to
	     * use. Defaults to POST if the <code>params</code> argument is present, otherwise GET.</p></li>
	     * <li>params : <b>String/Object/Function</b><p class="sub-desc">The
	     * parameters to pass to the server (defaults to none). These may be specified as a url-encoded
	     * string, or as an object containing properties which represent parameters,
	     * or as a function, which returns such an object.</p></li>
	     * <li>scripts : <b>Boolean</b><p class="sub-desc">If <code>true</code>
	     * any &lt;script&gt; tags embedded in the response text will be extracted
	     * and executed (defaults to <b class='link'>ext.Updater.defaults#loadScripts</b>). If this option is specified,
	     * the callback will be called <i>after</i> the execution of the scripts.</p></li>
	     * <li>callback : <b>Function</b><p class="sub-desc">A function to
	     * be called when the response from the server arrives. The following
	     * parameters are passed:<ul>
	     * <li><b>el</b> : ext.Element<p class="sub-desc">The Element being updated.</p></li>
	     * <li><b>success</b> : Boolean<p class="sub-desc">True for success, false for failure.</p></li>
	     * <li><b>response</b> : XMLHttpRequest<p class="sub-desc">The XMLHttpRequest which processed the update.</p></li>
	     * <li><b>options</b> : Object<p class="sub-desc">The config object passed to the update call.</p></li></ul>
	     * </p></li>
	     * <li>scope : <b>Object</b><p class="sub-desc">The scope in which
	     * to execute the callback (The callback's <code>this</code> reference.) If the
	     * <code>params</code> argument is a function, this scope is used for that function also.</p></li>
	     * <li>discardUrl : <b>Boolean</b><p class="sub-desc">By default, the URL of this request becomes
	     * the default URL for this Updater object, and will be subsequently used in <b class='link' title='#refresh'>refresh</b>
	     * calls.  To bypass this behavior, pass <code>discardUrl:true</code> (defaults to false).</p></li>
	     * <li>timeout : <b>Number</b><p class="sub-desc">The number of seconds to wait for a response before
	     * timing out (defaults to <b class='link'>ext.Updater.defaults#timeout</b>).</p></li>
	     * <li>text : <b>String</b><p class="sub-desc">The text to use as the innerHTML of the
	     * <b class='link'>ext.Updater.defaults#indicatorText</b> div (defaults to 'Loading...').  To replace the entire div, not
	     * just the text, override <b class='link'>ext.Updater.defaults#indicatorText</b> directly.</p></li>
	     * <li>nocache : <b>Boolean</b><p class="sub-desc">Only needed for GET
	     * requests, this option causes an extra, auto-generated parameter to be appended to the request
	     * to defeat caching (defaults to <b class='link'>ext.Updater.defaults#disableCaching</b>).</p></li></ul>
	     * <p>
	     * For example:
	<pre><code>
	um.update({
	    url&#58; "your-url.php",
	    params&#58; {param1: "foo", param2: "bar"}, // or a URL encoded string
	    callback&#58; yourFunction,
	    scope&#58; yourObject, //(optional scope)
	    discardUrl&#58; true,
	    nocache&#58; true,
	    text&#58; "Loading...",
	    timeout&#58; 60,
	    scripts&#58; false // Save time by avoiding RegExp execution.
	});
	</code></pre>
	     */
	    public native function update(options : Object, params, callback, discardUrl) : void;
		/**
	     * <p>Performs an async form post, updating this element with the response. If the form has the attribute
	     * enctype="<a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form-data</a>", it assumes it's a file upload.
	     * Uses this.sslBlankUrl for SSL file uploads to prevent IE security warning.</p>
	     * <p>File uploads are not performed using normal "Ajax" techniques, that is they are <b>not</b>
	     * performed using XMLHttpRequests. Instead the form is submitted in the standard manner with the
	     * DOM <code>&lt;form></code> element temporarily modified to have its
	     * <a href="http://www.w3.org/TR/REC-html40/present/frames.html#adef-target">target</a> set to refer
	     * to a dynamically generated, hidden <code>&lt;iframe></code> which is inserted into the document
	     * but removed after the return data has been gathered.</p>
	     * <p>Be aware that file upload packets, sent with the content type <a href="http://www.faqs.org/rfcs/rfc2388.html">multipart/form-data</a>
	     * and some server technologies (notably JEE) may require some custom processing in order to
	     * retrieve parameter names and parameter values from the packet content.</p>
	     * @param form The form Id or form element
	     * @param url The url to pass the form to. If omitted the action attribute on the form will be used.
	     * @param reset Whether to try to reset the form after the update
	     * @param callback Callback when transaction is complete. The following
	     * parameters are passed:<ul>
	     * <li><b>el</b> : ext.Element<p class="sub-desc">The Element being updated.</p></li>
	     * <li><b>success</b> : Boolean<p class="sub-desc">True for success, false for failure.</p></li>
	     * <li><b>response</b> : XMLHttpRequest<p class="sub-desc">The XMLHttpRequest which processed the update.</p></li></ul>
	     */
	    public native function formUpdate(form : *, url : String = undefined, reset : Boolean = undefined, callback : Function = undefined) : void;
	    /**
	     * Set this element to auto refresh.  Can be canceled by calling <b class='link' title='#stopAutoRefresh'>stopAutoRefresh</b>.
	     * @param interval How often to update (in seconds).
	     * @param url The url for this request, a config object in the same format
	     * supported by <b class='link' title='#load'>load</b>, or a function to call to get the url (defaults to the last used url).  Note that while
	     * the url used in a load call can be reused by this method, other load config options will not be reused and must be
	     * sepcified as part of a config object passed as this paramter if needed.
	     * @param params The parameters to pass as either a url encoded string
	     * "&param1=1&param2=2" or as an object {param1: 1, param2: 2}
	     * @param callback Callback when transaction is complete - called with signature (oElement, bSuccess)
	     * @param refreshNow Whether to execute the refresh now, or wait the interval
	     */
	    public native function startAutoRefresh(interval : Number, url : * = undefined, params : * = undefined, callback : Function = undefined, refreshNow : Boolean = undefined) : void;
	    /**
	     * Stop auto refresh on this element.
	     */
	    public native function stopAutoRefresh() : void;
	    /**
	     * Returns true if the Updater is currently set to auto refresh its content (see <b class='link' title='#startAutoRefresh'>startAutoRefresh</b>), otherwise false.
	     */
	    public native function isAutoRefreshing() : void;
	    /**
	     * Display the element's "loading" state. By default, the element is updated with <b class='link' title='#indicatorText'>indicatorText</b>. This
	     * method may be overridden to perform a custom action while this Updater is actively updating its contents.
	     */
	    public native function showLoading() : void;
	    /**
	     * Aborts the currently executing transaction, if any.
	     */
	    public native function abort() : void;
	    /**
	     * Returns true if an update is in progress, otherwise false.
	     * @return 
	     */
	    public native function isUpdating() : Boolean;
	    /**
	     * Refresh the element with the last used url or defaultUrl. If there is no url, it returns immediately
	     * @param callback Callback when transaction is complete - called with signature (oElement, bSuccess)
	     */
	    public native function refresh(callback : Function = undefined) : void;
}}
