package js {

/**
 * The URLSearchParams interface defines utility methods to work with the query string of a URL.
 */
[Native("URLSearchParams")]
public class URLSearchParams {

  /**
   * The URLSearchParams() constructor creates and returns a new URLSearchParams object.
   *
   * @param init One of:
   *             <ul>
   *               <li>A String, which will be parsed from application/x-www-form-urlencoded format. A leading '?'
   *                   character is ignored.</li>
   *               <li>A sequence of USVString pairs, representing names/values.</li>
   *               <li>A record of USVString keys and USVString values.</li>
   *             </ul>
   */
  public native function URLSearchParams(init: * = undefined);

  /**
   * Appends a specified key/value pair as a new search parameter.
   *
   * @param name The name of the parameter to append.
   * @param value The value of the parameter to append.
   */
  public native function append(name: String, value: String): void;

  /**
   * Deletes the given search parameter, and its associated value, from the list of all search parameters.
   *
   * @param name The name of the parameter to be deleted.
   */
  public native function delete_(name: String): void;

  /**
   * Returns an iterator allowing iteration through all key/value pairs contained in this object.
   *
   * @return an iterator allowing iteration through all key/value pairs contained in this object.
   */
  public native function entries(): *;

  /**
   * Allows iteration through all values contained in this object via a callback function.
   *
   * @param callbackfn A callback function that is executed against each parameter, with the param value provided as its
   *                   parameter.
   * @param thisArg the value provided in the "this" scope of the callback
   */
  public native function forEach(callbackfn: Function, thisArg: * = undefined): void;

  /**
   * Returns the first value associated with the given search parameter.
   *
   * @param name The name of the parameter to return.
   * @return A String if the given search parameter is found; otherwise, null.
   */
  public native function get(name: String): String;

  /**
   * Returns all the values associated with a given search parameter.
   *
   * @param name The name of the parameter to return.
   * @return an Array of Strings
   */
  public native function getAll(name: String): Array;

  /**
   * Returns a Boolean indicating if such a given parameter exists.
   *
   * @param name The name of the parameter to find.
   * @return TRUE if the parameter exists, otherwise FALSE.
   */
  public native function has(name: String): Boolean;

  /**
   * Returns an iterator allowing iteration through all keys of the key/value pairs contained in this object.
   *
   * @return an iterator allowing iteration through all keys of the key/value pairs contained in this object.
   */
  public native function keys(): *;

  /**
   * Sets the value associated with a given search parameter to the given value. If there are several values, the others
   * are deleted.
   *
   * @param name The name of the parameter to set.
   * @param value The value of the parameter to set.
   */
  public native function set(name: String, value: String): void;

  /**
   * Sorts all key/value pairs, if any, by their keys.
   */
  public native function sort(): void;

  /**
   * Returns a string containing a query string suitable for use in a URL.
   *
   * @return A DOMString, without the question mark. (Returns an empty string if no search parameters have been set.)
   */
  public native function toString(): String;

  /**
   * Returns an iterator allowing iteration through all values of the key/value pairs contained in this object.
   *
   * @return an iterator allowing iteration through all values of the key/value pairs contained in this object.
   */
  public native function values(): *;
}
}
