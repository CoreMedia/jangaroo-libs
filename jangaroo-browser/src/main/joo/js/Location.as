package js {
[Native("Location")]
public interface Location {

  /**
   * The part of the URL that follows the # symbol, including the # symbol.
   */
  function get hash()     :String;
  /**
   * The part of the URL that follows the # symbol, including the # symbol.
   */
  function set hash(value:String):void;
  /**
   * The host name and port number.
   */
  function get host()     :String;
  /**
   * The host name and port number.
   */
  function set host(value:String):void;
  /**
   * The host name (without the port number or square brackets).
   */
  function get hostname() :String;
  /**
   * The host name (without the port number or square brackets).
   */
  function set hostname(value:String):void;
  /**
   * The entire URL.
   */
  function get href()     :String;
  /**
   * The entire URL.
   */
  function set href(value:String):void;
  /**
   * The path (relative to the host).
   */
  function get pathname() :String;
  /**
   * The path (relative to the host).
   */
  function set pathname(value:String):void;
  /**
   * The port number of the URL.
   */
  function get port()     :String;
  /**
   * The port number of the URL.
   */
  function set port(value:String):void;
  /**
   * The protocol of the URL.
   */
  function get protocol() :String;
  /**
   * The protocol of the URL.
   */
  function set protocol(value:String):void;
  /**
   * The part of the URL that follows the ? symbol, including the ? symbol.
   */
  function get search()   :String;
  /**
   * The part of the URL that follows the ? symbol, including the ? symbol.
   */
  function set search(value:String):void;

  /**
   * Load the document at the provided URL.
   */
  function assign(url:String):void;

  /**
   * Reload the document from the current URL.
   * @param forceGet when true, causes the page to always be reloaded from the server. If false or not specified, the
   *   browser may reload the page from its cache.
   */
  function reload(forceGet:Boolean = false):void;

  /**
   * Replace the current document with the one at the provided URL. The difference from the assign() method is that
   * after using replace() the current page will not be saved in session history, meaning the user won't be able to use
   * the Back button to navigate to it.
   * @param url the new URL to load the document from.
   */
  function replace(url:String):void;

  /**
   * Returns the string representation of the Location object's URL. See the JavaScript reference for details.
   */
  function toString():String;
}
}