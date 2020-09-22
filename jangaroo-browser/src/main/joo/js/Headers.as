package js {

/**
 * The Headers interface of the Fetch API allows you to perform various actions on HTTP request and response headers.
 * These actions include retrieving, setting, adding to, and removing headers from the list of the request's headers. A
 * Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.
 * You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are
 * matched by case-insensitive byte sequence.
 *
 * For security reasons, some headers can only be controlled by the user agent. These headers include the forbidden
 * header names  and forbidden response header names.
 *
 * A Headers object also has an associated guard, which takes a value of immutable, request, request-no-cors, response,
 * or none. This affects whether the set(), delete(), and append() methods will mutate the header. For more information
 * see Guard.
 *
 * You can retrieve a Headers object via the Request.headers and Response.headers properties, and create a new Headers
 * object using the Headers.Headers() constructor.
 *
 * An object implementing Headers can directly be used in a for...of structure, instead of entries(): for (var p of
 * myHeaders) is equivalent to for (var p of myHeaders.entries()).
 */
[Native("Headers")]
public class Headers {
  /**
   * Creates a new Headers object.
   *
   * @param init {@link Headers} or {@link Object} or two dimensional String Array.
   */
  public native function Headers(init: *);

  /**
   * Appends a new value onto an existing header inside a Headers object, or adds the header if it does not already
   * exist.
   *
   * @param name The name of the HTTP header you want to add to the Headers object.
   * @param value The value of the HTTP header you want to add.
   */
  public native function append(name: String, value: String): void;

  /**
   * Deletes a header from a Headers object.
   *
   * @param name The name of the HTTP header you want to delete from the Headers object.
   */
  public native function delete_(name: String): void;

  /**
   * Returns a ByteString sequence of all the values of a header within a Headers object with a given name.
   *
   * @param name The name of the HTTP header whose values you want to retrieve from the Headers object. If the given
   *             name is not the name of an HTTP header, this method throws a TypeError. The name is case-insensitive.
   * @return A ByteString sequence representing the values of the retrieved header or null if this header is not set.
   */
  public native function get(name: String): String;

  /**
   * Returns a boolean stating whether a Headers object contains a certain header.
   *
   * @param name The name of the HTTP header you want to test for. If the given name is not a valid HTTP header name,
   *             this method throws a TypeError.
   * @return TRUE if the header is contained, otherwise FALSE.
   */
  public native function has(name: String): Boolean;

  /**
   * Sets a new value for an existing header inside a Headers object, or adds the header if it does not already exist.
   *
   * @param name The name of the HTTP header you want to set to a new value. If the given name is not the name of an
   *             HTTP header, this method throws a TypeError.
   * @param value The new value you want to set.
   */
  public native function set(name: String, value: String): void;

  /**
   * Executes a provided function once for each array element.
   *
   * @param callbackfn the callback function called for each array element.
   * @param thisArg the value provided in the "this" scope
   */
  public native function forEach(callbackfn: Function, thisArg: * = undefined): void;
}
}
