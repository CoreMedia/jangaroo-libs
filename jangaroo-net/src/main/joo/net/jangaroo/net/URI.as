package net.jangaroo.net {

/**
 * A class representing URIs in generic syntax as specified in <a href="http://www.rfc-editor.org/rfc/rfc3986.txt">RFC 3986</a>.
 *
 * todo: support encoding/decoding of components, separate getter/setter of raw (encoded) components
 */
public interface URI {

  function get scheme():String;
  function get authority():String;
  function get path():String;
  function get query():String;
  function get fragment():String;

  function get isRelative():Boolean;
  function get isAbsolute():Boolean;

  /**
     * Relativize a reference uri against this URI as the base URI according to RFC 3986.
     * If both scheme and authority are equal, this method always returns a URI with a relative path,
     * even it an absolute path would be shorter.
     *
     * @param reference the URI to relativize. Must be an absolute URI.
     * @return an URI which yields the reference URI when resolved against the given base URI
     * @throws URIError if this base or the given reference is a relative URI
     */
  function relativize(reference:URI):URI;

  /**
   * Resolve a uri against this as a base URI according to RFC 3986.
   * @requires this.isAbsolute()
   * @param reference the uri to resolve
   * @return an absolute URI
   * @throws URIError if this URI is not an absolute URI
   */
  function resolve(reference:URI):URI;

}
}