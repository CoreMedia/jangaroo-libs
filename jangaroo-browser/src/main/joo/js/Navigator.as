package js {

[Native("Navigator")]
public interface Navigator {

  /**
   * String passed by browser as user-agent header. (ie: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1))
   */
  function get userAgent():String;

  /**
   * The name of the browser (ie: Microsoft Internet Explorer).
   */
  function get appName():String;

  /**
   * The code name of the browser.
   */
  function get appCodeName():String;

  /**
   * Version information for the browser (ie: 4.75 [en] (Win98; U)).
   */
  function get appVersion():String;

  /**
   * Boolean that indicates whether the browser has cookies enabled.
   */
  function get cookieEnabled():Boolean;

  /**
   * The platform of the client's computer (ie: Win32).
   */
  function get platform():String;

  /**
   * Returns the default language of the browser version (ie: en-US). NS and Firefox only.
   */
  function get language():String;

  /**
   * Returns the default language of the operating system (ie: en-us). IE only.
   */
  function get systemLanguage():String;

  /**
   * An array of all MIME types supported by the client. NS and Firefox only.
   */
  function get mimeTypes():Array;

  /**
   * An array of all plug-ins currently installed on the client. NS and Firefox only.
   */
  function get plugins():Array;

  /**
   * Returns the preferred language setting of the user (ie: en-ca). IE only.
   */
  function get userLanguage():Boolean;

}

}
