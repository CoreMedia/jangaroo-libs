package ext.updater {


/**
 * The defaults collection enables customizing the default properties of Updater
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults Sencha Docs Ext JS 3.4
 */
public class defaults {

  /**
   *
   *
   */
  public function defaults() {
    super();
  }

  /**
   True to append a unique parameter to GET requests to disable caching (defaults to false).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-disableCaching Sencha Docs Ext JS 3.4
   */
  public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   Text for loading indicator (defaults to '&lt;div class="loading-indicator"&gt;Loading...&lt;/div&gt;').
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-indicatorText Sencha Docs Ext JS 3.4
   */
  public native function get indicatorText():String;

  /**
   * @private
   */
  public native function set indicatorText(value:String):void;

  /**
   True to process scripts by default (defaults to false).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-loadScripts Sencha Docs Ext JS 3.4
   */
  public native function get loadScripts():Boolean;

  /**
   * @private
   */
  public native function set loadScripts(value:Boolean):void;

  /**
   Whether or not to show <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-indicatorText">indicatorText</a> during loading (defaults to true).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-showLoadIndicator Sencha Docs Ext JS 3.4
   */
  public native function get showLoadIndicator():Boolean;

  /**
   * @private
   */
  public native function set showLoadIndicator(value:Boolean):void;

  /**
   Blank page URL to use with SSL file uploads (defaults to <a href="output/Ext.html#Ext-SSL_SECURE_URL">Ext.SSL_SECURE_URL</a> if set, or "javascript:false").
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-sslBlankUrl Sencha Docs Ext JS 3.4
   */
  public native function get sslBlankUrl():String;

  /**
   * @private
   */
  public native function set sslBlankUrl(value:String):void;

  /**
   Timeout for requests or form posts in seconds (defaults to 30 seconds).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Updater.defaults-property-timeout Sencha Docs Ext JS 3.4
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

}
}
    