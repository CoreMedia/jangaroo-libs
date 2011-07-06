package ext.updater {


/**
 * The defaults collection enables customizing the default properties of Updater
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#cls-Ext.Updater.defaults Ext JS source
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-disableCaching Ext JS source
   */
  public native function get disableCaching():Boolean;

  /**
   * @private
   */
  public native function set disableCaching(value:Boolean):void;

  /**
   Text for loading indicator (defaults to '&lt;div class="loading-indicator"&gt;Loading...&lt;/div&gt;').
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-indicatorText Ext JS source
   */
  public native function get indicatorText():String;

  /**
   * @private
   */
  public native function set indicatorText(value:String):void;

  /**
   True to process scripts by default (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-loadScripts Ext JS source
   */
  public native function get loadScripts():Boolean;

  /**
   * @private
   */
  public native function set loadScripts(value:Boolean):void;

  /**
   Whether or not to show <a href="output/Ext.Updater.defaults.html#Ext.Updater.defaults-indicatorText">indicatorText</a> during loading (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-showLoadIndicator Ext JS source
   */
  public native function get showLoadIndicator():Boolean;

  /**
   * @private
   */
  public native function set showLoadIndicator(value:Boolean):void;

  /**
   Blank page URL to use with SSL file uploads (defaults to <a href="output/Ext.html#Ext-SSL_SECURE_URL">Ext.SSL_SECURE_URL</a> if set, or "javascript:false").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-sslBlankUrl Ext JS source
   */
  public native function get sslBlankUrl():String;

  /**
   * @private
   */
  public native function set sslBlankUrl(value:String):void;

  /**
   Timeout for requests or form posts in seconds (defaults to 30 seconds).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/UpdateManager.html#prop-Ext.Updater.defaults-timeout Ext JS source
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

}
}
    