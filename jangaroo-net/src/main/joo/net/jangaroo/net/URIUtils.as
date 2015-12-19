package net.jangaroo.net {

/**
 * A class implementing resolving and relativizing URIs
 * generic URI syntax as specified in <a href="http://www.rfc-editor.org/rfc/rfc3986.txt">RFC 3986</a>.
 *
 */
public class URIUtils {

  // regular expression for uris as given in rfc2396:
  private static const URI_PATTERN:RegExp = /^(([^:/?#]+):)?(\/\/([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?/;
  // regular expression groups:               12            3  4            5       6  7        8 9
  private static const URI_PATTERN_GROUP_SCHEME_PRESENT:int = 1;
  private static const URI_PATTERN_GROUP_SCHEME:int = 2;
  private static const URI_PATTERN_GROUP_AUTHORITY_PRESENT:int = 4;
  private static const URI_PATTERN_GROUP_AUTHORITY:int = 4;
  private static const URI_PATTERN_GROUP_PATH:int = 5;
  private static const URI_PATTERN_GROUP_QUERY:int = 7;
  private static const URI_PATTERN_GROUP_QUERY_PRESENT:int = 6;
  private static const URI_PATTERN_GROUP_FRAGMENT:int = 9;
  private static const URI_PATTERN_GROUP_FRAGMENT_PRESENT:int = 8;


  // pure utility class with static functions only
  function URIUtils() {
  }

  /**
   * Create an URI from its components
   */
  public function create(scheme:String = null, authority:String = null, path:String = "", query:String = null, fragment:String = null):URI {
    return new URIImpl(scheme, authority, path, query, fragment);
  }

  /**
   * Parses the string into a {@link URI} instance.
   * @throws URIError if the syntax does not conform to <a href="http://www.rfc-editor.org/rfc/rfc3986.txt">RFC 3986</a>
   */
  public static function parse(source:String):URI {
    if (!source.match(URI_PATTERN)) {
      throw new Error("invalid URI syntax: " + source);
    }
    var match:Array = URI_PATTERN.exec(source);
    return new URIImpl(
            ifPresentOrNull(match, URI_PATTERN_GROUP_SCHEME, URI_PATTERN_GROUP_SCHEME_PRESENT),
            ifPresentOrNull(match, URI_PATTERN_GROUP_AUTHORITY, URI_PATTERN_GROUP_AUTHORITY_PRESENT),
            ifPresentOrNull(match, URI_PATTERN_GROUP_PATH, URI_PATTERN_GROUP_PATH, ""),
            ifPresentOrNull(match, URI_PATTERN_GROUP_QUERY, URI_PATTERN_GROUP_QUERY_PRESENT),
            ifPresentOrNull(match, URI_PATTERN_GROUP_FRAGMENT, URI_PATTERN_GROUP_FRAGMENT_PRESENT));
  }

  private static function ifPresentOrNull(match:Array, valueGroup:int, presentGroup:int, defaultValue:String = null):String {
    const present:String = match[presentGroup];
    return present ? match[valueGroup] : defaultValue;
  }

  /**
   * Relativize a reference uri against a base URI according to RFC 3986.
   * If both scheme and authority are equal, this method always returns a URI with a relative path,
   * even it an absolute path would be shorter.
   *
   * @param base the base URI. Must be an absolute URI.
   * @param reference the URI to relativize. Must be an absolute URI.
   * @return an URI which yields the reference URI when resolved against the given base URI
   * @throws URIError if base or reference is a relative URI
   */
  public static function relativize(base:String, reference:String):String {
    return String(parse(base).relativize(parse(reference)));
  }

  /**
   * Resolve a uri against a base URI according to RFC 3986.
   * @param base the base uri
   * @param reference the uri to resolve
   * @return an absolute URI
   * @throws URIError if base is not an absolute URI
   */
  public static function resolve(base:String, reference:String):String {
    return String(parse(base).resolve(parse(reference)));
  }

}
}
