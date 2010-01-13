package ext.updater {
/**
 * The defaults collection enables customizing the default properties of Updater
 */
public class defaults {
   /**
     * Timeout for requests or form posts in seconds (defaults to 30 seconds).
     */
    public var timeout  : Number;
    /**
     * True to append a unique parameter to GET requests to disable caching (defaults to false).
     */
    public var disableCaching  : Boolean;
    /**
     * Whether or not to show <b class='link' title='#indicatorText'>indicatorText</b> during loading (defaults to true).
     */
    public var showLoadIndicator  : Boolean;
    /**
     * Text for loading indicator (defaults to '&lt;div class="loading-indicator"&gt;Loading...&lt;/div&gt;').
     */
    public var indicatorText  : String;
     /**
     * True to process scripts by default (defaults to false).
     */
    public var loadScripts  : Boolean;
    /**
    * Blank page URL to use with SSL file uploads (defaults to <b class='link'>ext.SSL_SECURE_URL</b> if set, or "javascript:false").
    */
    public var sslBlankUrl  : String;
}}
